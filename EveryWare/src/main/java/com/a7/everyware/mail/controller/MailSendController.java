package com.a7.everyware.mail.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Date;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.activation.*;
import javax.mail.internet.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.a7.everyware.mail.dao.MailDAO;
import com.a7.everyware.mail.util.FileService;
import com.a7.everyware.mail.util.MailUtil;
import com.a7.everyware.mail.vo.BlobData;
import com.a7.everyware.mail.vo.MailInfo;
import com.oreilly.servlet.MultipartRequest;

@Controller
@RequestMapping(value ="mail")
public class MailSendController {
	
	private static final Logger logger = LoggerFactory.getLogger(MailSendController.class); 
	
	@Autowired
	MailDAO mdao;
	
	@RequestMapping(value ="sendMail" , method = RequestMethod.GET)
	public String goTosendMail(Model model, HttpSession session){
		
		String userId = (String)session.getAttribute("userId");
		
		String writeForm = null;
	
		BlobData writeFormContent = mdao.selectWriteForm(userId);
		
		//메일쓰기 형식 가져오기 
		if(writeFormContent != null){
			
			byte [] byteStream = writeFormContent.getBlobData();
			
			writeForm = new String(byteStream,StandardCharsets.UTF_8);
			
		}else{
			
			writeForm ="";
		}
		
		model.addAttribute("writeForm", writeForm);
		
		//'메일 글쓰기로 이동 '
		return "mail/appviews-inbox-write";
	}
	
	@RequestMapping(value = "sendMail", method = RequestMethod.POST)
	public String sendMail(Model model, HttpServletRequest req, HttpServletResponse res,
						ArrayList<MultipartFile> mailAttach, HttpSession sessionUser){
				
		//TODO: from & importance check;
		String from = mdao.getRepositoryFormMailInfo((String)sessionUser.getAttribute("userId"))+"@everywareit.com";
		
		String to = req.getParameter("mailRecipients");
		
		// for mailbox for sending 보낸편지함에 대한 설정 
		to += sessionUser.getAttribute("userName")+"<"+from+">";
		
		String cc = req.getParameter("mailCCs");
		
		System.out.println("cc 확인: "+cc);
		
		String subject = req.getParameter("mailSubject");
		String body = req.getParameter("mailContent_summer");
		String importance = req.getParameter("mailImportance");
		
		ArrayList<String> fileName = new ArrayList<String>(); 
		ArrayList<String> savedFile = new ArrayList<String>();
		String AttachedfilePath = req.getSession().getServletContext().getRealPath("/resources/tmp");
		
		//Multipart File로부터  Original FileName을 저장하고 임시파일경로로 저장한 경로를 savedFile에 다가 ArrayList 의 형태로 저장한다. 
		if(mailAttach.size()>1&&mailAttach != null){
			
			for(int i =0; i< mailAttach.size();i++){

				fileName.add(mailAttach.get(i).getOriginalFilename());

				String temp = FileService.saveFile(mailAttach.get(i), AttachedfilePath);
				
				savedFile.add(temp);
			}
		}
				
		//String host = "localhost";
		String host = "203.233.199.200";
		Properties properties = System.getProperties();
		// Setup mail server
		properties.setProperty("mail.smtp.host", host);

		// Get the default Session object.
		Session session = Session.getDefaultInstance(properties);

		// Define message
		try {

			Message message = new MimeMessage(session);

			message.setHeader("Content-Transfer-Encoding", "base64");
			
			message.setFrom(new InternetAddress(from));
			
			//Groupe Mail Sending 일 경우에, 그룹으로 전송된 것을 InternetAddress로 파싱 
			
			InternetAddress[] tos = MailUtil.parse(to);
			//InternetAddress[] tos = InternetAddress.parse(to);
			
			message.setRecipients(Message.RecipientType.TO, tos);

			//For reference
			InternetAddress[] refers = MailUtil.parse(cc);
			
			message.setRecipients(Message.RecipientType.CC, refers);
			
			System.out.println("refers: "+refers);
			
			System.out.println("====================================================");
			
			if(importance != null && importance.equals("on")){
				
				subject = "<span style =\"color: red\">[중요] </span>"+subject; //  ' \" ' "따옴표 "안에서  " 쓸 때에는 \"로 씁니다 .  
				message.setSubject(subject);
	
			}else{
				message.setSubject(subject);
			}
		
			BodyPart messageBodyPart = new MimeBodyPart();

			// Fill the message and encoding for permitting the hanguel
			messageBodyPart.setContent(body, "text/plain;charset=UTF-8");
			
			Multipart multipart = new MimeMultipart();
			multipart.addBodyPart(messageBodyPart);

			
			ArrayList<String> savedArray = new ArrayList<String>();
			// Part two is attachment
			if(mailAttach.size()>1&&mailAttach != null){
				
				for(int i =0 ; i< mailAttach.size();i++){
					String savedfileName = req.getSession().getServletContext().getRealPath("/resources/tmp/" + savedFile.get(i));
					savedArray.add(savedfileName);
					
					messageBodyPart = new MimeBodyPart();
					
					String fileNameforSend = null;
					try {
						fileNameforSend = MimeUtility.encodeText(fileName.get(i), "KSC5601", "B");
					} catch (UnsupportedEncodingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					DataSource source = new FileDataSource(savedfileName);
					messageBodyPart.setDataHandler(new DataHandler(source));
					messageBodyPart.setFileName(fileName.get(i));
					multipart.addBodyPart(messageBodyPart);
				}	
			}
			
			// Put parts in message
			message.setContent(multipart);
			
			//Transport.send(message); 원래이지만 
			
			Transport transport = session.getTransport("smtp");

			if(host.equals("localhost")){
				transport.send(message, message.getAllRecipients());
			}else{
				transport.connect(host, "","");
				transport.sendMessage(message, message.getAllRecipients());
			}
			transport.close();
			
			if(fileName != null){
				for(int i = 0; i< savedArray.size();i++){
					
					File f = new File(savedArray.get(i));
					f.delete();
				}
			}
			
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// Create the message part
		model.addAttribute("Msg", "Mail is sended well");
		return "redirect:./sendMail";
	}
		
	@ResponseBody
	@RequestMapping(value = "mailSearch", method = RequestMethod.GET)
	public ArrayList<String> mailSearcher(String searchTxt){
		
		ArrayList<MailInfo> mailInfoList = mdao.mailSearch(searchTxt);

		ArrayList<String> resultList = new ArrayList<String>();
		
		for(int i = 0; i< mailInfoList.size(); i++){
			
			String result = mailInfoList.get(i).getUser_name()+"&lt;"+mailInfoList.get(i).getMailinfo_address()+"&gt;";
			
			resultList.add(result);
		}
	
		return resultList;
	}

}


/*	
 * Transport에 문제가 생겼을 때,

Transport transport = session.getTransport("smtp");

if(host.equals("localhost")){
	transport.send(message, message.getAllRecipients());
}else{
	transport.connect(host, "","");
	transport.sendMessage(message, message.getAllRecipients());
}
transport.close();

if(fileName != null){
	File f = new File(savedfileName);
	f.delete();
}
 */		


