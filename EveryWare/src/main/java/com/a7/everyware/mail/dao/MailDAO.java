package com.a7.everyware.mail.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a7.everyware.mail.vo.BlobData;
import com.a7.everyware.mail.vo.Inbox;
import com.a7.everyware.mail.vo.MailInfo;

@Repository
public class MailDAO {

	@Autowired
	SqlSession sqlSession;

	public String getUserFromMailInfo(String mailAddress){
		
		String fromWho = null;
		
		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		fromWho = mapper.getUserFromMailInfo(mailAddress);
		
		return fromWho;
	}
	
	
	public String getRepositoryFormMailInfo(String sessionId){
		
		String repository = null; 

		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		repository = mapper.getRepositoryFormMailInfo(sessionId);
		
		return repository;
		
	}
	
	public ArrayList<Inbox> getMailList(String repository) {

		ArrayList<Inbox> mailList = null;
		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		mailList = mapper.getMailList(repository);

		return mailList;
	}

	public ArrayList<Inbox> getMailList_important(String repository) {

		ArrayList<Inbox> mailList = null;
		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		mailList = mapper.getMailList_important(repository);

		return mailList;
	}
	
	public ArrayList<Inbox> getMailList_temporary(String repository){
		
		ArrayList<Inbox> mailList = null;
		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		mailList = mapper.getMailList_temporary(repository);

		return mailList;
		
	}

	public ArrayList<Inbox> getMailList_trash(String repository) {

		ArrayList<Inbox> mailList = null;
		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		mailList = mapper.getMailList_trash(repository);

		return mailList;
	}

	public ArrayList<Inbox> getMailList_byOneSelf(HashMap<String,String> map){
		
		ArrayList<Inbox> mailList = null; 
		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		mailList = mapper.getMailList_byOneself(map);
		
		return mailList;
	}
	
	public Inbox readMail(HashMap<String, String> map) {

		Inbox inbox = null;

		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		inbox = mapper.readMail(map);

		return inbox;
	}

	public int deleteMail(ArrayList<String> deleteArray) {

		int deleteHandle = -1;

		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		deleteHandle = mapper.deleteMail(deleteArray);

		return deleteHandle;
	}

	public int deleteOneMail(String deleteMailnum) {

		int deleteHandle = -1;

		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		deleteHandle = mapper.deleteOneMail(deleteMailnum);

		return deleteHandle;
	}

	public int checkImportance(String message_name) {

		System.out.println("IN DAO");
		System.out.println(message_name);

		int numberHandle = -1;

		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		numberHandle = mapper.checkImportance(message_name);

		return numberHandle;
	}

	public int cancelImportance(String message_name) {

		int numberHandle = -1;

		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		numberHandle = mapper.cancelImportance(message_name);

		return numberHandle;
	}

	//메일 주소 검색 
	public ArrayList<MailInfo> mailSearch(String searchTxt){
		
		ArrayList<MailInfo> mailinfoList = null ; 
		
		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		mailinfoList = mapper.mailSearch(searchTxt);
		
		return mailinfoList;
	}

	//메일 양식 업데이트 
	public int updateWriteForm(HashMap<String,Object> map){
		
		int numberHandle = -1; 
		
		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		numberHandle = mapper.updateWriteForm(map);
		
		return numberHandle;
	}
	
	//메일 양식 가져오기 
	public BlobData selectWriteForm(String user_id){
		
		BlobData writeFormContent = null;
		
		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		writeFormContent = mapper.selectWriteForm(user_id);
		
		return writeFormContent;
	}
	
	public int deletePermanent(String deleteMailnum) {

		int deleteHandle = -1;

		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		deleteHandle = mapper.deletePermanent(deleteMailnum);

		return deleteHandle;
	}
	
	public int getBack(String deleteMailnum){
		
		int getBackHandle = -1; 
		
		MailMapper mapper= sqlSession.getMapper(MailMapper.class);
		getBackHandle = mapper.getBack(deleteMailnum);
		
		return getBackHandle;
	}
	
	public int checkReadMail(HashMap<String, String> map){
		int readHandle = -1; 
		
		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		readHandle = mapper.checkReadMail(map);
	
		return readHandle;
	}
	
	public int getNextTempVal(){
		int nextVal = -1; 
		
		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		nextVal = mapper.getNextTempVal();
		
		return nextVal;
	}
	
	//Temp Mail insert !
	public int insertTemp(Inbox map){
		int insertHandler = -1; 
		
		MailMapper mapper = sqlSession.getMapper(MailMapper.class);
		insertHandler = mapper.insertTemp(map);
		
		return insertHandler;
	}

}
