package com.a7.everyware.mail.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

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
import com.a7.everyware.mail.util.MailUtil;
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
		String userId = (String) session.getAttribute("userId");

		String repository = mdao.getRepositoryFormMailInfo(userId);

		ArrayList<MailList> viewList = new ArrayList<MailList>();

		ArrayList<Inbox> inboxList = null;

		
		// all = 0, self = 1, send = 2, important = 3, trash =4, temporary = 5;
		if (sort.equals("all")) {

			inboxList = mdao.getMailList(repository);
			model.addAttribute("sort", 0);

		} else if (sort.equals("send")||sort.equals("self")) {

			HashMap<String, String> map = new HashMap<String,String>();
			
			map.put("repository", repository);
			map.put("sender", repository+"@everywareit.com");
			
			inboxList  = mdao.getMailList_byOneSelf(map);
			
			if(sort.equals("self")){
				model.addAttribute("sort",1);
			}else{
				model.addAttribute("sort",2);
			}

		} else if (sort.equals("trash")) {

			inboxList = mdao.getMailList_trash(repository);
			model.addAttribute("sort", 4);

		} else if (sort.equals("important")) {

			inboxList = mdao.getMailList_important(repository);
			model.addAttribute("sort", 3);

		} else if (sort.equals("temporary")){
			
			inboxList = mdao.getMailList_temporary(repository+"@everywareit.com"); // 여기는 repository 가 아닌 sender로 들어감.
			model.addAttribute("sort", 5);
			
			
		}else {
			
			
		}

		MailList mail = null;
		boolean selfCheck = false; 

		for (int i = 0; i < inboxList.size(); i++) {

			mail = new MailList();

			// MDAO: mailinfo 에서 가져오기
			String mailFrom = inboxList.get(i).getSender();
			
			if(mailFrom != null &&!mailFrom.equals("")){
				
				System.out.println("mailFrom Check: "+mailFrom);
				String fromWho = mdao.getUserFromMailInfo(mailFrom);

				mail.setFrom(fromWho + "&lt;" + mailFrom + "&gt;");
			
			}else{
				String fromWho = "temporary";			
			}
			
			mail.setRecipients(inboxList.get(i).getRecipients());
			mail.setMaildate(inboxList.get(i).getLast_updated());
			mail.setMessage_name(inboxList.get(i).getMessage_name());
			mail.setMailimportance(inboxList.get(i).getMessage_importance());

			// mail.setMailreaded() ; 읽었는지 안읽었는지 확인
			String mailReaded = inboxList.get(i).getMessage_receiving();
			if (mailReaded == null) {
				mail.setMailreaded("<b>unreaded</b>");
			} else {
				mail.setMailreaded(mailReaded);
			}

			byte[] messageBody = inboxList.get(i).getMessage_body();

			Message messageMime = null;
			try {
				ByteArrayInputStream bis = new ByteArrayInputStream(messageBody);

				messageMime = new MimeMessage(null, bis);

				if(messageMime.getSubject() != null && !messageMime.getSubject().equals("")){
					
					mail.setMailsubject(messageMime.getSubject());
				}else{
					// 임시저장시에  잘못했었던 
					mail.setMailsubject("temporary Mail");
				}

				mail.setRecipients(MailUtil.printAddresses(messageMime.getRecipients(Message.RecipientType.TO)));
				
				//self/ send 의 경우, 이것이 자신에게 보낸 것인가 다른사람에게 보낸것인가를 체크하기 위해서: self 면 true; 
				selfCheck = MailUtil.isSelfMail(messageMime.getRecipients(Message.RecipientType.TO), repository);
				
				Multipart multipart = (Multipart) messageMime.getContent();

				if (messageMime.isMimeType("multipart/*")) {

					for (int i1 = 0; i1 < multipart.getCount(); i1++) {

						Part p = multipart.getBodyPart(i1);

						if ((p.isMimeType("text/plain") || p.isMimeType("text/html")) && (p.getFileName() == null)) {
							String mime = messageMime.getContentType();
							int index = mime.indexOf(";");

							if (index < 0) {
								System.out.println((String) p.getContent());
							} else {

								mail.setContentpreview(previewContent((String) p.getContent()));
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
			} catch (ClassCastException e) {
				// Multipart part <- message.getContent() 에서 Content가 순수 String
				// 컨텐츠로 짜여졌을 때에 발생는 오류

				try {
					System.out.println(messageMime.getContent().toString());

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

			//편지함 종류에 따라서 리스트에 추가되는 메일이 다름 크게  내게보낸편지 / 보낸편지 / 나머지 로 분류 
			if(sort.equals("self")){
				if(selfCheck){
					viewList.add(mail);
				}
			}else if(sort.equals("send")){
				if(!selfCheck){
					viewList.add(mail);
				}
			}else{
				viewList.add(mail);
			}
		}

		model.addAttribute("viewList", viewList);
		
		return "appviews-inbox-inbox";
	}

	// Mail Content PreView
	public String previewContent(String content) {

		String preview = null;

		int checkIndex = -1;

		checkIndex = content.indexOf("</p>");

		if (checkIndex != -1) {

			if (checkIndex < 50) {
				preview = content.substring(0, checkIndex);
			} else {
				preview = content.substring(0, 50);
			}
		} else {
			if (content.length() < 50) {
				preview = content.toString();

			} else {
				preview = content.substring(0, 50);
			}
		}
		return preview;
	}

	@ResponseBody
	@RequestMapping(value = "deleteMail", method = RequestMethod.POST)
	public String deleteMail(@RequestParam("deleteArray") ArrayList<String> deleteArray,
			@RequestParam("sort") String sort) {

		System.out.println("삭제 ajax로부터 컨트롤러로 넘어옴:3");
		System.out.println(deleteArray.toString());

		// [["Mail1524102363841-1"]]
		// [["Mail1524102363841-1", "Mail1524102335608-0"]]
		// [["Mail1524102376048-2", "Mail1524102363841-1",
		// "Mail1524102335608-0", "Mail1524032644594-0", "Mail1523880863396-8"]]

		int deleteCount = deleteArray.size();

		int deleteHandle = 0;

		String message_name = null;

		if (deleteCount == 1) {

			message_name = deleteArray.get(0).substring(2, deleteArray.get(0).length() - 2);
			System.out.println(message_name);
			
			int a = -1;

			if (sort.equals("normal")) {
				a = mdao.deleteOneMail(message_name);

				// delete Permanet
			} else if (sort.equals("permanent")) {
				a = mdao.deletePermanent(message_name);

				// getBack
			} else {
				a = mdao.getBack(message_name);
			}

			System.out.println("a:" + a);
			if (a != -1) {
				deleteHandle += a;
			} else {
				System.out.println("[Error]In Deleting the Mail ");
			}
		
		} else {

			for (int i = 0; i < deleteArray.size(); i++) {

				// 1차 :size에 따라서 나누고, 2차: i 번째로 나누기

				if (i == 0) {
					message_name = deleteArray.get(i).substring(2, deleteArray.get(i).length()-1);
				} else if (i == deleteArray.size()-1) {
					message_name = deleteArray.get(i).substring(1, deleteArray.get(i).length()-2);
				} else {
					message_name = deleteArray.get(i).substring(1, deleteArray.get(i).length()-1);
				}

				System.out.println(message_name);

				int a = -1;

				if (sort.equals("normal")) {
					a = mdao.deleteOneMail(message_name);

					// delete Permanet
				} else if (sort.equals("permanent")) {
					a = mdao.deletePermanent(message_name);

					// getBack
				} else {
					a = mdao.getBack(message_name);
				}

				System.out.println("a:" + a);
				if (a != -1) {
					deleteHandle += a;
				} else {
					System.out.println("[Error]In Deleting the Mail ");
				}
			}
		}
		
		if (deleteHandle != 0) {

			if (deleteCount == deleteHandle) {

				System.out.println("delete success");
			}
		} else {
			System.out.println("delete failed");
			System.out.println("handle number" + deleteHandle);
			System.out.println("data count" + deleteCount);
		}
		return "plez";
	}

	@ResponseBody
	@RequestMapping(value = "importanceCheck", method = RequestMethod.GET)
	public String importanceCheck(String message_name, String message_importance) {

		int numberHandler = -1;

		// 중요하다고 표시되지 않은 경우
		if (message_importance == null || message_importance.equals("")) {
			numberHandler = mdao.checkImportance(message_name);
			// 중요하다고 표시된 경우
		} else {
			numberHandler = mdao.cancelImportance(message_name);
		}

		System.out.println("numberHandler: " + numberHandler);

		return "checked importance";
	}

}
