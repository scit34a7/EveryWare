package com.a7.everyware.meeting.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a7.everyware.meeting.vo.MeetingVO;
import com.a7.everyware.user.dao.UserMapper;

@Repository
public class MeetingDAO {

	@Autowired
	SqlSession sqlSession;
	
	public ArrayList<MeetingVO> searchAllList() {
		MeetingMapper mapper = sqlSession.getMapper(MeetingMapper.class);
		return mapper.searchAllList();
	}
	
	public void createRoom(MeetingVO meetVO) {
		MeetingMapper mapper = sqlSession.getMapper(MeetingMapper.class);
		System.out.println(meetVO.toString());
		mapper.createRoom(meetVO);
	}

	public MeetingVO findRoom(String user_id) {
		MeetingMapper mapper = sqlSession.getMapper(MeetingMapper.class);
		return mapper.findRoom(user_id);
	}
}
