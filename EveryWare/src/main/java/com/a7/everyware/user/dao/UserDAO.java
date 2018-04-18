package com.a7.everyware.user.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
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
	public UserVO findUser(String user_id) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		return mapper.findUser(user_id);
	}

	
	//사원정보 수정 처리
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
		
		

	//사원 주소록(검색)
	public ArrayList<UserVO> userList(String searchText, int startRecord, int countPerPage) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		
		//전체 검색 결과 중 읽을 시작위치와 개수
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		
		ArrayList<UserVO> userList = mapper.userList(searchText, rb);
		
		return userList;
	}

		
	//사원 수
	public int getTotal(String searchText) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		int total = mapper.getTotal(searchText);
		return total;
	}
	
}
