package com.a7.everyware.mail.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.StringTokenizer;

import javax.mail.Address;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.URLName;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeUtility;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MailUtil {

	public static Folder getInbox(HttpServletRequest req,HttpServletResponse res) 
			throws ServletException, IOException, MessagingException{
			HttpSession session = req.getSession(true);
			InboxManager inboxManager = 
					(InboxManager)session.getAttribute("inboxmanager");
			
			if(inboxManager == null){
				String uid = (String) session.getAttribute("uid");
				String passwd = (String) session.getAttribute("password");
				
				if(uid ==null){
					 String page ="/login.jsp";
					 RequestDispatcher dis = req.getRequestDispatcher(page);
					 dis.forward(req, res);
					 return null;
				}
				
				URLName url = new URLName("pop3","localhost",110,"",uid,passwd);
				inboxManager = new InboxManager(url);
				session.setAttribute("inboxmanager", inboxManager);
				
			} else
				inboxManager = 
						(InboxManager)session.getAttribute("inboxmanager");
				
			return inboxManager.getInbox();
				
			}
	
	public static Message getMsg(HttpServletRequest req,HttpServletResponse res)
		throws ServletException, IOException, MessagingException{
		
		String msgst = req.getParameter("msg");
		if(msgst != null ){
			int msgnr = Integer.parseInt(msgst);
			Folder inbox = getInbox(req,res);
			if(inbox == null) 
				return null; 
			else
				return inbox.getMessage(msgnr);
		}
		return null;
	}

	public static void printAddresses(Address[] addresses, PrintWriter out){
		if(addresses == null)
			return; 
		
		for(int i = 0 ; i < addresses.length;i++){
			
			String name = addresses[i].toString();
			try{
				name = MimeUtility.decodeText(name);
			}catch(UnsupportedEncodingException e){
				
			}
			
			name = name.replaceAll("<", "&lt;");
			if(i==0)
				out.print(name);
			else
				out.println(","+name);
		}
	}
	
	public static String getAddress(Address[] addresses){
		if(addresses == null)
			return "";
		
		String name = addresses[0].toString();
		try{
			name =MimeUtility.decodeText(name);
			
		}catch(UnsupportedEncodingException e){}
		
		name= name.replaceAll("<", "&lt;");
		return name; 
	}
	
	public static void printDate(Date date, PrintWriter out){
		SimpleDateFormat fmt = new SimpleDateFormat("yy/mm/dd HH:mm");
		out.println(fmt.format(date));
	}
	
	public static InternetAddress[] parse(String addr){
		
		StringTokenizer  st = new StringTokenizer(addr, ",;", false);
		int count = st.countTokens();
		InternetAddress ia[] = new InternetAddress[count];
		int i = 0; 
		
		while(st.hasMoreTokens()){
			String token = st.nextToken();
			try{
				int index = token.indexOf("<");
				String email = token, name = "";
				
				if(index != -1){
					name =token.substring(0, index);
					email = token.substring(index, token.length()-1);
				}
				ia[i] = new InternetAddress(email, name, "KSC5601");
				
			}catch(UnsupportedEncodingException e){e.printStackTrace();}
			i++;
		}
		return ia;
	}
	
}
	
	
	
	
		

	
	

