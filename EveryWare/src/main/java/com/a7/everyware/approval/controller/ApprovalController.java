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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.a7.everyware.approval.dao.ApprovalDAO;
import com.a7.everyware.approval.vo.ApprovalHistoryVO;
import com.a7.everyware.approval.vo.ApprovalLineVO;
import com.a7.everyware.approval.vo.ApprovalVO;
import com.a7.everyware.board.util.FileService;
import com.a7.everyware.user.vo.UserVO;



//게시판 컨트롤러
@Controller
@RequestMapping(value="approval")
public class ApprovalController {

	private static final Logger logger = LoggerFactory.getLogger(ApprovalController.class);
	
	final String uploadPath = "/eApprovalFile";	//전자결재 첨부파일 저장 루트
	
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

	
	
	//결재선만들기 페이지 열기
	@RequestMapping (value="openCreateApprovalLine", method=RequestMethod.GET)
	public String openCreateApprovalLine() {
		logger.debug("go openCreateApprovalLine");
		
		
		return "approval/createApprovalLine";
	}
	
	//결재선 불러오기 페이지 열기
	@RequestMapping (value="openLoadApprovalLine", method=RequestMethod.GET)
	public String openLoadApprovalLine(HttpSession session, Model model) {
		logger.debug("go openLoadApprovalLine");
		
		String user_id = (String) session.getAttribute("userId");
		logger.debug("결재선 불러오기 id : {}", user_id);
		
		ArrayList<ApprovalLineVO> approvalLineList =  approvalDAO.findApprovalLine(user_id);
		
		model.addAttribute("approvalLineList", approvalLineList);
		return "approval/loadApprovalLine";
	}
	
	
	
