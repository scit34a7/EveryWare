package com.a7.everyware;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.a7.everyware.approval.dao.ApprovalDAO;
import com.a7.everyware.approval.vo.ApprovalHistoryVO;
import com.a7.everyware.approval.vo.ApprovalLineVO;
import com.a7.everyware.approval.vo.ApprovalVO;
import com.a7.everyware.board.dao.BoardDAO;
import com.a7.everyware.board.vo.BoardVO;
import com.a7.everyware.support.dao.SupportDAO;
import com.a7.everyware.support.vo.AttendVO;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//공지사항 읽을 때
	@Autowired
	BoardDAO boardDAO;
	@Autowired
	ApprovalDAO approvalDAO;
	@Autowired
	SupportDAO supportDAO;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "home";
	}
	

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(
			@RequestParam(value="boardFolder_id", defaultValue="1") int boardFolder_id
			, Model model, HttpSession session) {
		
		//공지사항
		List<BoardVO> boardlist = boardDAO.listBoardMain(boardFolder_id);
		
		boardlist =  boardlist.subList(0, 9);
		
		model.addAttribute("boardlist", boardlist);
		
		
		//로그인 아이디 세팅
		String user_id = (String) session.getAttribute("userId");
		ArrayList<AttendVO> attendMainList = supportDAO.attendCheckMain(user_id);
				
		
		//근태
		//출근여부 판단
		boolean attendCheck;
		
		if(attendMainList == null || attendMainList.isEmpty()){
			attendCheck = true;
		}else{
			attendCheck = false;
		}
		
		model.addAttribute("attendCheck", attendCheck);
			
				
		
		
		/*결재 관련 시작*/
		//로그인 아이디 세팅: 위 근태위에서 세팅
		
		
		//내가 결재라인에 올라와 있는 결재
		ArrayList<ApprovalVO> approvalList_toMe = approvalDAO.findApprovalToMe(user_id);
		
	
		//지금 내가 결재 해야될 문서
		ArrayList<ApprovalVO> approvalList_now = new ArrayList<ApprovalVO>();
		
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
							logger.debug("1111111111111111111111111111111111111111111111");
							

						}else if(history.getUser_id().equals(line.geteApprovalLine_person1()) && history.geteHistory_content().equals("반려")){
							//내가 반려 한경우
							logger.debug("222222222222222222222222222222222222222222222222222222222222222222");
							
							
						}else if(history.getUser_id().equals(line.geteApprovalLine_person1()) && history.geteHistory_content().equals("거절")){
							//내가 거절 한경우
							logger.debug("333333333333333333333333333333333333333333333333333333333333333333");
						
							
						}else{
							logger.debug("444444444444444444444444444444444444444444444444444444444");
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
					
				}else{
					if(isApproval2_2.equals("반려")){
						//내가 반려 한 경우
						
						
					}else if(isApproval2_2.equals("거절")){
						//거절
						
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
					
				
				}else{
					if(isApproval3_3.equals("반려")){
						//반려
						
					
					}else if(isApproval3_3.equals("거절")){
						//거절
					
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
		
		/* 결재 관련 끝 */		
		
		
		
		return "index";
	}
	
	@RequestMapping(value = "appviews-file-manager", method = RequestMethod.GET)
	public String appviews_file_manager() {
		return "appviews-file-manager";
	}
	
	@RequestMapping(value = "appviews-inbox", method = RequestMethod.GET)
	public String appviews_inbox() {
		return "appviews-inbox";
	}
	
	@RequestMapping(value = "appviews-inbox-inbox", method = RequestMethod.GET)
	public String appviews_inbox_inbox() {
		return "appviews-inbox-inbox";
	}
	
	@RequestMapping(value = "appviews-inbox-write", method = RequestMethod.GET)
	public String appviews_inbox_write() {
		return "appviews-inbox-write";
	}
	
	@RequestMapping(value = "appviews-inbox-read", method = RequestMethod.GET)
	public String appviews_inbox_read() {
		return "appviews-inbox-read";
	}
	
	
	@RequestMapping(value = "appviews-project-detail", method = RequestMethod.GET)
	public String appviews_project_detail() {
		return "appviews-project-detail";
	}
	
	@RequestMapping(value = "appviews-projects", method = RequestMethod.GET)
	public String appviews_projects() {
		return "appviews-projects";
	}
}
