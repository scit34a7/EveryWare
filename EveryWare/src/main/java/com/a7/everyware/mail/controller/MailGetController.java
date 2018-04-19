package com.a7.everyware.mail.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.mail.*;
import javax.mail.Part;
import javax.servlet.*;
import javax.activation.*;
import javax.servlet.http.*;
import javax.mail.internet.*;

import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.a7.everyware.mail.dao.MailDAO;
import com.a7.everyware.mail.vo.Inbox;
import com.a7.everyware.mail.vo.MailList;

@Controller
@RequestMapping(value = "mail")
public class MailGetController {

	private static final Logger logger = LoggerFactory.getLogger(MailGetController.class);

	@Autowired
	MailDAO mdao;

	@RequestMapping(value = "getMail", method = RequestMethod.GET)
	public String getMail(Model model, String sort, HttpSession session) {

		// mailservice 들어오면서 session 의 사번(외래키인 테이블에서) 메일주소 가져옴 / repository 로 생성
		// TODO: 사용자에 따라서 바뀌는 값; 현재는 SENA 밖에 없음
		String userId = (String)session.getAttribute("userId");
		
		String repository = mdao.getRepositoryFormMailInfo(userId);

		ArrayList<MailList> viewList = new ArrayList<MailList>();

		ArrayList<Inbox> inboxList = null;
		
		if(sort.equals("all")){
			
			inboxList = mdao.getMailList(repository);
			model.addAttribute("sort",0);
			
		}else if(sort.equals("send")){
			
			
			//TODO:not yet 
			
		}else if(sort.equals("trash")){
			
			inboxList = mdao.getMailList_trash(repository);
			model.addAttribute("sort",4);
			
		}else if(sort.equals("important")){
			
			inboxList = mdao.getMailList_important(repository);
			model.addAttribute("sort",3);
			
		}else{
			
			
		}
		
		MailList mail = null;

		for (int i = 0; i < inboxList.size(); i++) {

			mail = new MailList();

			//MDAO: mailinfo 에서 가져오기 
			String mailFrom = inboxList.get(i).getSender();
			String fromWho = mdao.getUserFromMailInfo(mailFrom);
			
			mail.setFrom(fromWho + "&lt;"+mailFrom+"&gt;");
			
			mail.setMaildate(inboxList.get(i).getLast_updated());
			mail.setMessage_name(inboxList.get(i).getMessage_name());
			mail.setMailimportance(inboxList.get(i).getMessage_importance());
			
			//mail.setMailreaded() ; 읽었는지 안읽었는지 확인
			String mailReaded= inboxList.get(i).getMessage_receiving();
			if(mailReaded == null){
				mail.setMailreaded("<b>unreaded</b>");
			}else{
				mail.setMailreaded(mailReaded);
			}
			
			byte[] messageBody = inboxList.get(i).getMessage_body();
			
			Message messageMime = null;
			try {
				ByteArrayInputStream bis = new ByteArrayInputStream(messageBody);

				messageMime = new MimeMessage(null, bis);
				
				mail.setMailsubject(messageMime.getSubject());
		
				Multipart multipart = (Multipart) messageMime.getContent();

				if (messageMime.isMimeType("multipart/*")) {
					
					for (int i1 = 0; i1 < multipart.getCount(); i1++) {
						
						Part p = multipart.getBodyPart(i1);
						
						if ((p.isMimeType("text/plain") || p.isMimeType("text/html"))&&(p.getFileName()==null)) {
							String mime = messageMime.getContentType();
							int index = mime.indexOf(";");
							
							if (index < 0) {
								System.out.println((String) p.getContent());
							} else {
								
								mail.setContentpreview(previewContent((String)p.getContent()));			
							}

						} else {
							String filename = p.getFileName();
							
							mail.setMailattached(filename);
						}
					}
				} else if (messageMime.isMimeType("text/plain") || messageMime.isMimeType("text/html")) {
					System.out.println("Yes, Message 2nd Type is text");

					String mime = messageMime.getContentType();
					int index = mime.indexOf(";");
					if (index < 0) {
						System.out.println((String) messageMime.getContent());
					} else {
						System.out.println(messageMime.getContent());
					}

				} else {
					System.out.println("Yes, Message 3rd Type is the else");
					String mime = messageMime.getContentType();
					if (mime.startsWith("text")) {

						System.out.println(messageMime.getContentType());
						System.out.println(messageMime.getContent());

					} else {
						System.out.println(messageMime.getMessageNumber());
					}

				}

			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch(ClassCastException e){
				// Multipart part <- message.getContent() 에서 Content가 순수 String 컨텐츠로 짜여졌을 때에 발생는 오류 
				
				try {
					System.out.println(messageMime.getContent().toString());
					
					String preview = null;
					
					if(((String)messageMime.getContent()).length()<150){
						preview = messageMime.getContent().toString();
						
					}else{
						preview = ((String) messageMime.getContent()).substring(0,150);
					}
					
					mail.setContentpreview(preview);
					
				} catch (IOException | MessagingException e1) {
					// TODO Auto-generated catch block
				
					System.out.println("try catch 전면 수정 필요: catch 안에 catch");
					e1.printStackTrace();
				}	
			}
	
			viewList.add(mail);
		}
	
		model.addAttribute("viewList",viewList);
		
		return "appviews-inbox-inbox";
	}
	
	//Mail Content PreView
	public String previewContent(String content){
		
		String preview = null;
		
		int checkIndex = -1; 
		
		checkIndex = content.indexOf("</p>");
		
		if(checkIndex != -1){
			
			if(checkIndex<50){
				preview = content.substring(0, checkIndex);
			}else{
				preview = content.substring(0,50);
			}
		}else{
			if(content.length()<50){
				preview = content.toString();
				
			}else{
				preview = content.substring(0,50);
			}
		}
		return preview;
	}
	
	@ResponseBody
	@RequestMapping(value = "deleteMail" , method = RequestMethod.POST)
	public String deleteMail(@RequestParam("deleteArray") ArrayList<String> deleteArray,
							@RequestParam("sort") String sort){
		
		System.out.println("삭제 ajax로부터 컨트롤러로 넘어옴:3");
		System.out.println(deleteArray.get(0).toString());
		
		int deleteCount = deleteArray.size();
		
		int deleteHandle = 0;
		
		for(int i = 0 ; i<deleteArray.size();i++){
			
			String message_name= null;
			
			if(i ==0){
				message_name = deleteArray.get(i).substring(2,deleteArray.get(i).length()-1);
			}else if(i == deleteArray.size()){	
				message_name = deleteArray.get(i).substring(1,deleteArray.get(i).length()+1);	
			}else{
				message_name = deleteArray.get(i).substring(1,deleteArray.get(i).length()-2);	
			}
			
			System.out.println(message_name);
			
			int a = -1; 
					
			if(sort.equals("normal")){
				a= mdao.deleteOneMail(message_name);
			
			//delete Permanet
			}else if(sort.equals("permanent")){
				a = mdao.deletePermanent(message_name);
				
			//getBack
			}else{
				a = mdao.getBack(message_name);
			}
			
			
			System.out.println("a:"+a);
			if( a!= -1){
				deleteHandle += a;
			}else{
				System.out.println("[Error]In Deleting the Mail ");
			}
		}
	
		if(deleteHandle != 0){
			
			if(deleteCount == deleteHandle){
				
				System.out.println("delete success");
			}
		}else{
			System.out.println("delete failed");
			System.out.println("handle number"+deleteHandle);
			System.out.println("data count"+deleteCount);
		}
		return "plez";
	}

	@ResponseBody
	@RequestMapping(value = "importanceCheck" , method = RequestMethod.GET)
	public String importanceCheck(String message_name, String message_importance ){
		
		int numberHandler = -1 ; 
		
		//중요하다고 표시되지 않은 경우 
		if(message_importance == null || message_importance.equals("")){			
			numberHandler = mdao.checkImportance(message_name);		
		//중요하다고 표시된 경우 
		}else{
			numberHandler = mdao.cancelImportance(message_name);
		}
		
		System.out.println("numberHandler: "+numberHandler);
		
		return "checked importance";
	}
	
	

	
	
	
	
}
