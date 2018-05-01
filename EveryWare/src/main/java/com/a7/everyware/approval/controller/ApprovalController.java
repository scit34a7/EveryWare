package com.a7.everyware.approval.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.a7.everyware.approval.dao.ApprovalDAO;
import com.a7.everyware.approval.vo.ApprovalFormatVO;
import com.a7.everyware.approval.vo.ApprovalHistoryVO;
import com.a7.everyware.approval.vo.ApprovalLineVO;
import com.a7.everyware.approval.vo.ApprovalVO;
import com.a7.everyware.board.util.FileService;
import com.a7.everyware.push.dao.PushDAO;
import com.a7.everyware.push.vo.PushVO;
import com.a7.everyware.user.vo.UserVO;



//게시판 컨트롤러
@Controller
@RequestMapping(value="approval")
public class ApprovalController {

	private static final Logger logger = LoggerFactory.getLogger(ApprovalController.class);
	
	final String uploadPath = "/eApprovalFile";	//전자결재 첨부파일 저장 루트
	
	@Autowired
	ApprovalDAO approvalDAO;
	@Autowired
	PushDAO pushDAO;
	
	
	
	
	//결제 메인창으로 가기
	@RequestMapping (value="approvalList", method=RequestMethod.GET)
	public String approvalList() {
		return "approval/approvalList";
	}
	
	//결제 쓰기 폼으로
	@RequestMapping (value="writeApproval", method=RequestMethod.GET)
	public String writeApproval(Model model, HttpSession session) {
		logger.debug("go writeApproval");
		//로그인 아이디 셋팅
		String user_id = (String) session.getAttribute("userId");
		ArrayList<ApprovalFormatVO> formatList2 = approvalDAO.findFormat(user_id);
		
		ArrayList<ApprovalFormatVO> formatList = new ArrayList<ApprovalFormatVO>();
		
		for(ApprovalFormatVO af : formatList2){
			af.setApprovalFormat_content2(new String(af.getApprovalFormat_content(), StandardCharsets.UTF_8));
			formatList.add(af);
		}
		
		model.addAttribute("formatList", formatList);
		
		logger.debug("formatList : {}", formatList);
		
		return "approval/writeApproval";
	}
	
	
	//결제 쓰기 폼으로 (양식 ver)
	@RequestMapping (value="loadFormat", method=RequestMethod.GET)
	public String loadFormat(Model model, HttpSession session, 
			@RequestParam(value="approvalFormat_id", defaultValue="0") int approvalFormat_id) {
		logger.debug("load format para : {}", approvalFormat_id);
		//로그인 아이디 셋팅
		String user_id = (String) session.getAttribute("userId");
		ArrayList<ApprovalFormatVO> formatList2 = approvalDAO.findFormat(user_id);
		
		ArrayList<ApprovalFormatVO> formatList = new ArrayList<ApprovalFormatVO>();
		
		for(ApprovalFormatVO af : formatList2){
			af.setApprovalFormat_content2(new String(af.getApprovalFormat_content(), StandardCharsets.UTF_8));
			if(af.getApprovalFormat_id() == approvalFormat_id){
				logger.debug("title : {}",af.getApprovalFormat_title());
				logger.debug("content : {}",af.getApprovalFormat_content2());
				model.addAttribute("title", af.getApprovalFormat_title());
				model.addAttribute("content", af.getApprovalFormat_content2());
			}
			formatList.add(af);
			
		}
		
		
		
		model.addAttribute("formatList", formatList);
		
		logger.debug("formatList : {}", formatList);
		
		return "approval/writeApproval";
	}
	
	
	
	//결제 쓰기 폼으로
	@RequestMapping (value="approvalLineSet", method=RequestMethod.GET)
	public String approvalLineSet() {
		logger.debug("go approvalLineSet");
		return "approval/approvalLineSet";
	}
	
