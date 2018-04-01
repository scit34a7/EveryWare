package com.a7.everyware.user.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import com.a7.everyware.user.vo.UserVO;


//유저 정보
public interface UserMapper {
	/*
	//유저 등록 관련
	//유저 정보 저장
	public int insertUser(UserVO user);
	
	//idCheck
	public UserVO checkId(String id);
	*/
	

	//회원 정보 수정
	public int modifyUser(UserVO user);
	
	//사원 수(검색 포함)
	public int getTotal(String searchText);
	
	//유저 주소록(검색 포함)
	public ArrayList<UserVO> userList(String searchText, RowBounds rb);
	
	//유저 정보 select
	public UserVO findUser(String id);
	
}
