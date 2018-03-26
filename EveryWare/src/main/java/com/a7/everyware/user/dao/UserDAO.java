package com.a7.everyware.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a7.everyware.user.vo.UserVO;

@Repository
public class UserDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	//user_id로 user를 검색하는 메소드
	public UserVO findUser(String id) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		return mapper.findUser(id);
	}

}
