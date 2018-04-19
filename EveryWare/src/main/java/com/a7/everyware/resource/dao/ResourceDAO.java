package com.a7.everyware.resource.dao;

import java.util.ArrayList;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a7.everyware.resource.vo.R_reservationVO;
import com.a7.everyware.resource.vo.ResourceVO;

@Repository
public class ResourceDAO {
	
	@Autowired
	SqlSession sqlsession;
	
	public ArrayList<ResourceVO> readMeetingRoom(){
		ArrayList<ResourceVO> result = new ArrayList<ResourceVO>();
		try{
			ResourceMapper mapper = sqlsession.getMapper(ResourceMapper.class);
			result = mapper.readMeetingRoom();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<ResourceVO> readNoteBook(){
		ArrayList<ResourceVO> result = new ArrayList<ResourceVO>();
		try{
			ResourceMapper mapper = sqlsession.getMapper(ResourceMapper.class);
			result = mapper.readNoteBook();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int Resource_add(R_reservationVO resevatin_vo)
	{
		int result = 0;
		try{
			ResourceMapper mapper = sqlsession.getMapper(ResourceMapper.class);
			result = mapper.Resource_add(resevatin_vo);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<R_reservationVO> getMeetingRoom(){
		ArrayList<R_reservationVO> result = new ArrayList<R_reservationVO>();
		try{
			ResourceMapper mapper = sqlsession.getMapper(ResourceMapper.class);
			result = mapper.getMeetingRoom();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
