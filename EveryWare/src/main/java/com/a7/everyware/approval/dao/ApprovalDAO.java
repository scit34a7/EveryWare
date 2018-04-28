package com.a7.everyware.approval.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a7.everyware.approval.vo.ApprovalFormatVO;
import com.a7.everyware.approval.vo.ApprovalHistoryVO;
import com.a7.everyware.approval.vo.ApprovalLineVO;
import com.a7.everyware.approval.vo.ApprovalVO;
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
	
	
	/**
	 * user_id로 결재선 불러오기
	 * @param user_id
	 * @return
	 */
	public ArrayList<ApprovalLineVO> findApprovalLine(String user_id){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		ArrayList<ApprovalLineVO> approvalLineList = mapper.findApprovalLine(user_id);
		return approvalLineList;
	}
	
	
	/**
	 * user_id로 user 불러오기
	 */
	public UserVO findUserById(String user_id){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		UserVO user = mapper.findUserById(user_id);
		return user;
	}
	
	/**
	 * dept_id 대신 dept_name 등등
	 * @param user_id
	 * @return
	 */
	public UserVO findUserById2(String user_id){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		UserVO user = mapper.findUserById2(user_id);
		return user;
	}
	
	
	

	
	
	/**
	 * eApprovalLine_id로 ApprovalLineVO 불러오기 (person이 이름 / 부서 / 직책)
	 * @param eApprovalLine_id
	 * @return	ApprovalLineVO
	 */
	public ApprovalLineVO findApprovalLineById(int eApprovalLine_id){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		ApprovalLineVO line = mapper.findApprovalLineById(eApprovalLine_id);
		return line;
	}
	
	/**
	 * eApprovalLine_id로 ApprovalLineVO 불러오기
	 * @param eApprovalLine_id
	 * @return	ApprovalLineVO
	 */
	public ApprovalLineVO findApprovalLineById2(int eApprovalLine_id){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		ApprovalLineVO line = mapper.findApprovalLineById2(eApprovalLine_id);
		return line;
	}
	
	
	/**
	 * 전자 결재 등록
	 * @param approval
	 */
	public void insertApproval(ApprovalVO approval){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		mapper.insertApproval(approval);
	}
	
	
	/**
	 * 내가 결재선에 속해있는 전자결재 객체 모두 불러오기
	 * @param user_id
	 * @return ArrayList<ApprovalVO>
	 */
	public ArrayList<ApprovalVO> findApprovalToMe(String user_id){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		ArrayList<ApprovalVO> approvalList = mapper.findApprovalToMe(user_id);
		return approvalList;
	}
	
	/**
	 * 내가(user_id, 로그인한 사람) 올린 전자결재 객체 모두 불러오기
	 * @param user_id
	 * @return ArrayList<ApprovalVO>
	 */
	public ArrayList<ApprovalVO> findApprovalFromMe(String user_id){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		ArrayList<ApprovalVO> approvalList = mapper.findApprovalFromMe(user_id);
		return approvalList;
	}
	
	
	/**
	 * 결재 문서에대한 결재 히스토리 가져오기
	 * @param eApproval_id
	 * @return ArrayList<ApprovalHistoryVO>
	 */
	public ArrayList<ApprovalHistoryVO> findApprovalHistory(int eApproval_id){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		ArrayList<ApprovalHistoryVO> list = mapper.findApprovalHistory(eApproval_id);
		return list;
	}
	
	
	
	/**
	 * eApproval_id로 Approval 객체 가져오기
	 * @param user_id
	 * @return ApprovalVO
	 */
	public ApprovalVO findApprovalById(int eApproval_id){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		ApprovalVO approval = mapper.findApprovalById(eApproval_id);
		return approval;
	}
	
	
	/**
	 * user_id로 이름 / 부서 / 직책 불러오기
	 * @param user_id
	 * @return
	 */
	public String findStatusById(String user_id){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		String status = mapper.findStatusById(user_id);
		return status;
	}
	
	/**
	 * ApprovalHistoryVO 객체 등록
	 * @param history
	 */
	public void insertHistory(ApprovalHistoryVO history){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		mapper.insertHistory(history);
	}
	
	
	/**
	 * ApprovalFormatVO 객체 등록
	 * @param format
	 */
	public void insertFormat(ApprovalFormatVO format){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		mapper.insertFormat(format);
	}
	
	
	/**
	 * ApprovalFormatVO 검색 (user_id로)
	 * @param user_id
	 * @return ArrayList<ApprovalFormatVO>
	 */
	public ArrayList<ApprovalFormatVO> findFormat(String user_id){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		ArrayList<ApprovalFormatVO> list = mapper.findFormat(user_id);
		return list;
	}
	
	/**
	 * ApprovalVO 수정 (반려된 결재 수정)
	 * @param approval
	 */
	public void editApproval(ApprovalVO approval){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		mapper.editApproval(approval);
	}
	
	/**
	 * ApprovalHistoryVO 수정  + 등록 (반려기록 수정 + 재상신)
	 * @param history
	 */
	public void updateHistory(ApprovalHistoryVO history){
		ApprovalMapper mapper = sqlSession.getMapper(ApprovalMapper.class);
		mapper.updateHistory(history);
		mapper.insertHistory(history);
	}
	

}
