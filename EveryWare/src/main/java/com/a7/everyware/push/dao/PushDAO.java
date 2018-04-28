package com.a7.everyware.push.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a7.everyware.push.vo.PushVO;
import com.a7.everyware.user.vo.UserVO;

@Repository
public class PushDAO {
	@Autowired
	SqlSession sqlSession;

	public void addPush(PushVO push) {
		PushMapper mapper = sqlSession.getMapper(PushMapper.class);
		System.out.println(push.toString());
		mapper.addPush(push);
	}
	
	public ArrayList<PushVO> selectPush(UserVO userVO) {
		PushMapper mapper = sqlSession.getMapper(PushMapper.class);
		ArrayList<PushVO> pushList = mapper.selectPush(userVO);
		return pushList;
	}

	public void updatePush(int push_id) {
		PushMapper mapper = sqlSession.getMapper(PushMapper.class);
		mapper.updatePush(push_id);
	}
}
