package com.a7.everyware.mail.util;

import javax.mail.Folder;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.URLName;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class InboxManager implements HttpSessionBindingListener{

	static private Session session = 
			Session.getDefaultInstance(System.getProperties(),null);
	
	private Store store;
	private Folder inbox;
	
	public InboxManager(URLName url)
		throws NoSuchProviderException, MessagingException{
	
		store = session.getStore(url);
		store.connect();
		inbox = store.getFolder("INBOX");
		inbox.open(Folder.READ_WRITE);
		
	}
	
	
	public Folder getInbox(){
	
		return inbox;
	}
	
	@Override
	public void valueBound(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void valueUnbound(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
	
		try{
			inbox.close(true);
			store.close();
		}catch(MessagingException e){
			
		}
		
	}

	
	
}
