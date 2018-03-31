package com.a7.everyware.user.dao;

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
	
	//이름으로 해당 유저 검색
	public UserVO searchUser(String user_name);
	
	//회원 정보 수정
	public int modifyUser(UserVO user);
		
	//유저 정보 select
	public UserVO findUser(String id);
	
}
