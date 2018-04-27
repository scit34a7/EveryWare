package com.a7.everyware.mail.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.a7.everyware.mail.vo.AddressBook;
import com.a7.everyware.mail.vo.BlobData;
import com.a7.everyware.mail.vo.Inbox;
import com.a7.everyware.mail.vo.MailInfo;

public interface MailMapper {

	public ArrayList<Inbox> getMailList(String repository);
	
	public ArrayList<Inbox> getMailList_trash(String repository);
	
	public ArrayList<Inbox> getMailList_important(String repository);
	
	public ArrayList<Inbox> getMailList_temporary(String repository);
	
	public ArrayList<Inbox> getMailList_byOneself(HashMap<String, String> map);
	
	public Inbox readMail(HashMap<String,String> map);
	
	public int deleteMail(ArrayList<String> deleteArray);
	
	public int deleteOneMail(String deleteMailnum);

	public int checkImportance(String message_name);
	
	public int cancelImportance(String message_name);
	
	public String getUserFromMailInfo(String mailAddress);
	
	public String getRepositoryFormMailInfo(String sessionId);

	public ArrayList<MailInfo> mailSearch(String searchTxt);

	public int updateWriteForm(HashMap<String,Object> map);
	
	public BlobData selectWriteForm(String user_id);
	
	public int deletePermanent(String deleteMailnum);
	
	public int getBack(String message_name);
	
	public int checkReadMail(HashMap<String, String> map);

	public int getNextTempVal();

	public int insertTemp(Inbox map);
	
	//주소록
	public int insertOneAddr(AddressBook addrBook);
	
	public ArrayList<AddressBook> selectAddress(String repository);
	
	public int countUnread(String repository);
	
}
