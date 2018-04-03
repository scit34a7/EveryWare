package com.a7.everyware.approval.dao;

import java.util.ArrayList;

import com.a7.everyware.approval.vo.ApprovalLineVO;
import com.a7.everyware.user.vo.UserVO;

public interface ApprovalMapper {

	
	public ArrayList<UserVO> findUser();
	public void insertApprovalLine(ApprovalLineVO al);
	public ArrayList<ApprovalLineVO> findApprovalLine(String user_id);
	
}
