package com.a7.everyware.approval.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.a7.everyware.approval.dao.ApprovalDAO;
import com.a7.everyware.approval.vo.ApprovalLineVO;
import com.a7.everyware.user.vo.UserVO;



//게시판 컨트롤러
@Controller
@RequestMapping(value="approval")
public class ApprovalController {

	private static final Logger logger = LoggerFactory.getLogger(ApprovalController.class);
	
	@Autowired
	ApprovalDAO approvalDAO;
	
	
	
	
	//결제 메인창으로 가기
	@RequestMapping (value="approvalList", method=RequestMethod.GET)
	public String approvalList() {
		return "approval/approvalList";
	}
	
	//결제 쓰기 폼으로
	@RequestMapping (value="writeApproval", method=RequestMethod.GET)
	public String writeApproval() {
		logger.debug("go writeApproval");
		return "approval/writeApproval";
	}
	
	
	//결제 쓰기 폼으로
	@RequestMapping (value="approvalLineSet", method=RequestMethod.GET)
	public String approvalLineSet() {
		logger.debug("go approvalLineSet");
		return "approval/approvalLineSet";
	}
	
	
	
	//결재선내 결재자 지정하는창 열기
	@RequestMapping (value="openSelectApprovaler", method=RequestMethod.GET)
	public String openSelectApprovaler(Model model, String num) {
		logger.debug("go openSelectApprovaler para : {}", num);
		ArrayList<UserVO> userList = approvalDAO.findUser();
		logger.debug("userList = {}", userList);
		model.addAttribute("userList", userList);
		model.addAttribute("num", num);
		
		return "approval/selectApprovaler";
	}

	
	//결재선 저장
	@RequestMapping (value="insertApprovalLine", method=RequestMethod.POST)
	public String insertApprovalLine(ApprovalLineVO approvalLine, HttpSession session) {
		logger.debug("insertApprovalLine para : {}", approvalLine);
		
		String user_id = (String)session.getAttribute("userId");
		logger.debug("결재선 저장 id : {}", user_id);
		approvalLine.setUser_id(user_id);
		
		approvalDAO.insertApprovalLine(approvalLine);
		
		return "approval/selectApprovaler";
	}
}
