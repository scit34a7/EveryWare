package com.a7.everyware.mail.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Part;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.a7.everyware.mail.dao.MailDAO;
import com.a7.everyware.mail.util.MailUtil;
import com.a7.everyware.mail.vo.AttachInfo;
import com.a7.everyware.mail.vo.BlobData;
import com.a7.everyware.mail.vo.Inbox;
import com.a7.everyware.mail.vo.MailList;

@Controller
@RequestMapping(value = "mail")
public class MailReplyForwardController {

	private static final Logger logger = LoggerFactory.getLogger(MailReplyForwardController.class);
	
	@Autowired
	MailDAO mdao;
	
	@RequestMapping(value = "forwardMail", method = RequestMethod.GET)
	public String forwardMail( String message_name, HttpSession session, Model model, String check ){
		
		System.out.println(message_name +","+ check );
		
		String userId = (String)session.getAttribute("userId");
		String repository = mdao.getRepositoryFormMailInfo(userId);
		
		// Attachment multi showing and donwload
		ArrayList<AttachInfo> attachList = new ArrayList<AttachInfo>();
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("repository_name", repository);
		map.put("message_name", message_name);

		Inbox inbox = mdao.readMail(map);

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

			} catch ( MessagingException e1) {
				
				System.out.println("try catch 전면 수정 필요: catch 안에 catch");
				e1.printStackTrace();
			
			} catch (IOException e1) {
				
				System.out.println("try catch 전면 수정 필요: catch 안에 catch");
				e1.printStackTrace();
			}
		}		
		
		String writeForm = null;
	
		BlobData writeFormContent = mdao.selectWriteForm(userId);
		
		//메일쓰기 형식 가져오기 
		if(writeFormContent != null){
			
			byte [] byteStream = writeFormContent.getBlobData();
			
			writeForm = new String(byteStream,StandardCharsets.UTF_8);
			
		}else{
			
			writeForm ="";
		}
		
	

		model.addAttribute("check", check);

		model.addAttribute("writeForm", writeForm);
		
		model.addAttribute("mail", mail);
		
		return "appviews-inbox-write";
	}
	
}
