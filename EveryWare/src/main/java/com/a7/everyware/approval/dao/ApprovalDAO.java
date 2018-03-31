package com.a7.everyware.approval.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a7.everyware.approval.vo.ApprovalLineVO;
import com.a7.everyware.user.vo.UserVO;

@Repository
public class ApprovalDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	
	/*
	 * 아이디,이름,부서,직위를 갖은 유저객체의 리스트
	 */
	public ArrayList<UserVO> findUser(){
		
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		ArrayList<UserVO> userList = mapper.findUser();
		
		return userList;
	}
	
	
	/**
	 * 결재선 등록
	 */
	public void insertApprovalLine(ApprovalLineVO al){
	
	ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
	mapper.insertApprovalLine(al);
		
		
	}

}