	//결재 양식 폼으로
	@RequestMapping (value="approvalFormat", method=RequestMethod.GET)
	public String approvalFormat() {
		logger.debug("go approvalFormat");
		return "approval/approvalFormat";
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
	public String insertApproval(MultipartFile upload, HttpSession session, ApprovalVO approval, String eApproval_content_string) {
		logger.debug("insertApproval para : {}", approval);
		logger.debug("DDD : {}", upload);
		//로그인 아이디 세팅
		String user_id = (String) session.getAttribute("userId");
		approval.setUser_id(user_id);
		logger.debug("아이디 : {}", user_id);
		
		
		//파일 사이즈 셋팅
		approval.seteApproval_fileSize( (int) ( upload.getSize() / 1024 ) );
		
		//eApproval_content byte[]로 변환
		approval.seteApproval_content(eApproval_content_string.getBytes());
		
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
		
		
		//첫 번째 결재자에게 푸쉬 보내기
		ApprovalLineVO line = approvalDAO.findApprovalLineById2(approval.geteApprovalLine_id());
		//UserVO person1 = approvalDAO.findUserById2(line.geteApprovalLine_person1());
		
		PushVO push = new PushVO();
		
		//push_type
		push.setPush_type("결재");
		//push_title
		push.setPush_title("확인해야할 결재가 있습니다.");
		//user_id
		push.setUser_id(line.geteApprovalLine_person1());
		//dept_name
		push.setDept_name("");
		
		pushDAO.addPush(push);
		
		//푸쉬 끝
		
		return "redirect:myApproval";
	}
	
	
	//결재승인 페이지로 
	@RequestMapping (value="myApproval", method=RequestMethod.GET)
	public String myApproval(HttpSession session, Model model) {
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
		//반려된 문서
		ArrayList<ApprovalVO> approvalList_ban = new ArrayList<ApprovalVO>();
		
		//approvalList_toMe를  ( past / now / future )로 나누는 과정
		for(ApprovalVO app : approvalList_toMe){
			
			//진행도
			//진행도를 체크하기위해 히스토리 가져오기
			ArrayList<ApprovalHistoryVO> approvalHistoryList2 = approvalDAO.findApprovalHistory(app.geteApproval_id());
			int count = 0;		//진행도 계산을위해 승인 받은 기록 확인
			for(ApprovalHistoryVO history : approvalHistoryList2){
				if(history.geteHistory_content().equals("승인")){
					count ++;
				}
			}
			
			int progress = count * 33;		//진행률
			if(count == 3){
				progress = 100;
			}
			app.seteApproval_saved(Integer.toString(progress));
			//진행도 끝
			
			
			
			
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
				
			case 1:
				
				//첫번째 결재자인 경우
				//결재 문서에대한 히스토리
				logger.debug("order:{}", order);
				if(approvalHistoryList == null || approvalHistoryList.isEmpty()){
					logger.debug("111111111111111111111111111");
					approvalList_now.add(app);
					break;
				}
				
				String str = "";
				
				for(ApprovalHistoryVO history : approvalHistoryList){
					
					if(!user_id.equals(history.getUser_id()) && history.geteHistory_content().equals("반려")){
						continue;
					}
					
					
					logger.debug("history : {}", history);
					
					
					
					if(history.getUser_id().equals(line.geteApprovalLine_person1()) && history.geteHistory_content().equals("승인")){
						//내가 승인 한경우
						str = "승인";
						//approvalList_past.add(app);
						break;
					}else if(history.getUser_id().equals(line.geteApprovalLine_person1()) && history.geteHistory_content().equals("반려")){
						//내가 반려 한경우
						str = "반려";
						//approvalList_future.add(app);
						break;
					}else if(history.getUser_id().equals(line.geteApprovalLine_person1()) && history.geteHistory_content().equals("거절")){
						//내가 거절 한경우
						str = "거절";
						//approvalList_past.add(app);
						break;
					}else{
						
						//approvalList_now.add(app);
					}
			
					
				}
				
				if(str.equals("승인")){
					approvalList_past.add(app);
				}else if(str.equals("반려")){
					approvalList_future.add(app);
				}else if(str.equals("거절")){
					approvalList_past.add(app);
				}else{
					approvalList_now.add(app);
				}
			
				
				
				break;
				
			case 2:
				
				//첫번째 결재자의 승인 여부
				boolean isApproval2_1 = false;
				//두번째 결재자(나)의 승인 형태
				String isApproval2_2 = "";
				
				for(ApprovalHistoryVO history : approvalHistoryList){
					
					if(!user_id.equals(history.getUser_id()) && history.geteHistory_content().equals("반려")){
						continue;
					}
					
					
					if(history.getUser_id().equals(line.geteApprovalLine_person1()) && history.geteHistory_content().equals("승인")){
						//첫번째 결재자 승인
						isApproval2_1 = true;
						break;
					}
				}
				
				for(ApprovalHistoryVO history : approvalHistoryList){
					
					if(!user_id.equals(history.getUser_id()) && history.geteHistory_content().equals("반려")){
						continue;
					}
					
					
					if(history.getUser_id().equals(line.geteApprovalLine_person2()) && history.geteHistory_content().equals("승인")){
						//내가 승인
						isApproval2_2 = "승인";
						break;
					}
					
					if(history.getUser_id().equals(line.geteApprovalLine_person2()) && history.geteHistory_content().equals("반려")){
						//내가 반려
						isApproval2_2 = "반려";
						break;
					}
					
					if(history.getUser_id().equals(line.geteApprovalLine_person2()) && history.geteHistory_content().equals("거절")){
						//내가 거절
						isApproval2_2 = "거절";
						break;
					}
					
					
					
					
				}
				
				
				if(!isApproval2_1){
					//첫번재 결재자가 승인을 안한경우
					approvalList_future.add(app);
				}else{
					if(isApproval2_2.equals("반려")){
						//내가 반려 한 경우
						approvalList_future.add(app);
						
					}else if(isApproval2_2.equals("거절") || isApproval2_2.equals("승인")){
						//내가 승인, 거절
						
						approvalList_past.add(app);
					}else{
						
						approvalList_now.add(app);
					}
				}
				
						
				break;
							
			case 3:
				
				//두번째 결재자의 승인 여부
				boolean isApproval3_2 = false;
				//세번째 결재자의 승인 여부
				String isApproval3_3 = "";
				
				
				
				for(ApprovalHistoryVO history : approvalHistoryList){
					
					if(!user_id.equals(history.getUser_id()) && history.geteHistory_content().equals("반려")){
						continue;
					}
					
					
					if(history.getUser_id().equals(line.geteApprovalLine_person2()) && history.geteHistory_content().equals("승인")){
						//두번째 결재자 승인
						isApproval3_2 = true;
						break;
					}
				}
				
				for(ApprovalHistoryVO history : approvalHistoryList){
					
					
					if(!user_id.equals(history.getUser_id()) && history.geteHistory_content().equals("반려")){
						continue;
					}
					
					if(history.getUser_id().equals(line.geteApprovalLine_person3()) && history.geteHistory_content().equals("승인")){
						//세번째(나) 결재자 승인
						isApproval3_3 = "승인";
						break;
					}
					
					if(history.getUser_id().equals(line.geteApprovalLine_person3()) && history.geteHistory_content().equals("반려")){
						//세번째(나) 결재자 승인
						isApproval3_3 = "반려";
						break;
					}
					
					if(history.getUser_id().equals(line.geteApprovalLine_person3()) && history.geteHistory_content().equals("거절")){
						//세번째(나) 결재자 승인
						isApproval3_3 = "거절";
						break;
					}
				}
				
				
				if(!isApproval3_2){
					//전 결재자가 승인 안한경우
					approvalList_future.add(app);
				
				}else{
					if(isApproval3_3.equals("반려")){
						//반려
						approvalList_future.add(app);
					
					}else if(isApproval3_3.equals("승인") || isApproval3_3.equals("거절")){
						//승인, 거절
						approvalList_past.add(app);
					}else{
						approvalList_now.add(app);
					}
				}
				
				break;
			
			}//switch
			
			
			
			
			
			
		}//for
		
		
		ArrayList<ApprovalVO> approvalList_fromMe = approvalDAO.findApprovalFromMe(user_id);
		
		
		for(ApprovalVO app : approvalList_fromMe){
			//진행도
			//진행도를 체크하기위해 히스토리 가져오기
			ArrayList<ApprovalHistoryVO> approvalHistoryList3 = approvalDAO.findApprovalHistory(app.geteApproval_id());
			int count = 0;		//진행도 계산을위해 승인 받은 기록 확인
			for(ApprovalHistoryVO history : approvalHistoryList3){
				if(history.geteHistory_content().equals("승인")){
					count ++;
				}
			}
			
			int progress = count * 33;		//진행률
			if(count == 3){
				progress = 100;
			}
			app.seteApproval_saved(Integer.toString(progress));
			//진행도 끝
		}
		
		
		//반려시 
		for(ApprovalVO app : approvalList_fromMe){
			ArrayList<ApprovalHistoryVO> hlist = approvalDAO.findApprovalHistory(app.geteApproval_id());
			for(ApprovalHistoryVO h : hlist){
				
				if(h.geteHistory_content().equals("반려")){
					
					app.seteApproval_status("반려");
					approvalList_ban.add(app);
				}
			}
			
		}
		
		
		logger.debug("내가 승인한 결재 : {}", approvalList_past);
		logger.debug("내가 봐야할 결재 : {}", approvalList_now);
		logger.debug("내가 승인할 결재 : {}", approvalList_future);
		logger.debug("내가 올린 결재 : {}", approvalList_fromMe);
		logger.debug("반려된 결재 : {}", approvalList_ban);
		
		//모델에 담은 객체들
		model.addAttribute("approvalList_fromMe", approvalList_fromMe);
		
		model.addAttribute("approvalList_now", approvalList_now);
		model.addAttribute("approvalList_future", approvalList_future);
		model.addAttribute("approvalList_past", approvalList_past);
		model.addAttribute("approvalList_ban", approvalList_ban);
		
		
		
		return "approval/myApproval";
	}//myApproval
	
	
	
	
	//내가 승인해야할 결제
		@RequestMapping (value="pushApproval", method=RequestMethod.GET)
		public String pushApproval(HttpSession session, ApprovalVO approval, Model model) {
			logger.debug("pushApproval");

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
			//반려된 문서
			ArrayList<ApprovalVO> approvalList_ban = new ArrayList<ApprovalVO>();
			
			//approvalList_toMe를  ( past / now / future )로 나누는 과정
			for(ApprovalVO app : approvalList_toMe){
				
				//진행도
				//진행도를 체크하기위해 히스토리 가져오기
				ArrayList<ApprovalHistoryVO> approvalHistoryList2 = approvalDAO.findApprovalHistory(app.geteApproval_id());
				int count = 0;		//진행도 계산을위해 승인 받은 기록 확인
				for(ApprovalHistoryVO history : approvalHistoryList2){
					if(history.geteHistory_content().equals("승인")){
						count ++;
					}
				}
				
				int progress = count * 33;		//진행률
				if(count == 3){
					progress = 100;
				}
				app.seteApproval_saved(Integer.toString(progress));
				//진행도 끝
				
				
				
				
				//결재 문서에 결재라인 불러오기
				ApprovalLineVO line = approvalDAO.findApprovalLineById2(app.geteApprovalLine_id());
				
				logger.debug("Line : {}", line);
				
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
				
					case 1:	
						//첫번째 결재자인 경우
						//결재 문서에대한 히스토리
						logger.debug("order:1");
						
						for(ApprovalHistoryVO history : approvalHistoryList){
							
							
							
							
							logger.debug("history : {}", history);
							
							if(history.getUser_id().equals(line.geteApprovalLine_person1()) && history.geteHistory_content().equals("승인")){
								//내가 승인 한경우
								logger.debug("{} 번 결재를 c");
								approvalList_past.add(app);
	
							}else if(history.getUser_id().equals(line.geteApprovalLine_person1()) && history.geteHistory_content().equals("반려")){
								//내가 반려 한경우
								
								approvalList_future.add(app);
								
							}else if(history.getUser_id().equals(line.geteApprovalLine_person1()) && history.geteHistory_content().equals("거절")){
								//내가 거절 한경우
								
								approvalList_past.add(app);
								
							}else{
								
								approvalList_now.add(app);
							}
							
							
						}
					
						
						break;
					
				case 2:
					logger.debug("order:2");
					//첫번째 결재자의 승인 여부
					boolean isApproval2_1 = false;
					//두번째 결재자(나)의 승인 형태
					String isApproval2_2 = "";
					
					
					
					for(ApprovalHistoryVO history : approvalHistoryList){
						if(history.getUser_id().equals(line.geteApprovalLine_person1()) && history.geteHistory_content().equals("승인")){
							//첫번째 결재자 승인
							isApproval2_1 = true;
							break;
						}
					}
					
					for(ApprovalHistoryVO history : approvalHistoryList){
						
						
						
						if(history.getUser_id().equals(line.geteApprovalLine_person2()) && history.geteHistory_content().equals("승인")){
							//내가 승인
							isApproval2_2 = "승인";
							break;
						}else if(history.getUser_id().equals(line.geteApprovalLine_person2()) && history.geteHistory_content().equals("반려")){
							//내가 반려
							isApproval2_2 = "반려";
							break;
						}else if(history.getUser_id().equals(line.geteApprovalLine_person2()) && history.geteHistory_content().equals("거절")){
							//내가 거절
							isApproval2_2 = "거절";
							break;
						}
						
						
						
						
					}
					
					
					if(!isApproval2_1){
						//첫번재 결재자가 승인을 안한경우
						approvalList_future.add(app);
					}else{
						if(isApproval2_2.equals("반려")){
							//내가 반려 한 경우
							approvalList_future.add(app);
							
						}else if(isApproval2_2.equals("거절")){
							//거절
							approvalList_past.add(app);
						}else{
							//내가 결제할 차례
							approvalList_now.add(app);
						}
					}
					
							
					break;
								
				case 3:
					logger.debug("order:3");
					//두번째 결재자의 승인 여부
					boolean isApproval3_2 = false;
					//세번째 결재자의 승인 여부
					String isApproval3_3 = "";
					
					
					
					for(ApprovalHistoryVO history : approvalHistoryList){
						if(history.getUser_id().equals(line.geteApprovalLine_person2()) && history.geteHistory_content().equals("승인")){
							//두번째 결재자 승인
							isApproval3_2 = true;
							break;
						}
					}
					
					for(ApprovalHistoryVO history : approvalHistoryList){
						
						
						
						if(history.getUser_id().equals(line.geteApprovalLine_person3()) && history.geteHistory_content().equals("승인")){
							//세번째(나) 결재자 승인
							isApproval3_3 = "승인";
							break;
						}else if(history.getUser_id().equals(line.geteApprovalLine_person3()) && history.geteHistory_content().equals("반려")){
							//세번째(나) 결재자 승인
							isApproval3_3 = "반려";
							break;
						}else if(history.getUser_id().equals(line.geteApprovalLine_person3()) && history.geteHistory_content().equals("거절")){
							//세번째(나) 결재자 승인
							isApproval3_3 = "거절";
							break;
						}
					}
					
					
					if(!isApproval3_2){
						//전 결재자가 승인 안한경우
						approvalList_future.add(app);
					
					}else{
						if(isApproval3_3.equals("반려")){
							//반려
							approvalList_future.add(app);
						
						}else if(isApproval3_3.equals("거절")){
							//거절
							approvalList_past.add(app);
						}else{
							approvalList_now.add(app);
						}
					}
					
					break;
				
				default:
					logger.debug("switch 디폴트");
				
				}//switch
				
				
				
				
				
				
			}//for
			
			
			ArrayList<ApprovalVO> approvalList_fromMe = approvalDAO.findApprovalFromMe(user_id);
			
			
			for(ApprovalVO app : approvalList_fromMe){
				//진행도
				//진행도를 체크하기위해 히스토리 가져오기
				ArrayList<ApprovalHistoryVO> approvalHistoryList3 = approvalDAO.findApprovalHistory(app.geteApproval_id());
				int count = 0;		//진행도 계산을위해 승인 받은 기록 확인
				for(ApprovalHistoryVO history : approvalHistoryList3){
					if(history.geteHistory_content().equals("승인")){
						count ++;
					}
				}
				
				int progress = count * 33;		//진행률
				if(count == 3){
					progress = 100;
				}
				app.seteApproval_saved(Integer.toString(progress));
				//진행도 끝
			}
			
			
			//반려시 
			for(ApprovalVO app : approvalList_fromMe){
				ArrayList<ApprovalHistoryVO> hlist = approvalDAO.findApprovalHistory(app.geteApproval_id());
				for(ApprovalHistoryVO h : hlist){
					if(h.geteHistory_content().equals("반려")){
						
						app.seteApproval_status("반려");
						approvalList_ban.add(app);
					}
				}
				
			}
			
			
			
