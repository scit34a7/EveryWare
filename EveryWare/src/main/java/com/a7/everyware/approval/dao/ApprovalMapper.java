package com.a7.everyware.approval.dao;

import java.util.ArrayList;

import com.a7.everyware.approval.vo.ApprovalHistoryVO;
import com.a7.everyware.approval.vo.ApprovalLineVO;
import com.a7.everyware.approval.vo.ApprovalVO;
import com.a7.everyware.user.vo.UserVO;

public interface ApprovalMapper {

	//모든 유저 검색(결재선 지정에 사용) user_id가 이름 / 부서  / 직책 의 형태
	public ArrayList<UserVO> findUser();
	
	//결재선 라인 저장
	public void insertApprovalLine(ApprovalLineVO approvalLine);
	
	//user_id로 결재선라인 검색
	public ArrayList<ApprovalLineVO> findApprovalLine(String user_id);
	
	//user_id로 user객체 검색
	public UserVO findUserById(String user_id);		//user_id가 진짜 user_id
	
	//user_id로  이름 / 부서  / 직책 의 형태
	public String findStatusById(String user_id);
	
	//결재선id로 결재선 객체 검색
	public ApprovalLineVO findApprovalLineById(int eApprovalLine_id);	
	public ApprovalLineVO findApprovalLineById2(int eApprovalLine_id);	
	
	
	//전자결재 등록
	public void insertApproval(ApprovalVO approval);
	
	//user_id가 결재선에 올라와있는 전자결재 모두 객체 불러오기
	public ArrayList<ApprovalVO> findApprovalToMe(String user_id);
	
	//user_id가 작성한 전자결재 모두 객체 불러오기
	public ArrayList<ApprovalVO> findApprovalFromMe(String user_id);
	
	//eApproval_id로 Approval 객체 가져오기
	public ApprovalVO findApprovalById(int eApproval_id);
	
	//eApproval_id로 approvalHisotryVO 가져오기
	public ArrayList<ApprovalHistoryVO> findApprovalHistory(int eApproval_id);
	
	//approvalHisotry 등록
	public void insertHistory(ApprovalHistoryVO history);
	
	
	
}
