package com.a7.everyware.mail.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
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
import com.a7.everyware.mail.vo.Inbox;
import com.a7.everyware.mail.vo.MailInfo;
import com.oreilly.servlet.MultipartRequest;
import com.sun.mail.smtp.SMTPOutputStream;

@Controller
@RequestMapping(value ="mail")
public class MailTempController {
	
	private static final Logger logger = LoggerFactory.getLogger(MailTempController.class); 
	
	@Autowired
	MailDAO mdao;

	@RequestMapping(value = "tempMail", method = RequestMethod.POST)
	public String sendMail(Model model, HttpServletRequest req, HttpServletResponse res,
						ArrayList<MultipartFile> mailAttach, HttpSession sessionUser){
		
		System.out.println("임시저장 컨트롤러에 들어옴 ");
		
		//message_name : temp로 가져온다. 
		//String temp_Mesage_Name = "temp"+mdao.getNextTempVal();
		
		//TODO: from & importance check;
		String from = mdao.getRepositoryFormMailInfo((String)sessionUser.getAttribute("userId"))+"@everywareit.com";
		
		String to = req.getParameter("mailRecipients");
		String cc = req.getParameter("mailRecipients_refer");
		String subject = req.getParameter("mailSubject");
		String body = req.getParameter("mailContent_summer");
		String importance = req.getParameter("mailImportance");
		
		if(subject.equals("")||subject == null){
			
			subject = "Temporary Mail ";
		}
		
		
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
		String host = "203.233.199.201";
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
			
			String temp = "temp@everywareit.com";
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(temp));
			
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
		
	
	//MimeMessage can not be serializable;
	public byte[] objectToByte(Object obj){
		
	ByteArrayOutputStream baos = new ByteArrayOutputStream();
    SMTPOutputStream os = new SMTPOutputStream(baos);
	
    byte[] serializedEmail = null;
    
    try {
    	Properties properties = System.getProperties();
    	Session session = Session.getDefaultInstance(properties);
    	Message mimeMessage = new MimeMessage(session);
    	
    	mimeMessage.writeTo(os);
    } catch (MessagingException | IOException e) {
        try {
			throw new IOException("MimeMessage could not be serialized.", e);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
    }
    	os.flush();
    	serializedEmail = baos.toByteArray();

    	System.out.println("mail to byte : test ");
    	System.out.println(serializedEmail);
    	
    	return serializedEmail;
	}

 

}





