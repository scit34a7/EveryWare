package com.a7.everyware.push.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a7.everyware.push.vo.PushVO;
import com.a7.everyware.user.vo.UserVO;

@Repository
public class PushDAO {
	@Autowired
	SqlSession sqlSession;

	public void addPush(PushVO vo) {
		PushMapper mapper = sqlSession.getMapper(PushMapper.class);
		System.out.println(vo.toString());
		mapper.addPush(vo);
	}
	
	public ArrayList<PushVO> selectPush(UserVO userVO) {
		PushMapper mapper = sqlSession.getMapper(PushMapper.class);
		return mapper.selectPush(userVO);
	}

	public void updatePush(int push_id) {
		PushMapper mapper = sqlSession.getMapper(PushMapper.class);
		mapper.updatePush(push_id);
	}
}
