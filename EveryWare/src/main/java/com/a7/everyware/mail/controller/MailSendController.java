package com.a7.everyware.mail.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.a7.everyware.mail.util.FileService;
import com.a7.everyware.mail.util.MailUtil;


import com.oreilly.servlet.MultipartRequest;

@Controller
@RequestMapping(value ="mail")
public class MailSendController {
	
	private static final Logger logger = LoggerFactory.getLogger(MailSendController.class); 
	
	@RequestMapping(value ="sendMail" , method = RequestMethod.GET)
	public String goTosendMail(Model model){
		
		//'메일 글쓰기로 이동 '
		return "appviews-inbox-write";
	}
	
	@RequestMapping(value = "sendMail", method = RequestMethod.POST)
	public String sendMail(Model model, HttpServletRequest req, HttpServletResponse res, MultipartFile mailAttach){
				
		//TODO: from & importance check;
		String from = "jack@everyware.tk";
		
		String to = req.getParameter("mailRecipients");
		String cc = req.getParameter("mailRecipients_refer");
		String subject = req.getParameter("mailSubject");
		String body = req.getParameter("mailContent_summer");
		String importance = req.getParameter("mailImportance");
		String fileName = mailAttach.getOriginalFilename();
		String savedfile = fileName;

		

		
		System.out.println("=========================form check=============================");
		System.out.println("Mail to :"+to);		
		System.out.println("Mail subject :"+subject);
		System.out.println("Mail body :"+body);
		System.out.println("Mail fileName :"+fileName);
		System.out.println("================================================================");
		
		
		String host = "localhost";
		Properties properties = System.getProperties();
		// Setup mail server
		properties.setProperty("mail.smtp.host", host);

		// Get the default Session object.
		Session session = Session.getDefaultInstance(properties);

		// 첨부파일 확인하고, 있으면 스프링 경로에 임시저장
		String AttachedfilePath = req.getSession().getServletContext().getRealPath("/resources/tmp");
		if (mailAttach.getOriginalFilename() != null && !mailAttach.getOriginalFilename().equals("")) {

			savedfile = FileService.saveFile(mailAttach, AttachedfilePath);

		}

		// Define message
		try {

			Message message = new MimeMessage(session);

			message.setHeader("Content-Transfer-Encoding", "base64");
			
			message.setFrom(new InternetAddress(from));
			System.out.println(message.getFrom().toString());
			
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
			System.out.println(message.getAllRecipients().toString());
			
			message.setSubject(req.getParameter("subject"));
		
			BodyPart messageBodyPart = new MimeBodyPart();

			// Fill the message and encoding for permitting the hanguel
			messageBodyPart.setContent("test1", "text/plain;charset=KSC5601");

			//req.getParameter("mailContent_summer")
			
			Multipart multipart = new MimeMultipart();
			multipart.addBodyPart(messageBodyPart);

			// Part two is attachment
			

			// 현재 경로를 읽지 못합니다.임시저장 후에 다시 불러와야하는 프로세스를 거쳐야합니다.
			String savedfileName = req.getSession().getServletContext().getRealPath("/resources/tmp/" + savedfile);

			if (fileName != null && fileName != "") {
				
				messageBodyPart = new MimeBodyPart();
				
				try {
					fileName = MimeUtility.encodeText(fileName, "KSC5601", "B");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				DataSource source = new FileDataSource(savedfileName);
				messageBodyPart.setDataHandler(new DataHandler(source));
				messageBodyPart.setFileName(fileName);
				multipart.addBodyPart(messageBodyPart);
			}

			// Put parts in message
			message.setContent(multipart);

			Transport.send(message);
			
			/*			Transport transport = session.getTransport("smtp");
			
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

		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// Create the message part

		model.addAttribute("Msg", "Mail is sended well");
		return "appviews-inbox-inbox";
	}
		
}
