package com.a7.everyware.mail.controller;

import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Part;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.a7.everyware.mail.dao.MailDAO;
import com.a7.everyware.mail.util.MailUtil;
import com.a7.everyware.mail.vo.AttachInfo;
import com.a7.everyware.mail.vo.Inbox;
import com.a7.everyware.mail.vo.MailList;

@Controller
@RequestMapping(value = "mail")
public class MailReadController {

	private static final Logger logger = LoggerFactory.getLogger(MailReadController.class);

	@Autowired
	MailDAO mdao;

	@RequestMapping(value = "read", method = RequestMethod.GET)
	public String readMail(String message_name, Model model, HttpSession session) {

		
		String userId = (String)session.getAttribute("userId");
		String repository = mdao.getRepositoryFormMailInfo(userId);
		
		// Attachment multi showing and donwload
		ArrayList<AttachInfo> attachList = new ArrayList<AttachInfo>();
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("repository_name", repository);
		map.put("message_name", message_name);

		Inbox inbox = mdao.readMail(map);

		//update read; 
		int checkRead = mdao.checkReadMail(map);
		
		//출력물을 위한 메일리스트 객체; 
		MailList mail = new MailList();
		
		String mailFrom = inbox.getSender();
		String fromWho = mdao.getUserFromMailInfo(mailFrom);
		
		mail.setFrom(fromWho + "&lt;"+mailFrom+"&gt;");
		
		mail.setMaildate(inbox.getLast_updated());
		
		byte[] messageBody = inbox.getMessage_body();
		
		Message messageMime = null;
		try {
			ByteArrayInputStream bis = new ByteArrayInputStream(messageBody);

			messageMime = new MimeMessage(null, bis);
		
			mail.setRecipients(MailUtil.printAddresses(messageMime.getRecipients(Message.RecipientType.TO)));
		
			mail.setMailsubject(messageMime.getSubject());

			Multipart multipart = (Multipart) messageMime.getContent();

			if (messageMime.isMimeType("multipart/*")) {
				for (int i1 = 0; i1 < multipart.getCount(); i1++) {

					Part p = multipart.getBodyPart(i1);

					if ((p.isMimeType("text/plain") || p.isMimeType("text/html")) && (p.getFileName() == null)) {
						String mime = messageMime.getContentType();
						int index = mime.indexOf(";");
						
						if (index < 0) {
							System.out.println("[multiType]index of ';' is minus : "+(String) p.getContent());
						} else {
							mail.setContentpreview((String) p.getContent());
						}
					} else {
						String filename = p.getFileName();
						mail.setMailattached(filename);
					
						//AttachInfo 추가 
						AttachInfo attachInfo = new AttachInfo();
						
						attachInfo.setFileName(p.getFileName());
						attachInfo.setMessage_number(inbox.getMessage_name());// message Num?
						attachInfo.setPart_number(i1+"");
						attachInfo.setSize(p.getSize()+"");
					
						attachList.add(attachInfo);
					}
				}
			} else if (messageMime.isMimeType("text/plain") || messageMime.isMimeType("text/html")) {
				String mime = messageMime.getContentType();
				int index = mime.indexOf(";");

				if (index < 0) {
					System.out.println("[text/plain]index of ';' is minus : "+(String) messageMime.getContent());
				} else {
					mail.setContentpreview((String)messageMime.getContent());
				}
			} else {
				String mime = messageMime.getContentType();
				if (mime.startsWith("text")) {					
					mail.setContentpreview((String)messageMime.getContent());
				} else {
					String filename = messageMime.getFileName();
					mail.setMailattached(filename);
				}
			}
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassCastException e) {
			// Multipart part <- message.getContent() 에서 Content가 순수 String 컨텐츠로
			// 짜여졌을 때에 발생는 오류s
			try {
				
				String preview = null;

				if (((String) messageMime.getContent()).length() < 150) {
					preview = messageMime.getContent().toString();

				} else {
					preview = ((String) messageMime.getContent()).substring(0, 150);
				}

				mail.setContentpreview(preview);

			} catch (IOException | MessagingException e1) {
				// TODO Auto-generated catch block

				System.out.println("try catch 전면 수정 필요: catch 안에 catch");
				e1.printStackTrace();
			}
		}		
		model.addAttribute("mail", mail);
		model.addAttribute("attaches",attachList);
		
		return "appviews-inbox-read";
	}

	@ResponseBody
	@RequestMapping(value = "download", method = RequestMethod.GET)
	public String downlaodAttached(String message_number, int part_number, HttpServletResponse res){
		
		//int part_number = Integer.parseInt(part_number);
		
		System.out.println("get in the download stream");
		System.out.println(message_number);
		System.out.println(part_number);
		
		//TODO: session 값으로 가져오기 ;
		String repository = "sena";
		
		//parameter setting
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("repository_name", repository);
		map.put("message_name", message_number);

		Inbox inbox = mdao.readMail(map);
		
		byte[] messageBody = inbox.getMessage_body();

		ByteArrayInputStream bis = new ByteArrayInputStream(messageBody); 
		
		try {
			Message messageMime = new MimeMessage(null, bis);
			
			Part p ; 
			
			if(part_number <  0){
				p = messageMime;
			}else{
				Multipart multipart = (Multipart)messageMime.getContent();
				p = multipart.getBodyPart(part_number);
			}
			
			res.setContentType(p.getContentType());
			
			
			// TODO: 공부가 필요합니다 save an attachment from a MimeBodyPart to a file
			String destFilePath = "C:/downloadtest/" + p.getFileName();

			FileOutputStream output = new FileOutputStream(destFilePath);

			InputStream input = p.getInputStream();

			byte[] buffer = new byte[4096];

			int byteRead;

			while ((byteRead = input.read(buffer)) != -1) {
				output.write(buffer, 0, byteRead);
			}
			output.close(); 
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
}
