package com.a7.everyware.mail.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.a7.everyware.mail.dao.MailDAO;
import com.a7.everyware.mail.vo.AddressBook;

@RequestMapping(value = "mail")
@Controller
public class MailAddressController {

	private static Logger logger = LoggerFactory.getLogger("MailAddressController.class");
	
	@Autowired
	MailDAO mdao;
	
	@RequestMapping(value = "saveAddress", method = RequestMethod.POST)
	public String addressSave(String mailto, String mailreference, Model model){
		
		model.addAttribute("mailto",mailto);
		model.addAttribute("mailreference",mailreference);
		
		return "mail/mailAddressBookSet";
	}
	
	@RequestMapping(value = "saveOneAddress", method = RequestMethod.POST)
	public String addressOneSave(String mailsend, String mailreference, String addrBook_name, Model model, HttpSession session){
		
		System.out.println("saveOneAddress에 들어옴 : AddressRegistration");
		
		String userId = (String)session.getAttribute("userId");
		
		AddressBook addrBook = new AddressBook(); 
		
		addrBook.setAddrbook_name(addrBook_name);
		addrBook.setMailreference(mailreference);
		addrBook.setMailto(mailsend);
		addrBook.setUser_id(userId);
		addrBook.setRepository(mdao.getRepositoryFormMailInfo(userId));
		
		int insertHandler = mdao.insertOneAddr(addrBook);
		
		if(insertHandler == 1){
			model.addAttribute("check","saved");	
		}else{
			model.addAttribute("check","failed");
		}
		
		
		System.out.println("insertHandler:"+insertHandler);
		
		return "mail/mailAddressBookSet";
	}
	
	@RequestMapping(value = "getAddress", method = RequestMethod.GET)
	public String getAddress(HttpSession session, Model model){
		
		String userId = (String)session.getAttribute("userId");
		String repository  = mdao.getRepositoryFormMailInfo(userId);
		
		ArrayList<AddressBook> addrBook =  mdao.selectAddress(repository);
		
		model.addAttribute("addrBook",addrBook);
		
		return "mail/mailAddressBookGet";
	}
}