	//전자결재 등록
	@RequestMapping (value="insertApproval", method=RequestMethod.POST)
	public String insertApproval(MultipartFile upload, HttpSession session, ApprovalVO approval) {
		logger.debug("insertApproval para : {}", approval);
		logger.debug("DDD : {}", upload);
		//로그인 아이디 세팅
		String user_id = (String) session.getAttribute("userId");
		approval.setUser_id(user_id);
		
		//첨부파일
		//첨부파일이 있는 경우 지정된 경로(uploadPath)에 저장하고, 원본, 저장된 파일명 객체에 세팅
		if(!upload.isEmpty()){
			String eApproval_saved = FileService.saveFile(upload, uploadPath);
			approval.seteApproval_original(upload.getOriginalFilename());
			approval.seteApproval_saved(eApproval_saved);
			logger.debug("첨부파일 있는 전자결재 객체 정보 {}", approval);
		}
		
		
		logger.debug("전자결재 등록 직전 {}", approval);
		
		//DAO이용해서 전자결재 등록하기!!!!!
		approvalDAO.insertApproval(approval);
		
		return "redirect:approvalList";
	}
	
	
	//결재승인 페이지로 
	@RequestMapping (value="myApproval", method=RequestMethod.GET)
	public String approvalPass(HttpSession session, ApprovalVO approval, Model model) {
		logger.debug("go myApproval");

		//로그인 아이디 세팅
		String user_id = (String) session.getAttribute("userId");
		
		//내가 결재라인에 올라와 있는 결재
		ArrayList<ApprovalVO> approvalList_toMe = approvalDAO.findApprovalToMe(user_id);
		
		//내가 이미 결재한 문서
		ArrayList<ApprovalVO> approvalList_past = new ArrayList<ApprovalVO>();
		//지금 내가 결재 해야될 문서
		ArrayList<ApprovalVO> approvalList_now = new ArrayList<ApprovalVO>();
		//결재 해야될 문서(아직 앞라인에서 승인이 안난 문서)
		ArrayList<ApprovalVO> approvalList_future = new ArrayList<ApprovalVO>();
		
		
		//approvalList_toMe를  ( past / now / future )로 나누는 과정
		for(ApprovalVO app : approvalList_toMe){
			
			//결재 문서에 결재라인 불러오기
			ApprovalLineVO line = approvalDAO.findApprovalLineById2(app.geteApprovalLine_id());
			
			//결재 문서의 히스토리 불러오기
			ArrayList<ApprovalHistoryVO> approvalHistoryList = approvalDAO.findApprovalHistory(app.geteApproval_id());
			
			//내가 몇번째 결재자인지에 대한 정보 담는 변수
			int order = 0;
			if(line.geteApprovalLine_person1().equals(user_id)){
				
				order = 1;
			}else if(line.geteApprovalLine_person2().equals(user_id)){
				
				order = 2;
			}else{
				
				order = 3;
			}
			logger.debug("person1{}", line.geteApprovalLine_person1());
			logger.debug("person2{}", line.geteApprovalLine_person2());
			logger.debug("person3{}", line.geteApprovalLine_person3());
			logger.debug("login_id{}", user_id);
			
			logger.debug("order:{}", order);
			
			switch (order) {
				
			case 1:	//첫번째 결재자인 경우
				//결재 문서에대한 히스토리
				
				//내가 이결재에대해 승인 했는지 여부
				boolean isApproval = false;
				for(ApprovalHistoryVO history : approvalHistoryList){
					if(history.getUser_id().equals(line.geteApprovalLine_person1()) && history.geteHistory_content().equals("승인")){
						//내가 승인 한경우
						isApproval = true;
						logger.debug("order:1 person1 승인!");
						break;
					}
				}
				
				if(isApproval){
					//내가 승인했다면 past에
					approvalList_past.add(app);
				}else{
					//승인 안했다면 now에
					approvalList_now.add(app);
				}
				
				break;
				
			case 2:
				
				//첫번째 결재자의 승인 여부
				boolean isApproval2_1 = false;
				//두번째 결재자의 승인 여부
				boolean isApproval2_2 = false;
				
				for(ApprovalHistoryVO history : approvalHistoryList){
					if(history.getUser_id().equals(line.geteApprovalLine_person1()) && history.geteHistory_content().equals("승인")){
						//첫번째 결재자 승인
						isApproval2_1 = true;
						break;
					}
				}
				
				for(ApprovalHistoryVO history : approvalHistoryList){
					if(history.getUser_id().equals(line.geteApprovalLine_person2()) && history.geteHistory_content().equals("승인")){
						//첫번째 결재자 승인
						isApproval2_2 = true;
						break;
					}
				}
				
				
				if(!isApproval2_1){
					//첫번재 결재자가 승인을 안한경우
					approvalList_future.add(app);
				}else{
					if(isApproval2_2){
						//나도 승인 한 경우
						approvalList_past.add(app);
					}else{
						//나는 아직 승인 안한경우
						approvalList_now.add(app);
					}
				}
				
						
				break;
							
			case 3:
				
				//두번째 결재자의 승인 여부
				boolean isApproval3_2 = false;
				//세번째 결재자의 승인 여부
				boolean isApproval3_3 = false;
				
				
				
				for(ApprovalHistoryVO history : approvalHistoryList){
					if(history.getUser_id().equals(line.geteApprovalLine_person2()) && history.geteHistory_content().equals("승인")){
						//두번째 결재자 승인
						isApproval3_2 = true;
						break;
					}
				}
				
				for(ApprovalHistoryVO history : approvalHistoryList){
					if(history.getUser_id().equals(line.geteApprovalLine_person3()) && history.geteHistory_content().equals("승인")){
						//세번째 결재자 승인
						isApproval3_3 = true;
						break;
					}
				}
				
				
				if(!isApproval3_2){
					//전 결재자가 승인 안한경우
					approvalList_future.add(app);
				
				}else{
					if(isApproval3_3){
						//내가 승인 한 경우
						approvalList_past.add(app);
					
					}else{
						//내가 아직 승인 안한경우
						approvalList_now.add(app);
					}
				}
				
				break;
			
			}//switch
			
			
			
			
			
			
		}//for
		
		
		ArrayList<ApprovalVO> approvalList_fromMe = approvalDAO.findApprovalFromMe(user_id);
		
		logger.debug("내가 승인한 결재 : {}", approvalList_past);
		logger.debug("내가 봐야할 결재 : {}", approvalList_now);
		logger.debug("내가 승인할 결재 : {}", approvalList_future);
		logger.debug("내가 올린 결재 : {}", approvalList_fromMe);
		
		
		//모델에 담은 객체들
		model.addAttribute("approvalList_fromMe", approvalList_fromMe);
		
		model.addAttribute("approvalList_now", approvalList_now);
		model.addAttribute("approvalList_future", approvalList_future);
		model.addAttribute("approvalList_past", approvalList_past);
		
		
		
		return "approval/myApproval";
	}//myApproval
	
	
	
	
	
	
	
	
	
	//Ajax 결재선 라인 불러오기 by 결재선id
	@ResponseBody
	@RequestMapping(value = "loadApprovalLine_aj", method = RequestMethod.POST)
	public ApprovalLineVO loadApprovalLine_aj(Integer eApprovalLine_id) {	
		
		logger.debug("loadApprovalLine_aj para : {}", eApprovalLine_id);
		// eApprovalLine_id 로 ApprovalLineVO 받아오는기능 쿼리부터 구현해야됨!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1
		
		ApprovalLineVO line = approvalDAO.findApprovalLineById(eApprovalLine_id);
	
		return line;
	}
	
	//결재선 저장
	@ResponseBody
	@RequestMapping (value="insertApprovalLine_aj", method=RequestMethod.POST)
	public void insertApprovalLine(ApprovalLineVO approvalLine, HttpSession session) {
		logger.debug("insertApprovalLine_ajax para : {}", approvalLine);
		
		String user_id = (String) session.getAttribute("userId");
		logger.debug("결재선 저장 id : {}", user_id);
		approvalLine.setUser_id(user_id);
		
		approvalDAO.insertApprovalLine(approvalLine);
		
	}
	
}