			logger.debug("내가 봐야할 결재 : {}", approvalList_now);
			
			logger.debug("반려된 결재 : {}", approvalList_ban);
			
			//모델에 담은 객체들
			
			
			model.addAttribute("approvalList_now", approvalList_now);
			
			model.addAttribute("approvalList_ban", approvalList_ban);
			
			
			
			return "approval/myApproval";
		}//myApproval
	
	
	
	
	
	//전자결재문서 읽기 창으로
	@RequestMapping (value="readApproval", method=RequestMethod.GET)
	public String readApproval(Model model, int eApproval_id,
			@RequestParam(value="isApproval", defaultValue="false") boolean isApproval
			, @RequestParam(value="ban", defaultValue="false") boolean ban) {
		
		logger.debug("readApproval para : eApproval_id={}, isApproval={}", eApproval_id, isApproval);
		
		ApprovalVO approval = approvalDAO.findApprovalById(eApproval_id);
		
		//결재라인 객체에 정보 담기
		ApprovalLineVO approvalLine = approvalDAO.findApprovalLineById(approval.geteApprovalLine_id());
		String status = approvalDAO.findStatusById(approval.getUser_id());
		approvalLine.setUser_id(status);
		
		
		//첨부파일의 확장자 알아내 모델에 저장(jsp에서 아이콘 보여주기위해서)
		if(approval.geteApproval_original() != null){
			String original = approval.geteApproval_original();
			
			
			
			// "."을 기준으로 자른 String 기준 배열중 제일 마지막이 확장자
			String[] stringArray = original.split("\\.");		//특수문자는 앞에 \\ 붙여줘야한다 ex> ^^ 는 \\^\\^
			logger.debug("spilt!!!!!!!!!! : {}", stringArray.length);

			
			switch(stringArray[stringArray.length - 1].toLowerCase()){
			
			case "doc": case "docx":
				//워드파일
				model.addAttribute("attachedType", "fa fa-file-word-o");
				break;
			
			case "ppt": case "pptx":
				//파워포인트
				model.addAttribute("attachedType", "fa fa-file-powerpoint-o");
				break;
				
			case "xls": case "xlsx":
				///엑셀
				model.addAttribute("attachedType", "fa fa-file-excel-o");
				break;
				
			case "zip": case "rar": case "7z": case "egg": case "alz":
				//압축파일
				model.addAttribute("attachedType", "fa fa-file-zip-o");
				break;
				
			case "pdf":
				//pdf
				model.addAttribute("attachedType", "fa fa-file-pdf-o");
				
				break;
				
			case "png": case "jpg": case "jpeg": case "gif": case "bmp":
				//그림
				model.addAttribute("attachedType", "fa fa-file-image-o");
				break;
				
			case "wav": case "mp3": case "wma":
				//소리
				model.addAttribute("attachedType", "fa fa-file-sound-o");
				break;
				
			case "mp4": case "avi": case "mpg": case "mpeg": case "wmv": case "flv": case "mkv":
				//동영상
				model.addAttribute("attachedType", "fa fa-file-movie-o");
				break;
				
			case "java": case "html": case "jsp": case "xml":
				//코드
				model.addAttribute("attachedType", "fa fa-file-code-o");
				break;
			
				
			}
		}
		
		
		//진행도
		//진행도를 체크하기위해 히스토리 가져오기
		ArrayList<ApprovalHistoryVO> approvalHistoryList = approvalDAO.findApprovalHistory(eApproval_id);
		int count = 0;		//진행도 계산을위해 승인 받은 기록 확인
		for(ApprovalHistoryVO history : approvalHistoryList){
			if(history.geteHistory_content().equals("승인")){
				count ++;
			}
		}
		
		for(ApprovalHistoryVO history : approvalHistoryList){
			if(history.geteHistory_content().equals("반려")){
				model.addAttribute("reason", history.geteHistory_reason());
				
			}
		}
		
		int progress = count * 33;		//진행률
		if(count == 3){
			progress = 100;
		}
		//진행도 끝 (모델에 저장은 따로)
		
		
		approval.byteToString();
		
		
		logger.debug("가져온 전자문서 객체 : {}", approval);
		model.addAttribute("approval", approval);			//읽고자하는 전자결재 객체
		model.addAttribute("isApproval", isApproval);		//전자결재를 현재 승인 할 수 있는지의 여부
		model.addAttribute("approvalLine", approvalLine);	//결재라인 
		model.addAttribute("progress", progress);			//진행률
		model.addAttribute("ban", ban);						//반려 여부	
		
		
		return "approval/readApproval";
	}
	
	
	
	//전자결재문서 읽기 창으로
	@RequestMapping (value="insertHistory", method=RequestMethod.POST)
	public String insertHistory(HttpSession session
			, @RequestParam(value="type", defaultValue="0") int type
			, @RequestParam(value="eApproval_id", defaultValue="0") int eApproval_id
			, String reason) {
		
		logger.debug("insertHistory para : type={}, eApproval_id={}", type, eApproval_id);
		
		//로그인한 아이디
		String user_id = (String) session.getAttribute("userId");
		
		//등록할 History 객체 생성
		ApprovalHistoryVO history = new ApprovalHistoryVO();
		
		//속성 셋팅
		history.setUser_id(user_id);
		history.seteApproval_id(eApproval_id);
		history.seteHistory_reason(reason);
		
		
		
		//eHistory_content 셋팅
		switch (type) {
		case 1:
			//승인
			history.seteHistory_content("승인");
			
			break;
			
		case 2:
			//거절
			history.seteHistory_content("거절");
			break;
			
		case 3:
			//반려
			history.seteHistory_content("반려");
			break;

		default:
			break;
		}
		
		logger.debug("insert 직전 history객체 : {}", history);
		
		approvalDAO.insertHistory(history);
		
		
		ApprovalVO approval = approvalDAO.findApprovalById(eApproval_id);
		
		ApprovalLineVO line = approvalDAO.findApprovalLineById2(approval.geteApprovalLine_id());
		
		
		PushVO push = new PushVO();
		
		//알람 받을 사람의 id
		String id = approval.getUser_id();
		logger.debug("2222222222222222222222222222222222222222222", id);
		UserVO u = approvalDAO.findUserById2(id);
		
		push.setUser_id(id);
		push.setPush_type("결재");
		push.setDept_name("");
		
		
		
		//푸쉬 알람
		switch (type) {
		case 1:
			//승인
			push.setPush_title("확인해야할 결재가 있습니다.");
			
			//승인일 경우는 push의 user_id가 다르다.
			
			//결재한사람(로그인아이디)가 person1이면 person2가 push의 user_id
			if(user_id.equals(line.geteApprovalLine_person1())){
				push.setUser_id(line.geteApprovalLine_person2());
			
			}else if(user_id.equals(line.geteApprovalLine_person2())){
				//person2가 승인
				push.setUser_id(line.geteApprovalLine_person3());
			
			}else{
				//최종 결재
				push.setUser_id(u.getUser_id());
				push.setPush_title("결재가 최종 승인 되었습니다.");
				
			}
			
			
	
			break;

		case 2:
			//거절
			push.setPush_title("결재가 거절되었습니다.");
			break;
			
		case 3:
			//반려
			push.setPush_title("결재가 반려되었습니다.");
			
		}
		
		logger.debug("push 등록 직전 : {}", push);
		pushDAO.addPush(push);
		
		
		//푸쉬 끝
		
		
		return "redirect:myApproval";
	}
	
	
	
	
	//전자결재문서 양식 저장(insert)
	@RequestMapping (value="insertApprovalFormat", method=RequestMethod.POST)
	public String insertApprovalFormat(ApprovalFormatVO format, HttpSession session) {
		logger.debug("para : {}", format);
		
		//String을 byte[]로 변환
		format.setApprovalFormat_content(format.getApprovalFormat_content2().getBytes());
		//로그인 아이디 셋팅
		String user_id = (String) session.getAttribute("userId");
		format.setUser_id(user_id);
		
		logger.debug("insert직전 : {}", format);
		approvalDAO.insertFormat(format);
		
		
		return "redirect:writeApproval";
	}
	
	
	
	//반려된 결재 수정 페이지로
	@RequestMapping (value="editApproval", method=RequestMethod.GET)
	public String editApproval2(int eApproval_id, Model model) {
		logger.debug("go editApproval , para : eApproval_id = {}", eApproval_id);
		ApprovalVO approval = approvalDAO.findApprovalById(eApproval_id);
		logger.debug("approval 객체 : {}", approval);
		
		approval.byteToString();
		
		logger.debug("editApproval para : {} ", approval);
		
		ApprovalLineVO line = approvalDAO.findApprovalLineById(approval.geteApprovalLine_id());
		model.addAttribute("approval", approval);
		model.addAttribute("line", line);
		
		
		return "approval/editApproval";
	}
	

	//반려된 결재 수정
	@RequestMapping (value="editApproval", method=RequestMethod.POST)
	public String editApproval(ApprovalVO approval, HttpSession session) {
		logger.debug("결재 수정 들어옴 approval : {}", approval);
		
		
		approval.seteApproval_content(approval.geteApproval_content2().getBytes());
		//로그인 아이디 셋팅
		String user_id = (String) session.getAttribute("userId");
		approval.setUser_id(user_id);
		logger.debug("editApproval 직전 : {}", approval);
		//결재문서 수정
		logger.debug("바이트 확인 {}", approval.geteApproval_content());
		approvalDAO.editApproval(approval);
		
		
		//히스토리
		ApprovalHistoryVO history = new ApprovalHistoryVO();
		
		history.setUser_id(user_id);
		history.seteApproval_id(approval.geteApproval_id());
		history.seteHistory_content("상신");
		
		approvalDAO.updateHistory(history);
		
		
		//반려자에게 결재 다시 알림 (push)
		PushVO push = new PushVO();
		
		ApprovalLineVO line = approvalDAO.findApprovalLineById2(approval.geteApprovalLine_id());
		
		ArrayList<ApprovalHistoryVO> historyList = approvalDAO.findApprovalHistory(approval.geteApproval_id());
		int count = 1;	//몇번 결재자까지 갔는지 세는 변수(person1, 2 ,3)
		for(ApprovalHistoryVO h : historyList){
			if(h.geteHistory_content().equals("승인")){
				count ++;
			}
		}
		
		switch (count) {
		case 1:
			push.setUser_id(line.geteApprovalLine_person1());
			
			break;
		case 2:
			push.setUser_id(line.geteApprovalLine_person2());
			break;
		case 3:
			push.setUser_id(line.geteApprovalLine_person3());
			break;
		}
		
		push.setPush_type("결재");
		push.setPush_title("결재가 재상신 되었습니다");
		push.setDept_name("");
		
		logger.debug("push 등록 직전 : {}", push);
		pushDAO.addPush(push);
		
		return "redirect:myApproval";
	}
	
	
	
	//반려된 결재 수정 페이지로
	@RequestMapping (value="download", method=RequestMethod.GET)
	public String filedownload(int eApproval_id, Model model, HttpServletResponse response) {
		logger.debug("filedownload 들어옴, para : eApproval_id = {}", eApproval_id);
		ApprovalVO approval = approvalDAO.findApprovalById(eApproval_id);
		logger.debug("approval 객체 : {}", approval);
		
		//원래의 파일명
		String originalfile = new String(approval.geteApproval_original());
		
		try {
			response.setHeader("Content-Disposition", " attachment;filename="+ URLEncoder.encode(originalfile, "UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		//저장된 파일 경로
		String fullPath = uploadPath + "/" + approval.geteApproval_saved();
		
		//서버의 파일을 읽을 입력 스트림과 클라이언트에게 전달할 출력스트림
		FileInputStream filein = null;
		ServletOutputStream fileout = null;
		
		try {
			filein = new FileInputStream(fullPath);
			fileout = response.getOutputStream();
			
			//Spring의 파일 관련 유틸
			FileCopyUtils.copy(filein, fileout);
			
			filein.close();
			fileout.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return null;
	}
	
	
	
	
	/*    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%    Ajax       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    */
	
	
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
