package com.a7.everyware.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a7.everyware.user.vo.UserVO;


//유저관련 DAO
@Repository
public class UserDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	
	//유저 정보 select
	public UserVO findUser(String id) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		return mapper.findUser(id);
	}
	
	
	//회원정보 수정 처리
	public int modifyUser(UserVO user) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		
		int result = 0;
		try {
			result = mapper.modifyUser(user);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	//이름 검색
	public UserVO searchUser(String user_name) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		UserVO user = mapper.searchUser(user_name);
		return user;
	}
	

	
/*	
	//유저 등록(사원 정보 등록 보류)
	public int insertUser(UserVO user) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		
		int result = 0;
		try {
			result = mapper.insertUser(user);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	//유저 등록시 id체크 페이지 이동(사원 정보 등록 보류)
	public UserVO checkId(String id) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		UserVO user = mapper.checkId(id);
		return user;
	}
	
	*/


}
