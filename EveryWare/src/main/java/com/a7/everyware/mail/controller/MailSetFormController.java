package com.a7.everyware.mail.controller;

import static org.hamcrest.CoreMatchers.instanceOf;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.a7.everyware.mail.dao.MailDAO;
import com.a7.everyware.mail.vo.BlobData;

@Controller
@RequestMapping(value = "mail")
public class MailSetFormController {

	private static final Logger logger  = LoggerFactory.getLogger(MailSetFormController.class);
	
	@Autowired
	MailDAO mdao;
	
	@RequestMapping(value = "setMailForm", method = RequestMethod.GET)
	public String setMailForm(HttpSession session, Model model){
	
		String user_id = (String)session.getAttribute("userId");
		
		String writeForm = null;
	
		BlobData writeFormContent = mdao.selectWriteForm(user_id);
		
		
		if(writeFormContent != null){
			
			System.out.println(writeFormContent.toString());
			
			byte [] byteStream = writeFormContent.getBlobData();
			
			writeForm = new String(byteStream,StandardCharsets.UTF_8);
			
			System.out.println("===========write Form check===========");
			System.out.println(writeForm);
		}else{
			// 저장된 형식이 없을 경우 ;
			writeForm = "";
		}
		
		model.addAttribute("writeForm", writeForm);
		
		return "mail/appviews-inbox-writeForm";
	}


	@RequestMapping(value = "saveMailForm", method = RequestMethod.POST)
	public String saveMailForm(HttpSession session, String mailContent_summer ){
		
		String userId = (String)session.getAttribute("userId");
		
		HashMap<String,Object> map = new HashMap<String, Object>();
		
		BlobData blobData = new BlobData();
		
		byte[] byteFromString = mailContent_summer.getBytes();
		
		blobData.setBlobData(byteFromString);
		
		map.put("userId", userId);
		map.put("writeForm", blobData);
		
		int numberHandle = mdao.updateWriteForm(map);
		
		System.out.println("numberHandle:"+numberHandle+"/ update Blob passed ");
		
		return "mail/appviews-inbox-writeForm";
	}
	
	
	
}
