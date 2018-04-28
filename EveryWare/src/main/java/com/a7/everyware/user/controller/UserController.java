package com.a7.everyware.user.controller;


import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.a7.everyware.HomeController;
import com.a7.everyware.board.util.PageNavigator;
import com.a7.everyware.mail.dao.MailDAO;
import com.a7.everyware.schedule.dao.ScheduleDAO;
import com.a7.everyware.schedule.vo.ScheduleVO;
import com.a7.everyware.user.dao.UserDAO;
import com.a7.everyware.user.vo.UserVO;

@Controller
@RequestMapping(value="user")
public class UserController {
	
	@Autowired
	MailDAO mdao;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	ScheduleDAO scheduledao;

	//사원 수 관련 상수값들
	final int countPerPage = 10;				//페이지 당 수
	final int pagePerGroup = 5;					//페이지 이동 그룹 당 표시할 페이지 수

		
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	//로그인
	@ResponseBody
	@RequestMapping(value="loginUser", method=RequestMethod.POST)
	public String loginUser(HttpSession session, Model model, String id, String password) {
		
		System.out.println(id+","+password);
		
		String msg = null;
		
		if ((String) session.getAttribute("userId") != null) {
			UserVO vo = userDAO.findUser((String) session.getAttribute("userId"));
		}
		
		UserVO vo = userDAO.findUser(id);

		if (vo != null) {
			if (password.equals(vo.getUser_pw())) {
			
				session.setAttribute("userId", vo.getUser_id());
				session.setAttribute("userName", vo.getUser_name());
				session.setAttribute("userDepartment", vo.getDept_name());
				session.setAttribute("userPosition", vo.getPosition_name());
				
				
				/*
				 * 메일 부분
				 * */
				String repository = mdao.getRepositoryFormMailInfo(vo.getUser_id());
				
				int mailRead = mdao.countUnread(repository);
				
				session.setAttribute("mailRead",mailRead);
				
				/*
				 * schedule부분 추가 할게요
				*/
		
				String user_id = (String) session.getAttribute("userId");	
				String schedule_group = (String) session.getAttribute("userDepartment");
				
				HashMap hm = new HashMap<>();
				hm.put("user_id", user_id);
				hm.put("schedule_group", schedule_group);
				
				ArrayList<ScheduleVO> Slist = new ArrayList<ScheduleVO>();
				Slist = scheduledao.Read_Schedule(hm);
					
				for (int i = 0; i < Slist.size(); i++) {
					if(Slist.get(i).getSchedule_group().equals("개인"))
					{
						Slist.get(i).setColor("#62bbf1");
					}
					else if(Slist.get(i).getSchedule_group().equals("총무"))
					{
						Slist.get(i).setColor("#f26363");
					}
				}
				
				System.out.println("Slist->" + Slist);
				session.setAttribute("Slist", Slist);
		
				return "1";
			}
		}
		return "0";
	}
	
	//메인폼으로
	@RequestMapping(value="mainForm", method=RequestMethod.GET)
	public String mainForm(Model model) {
		return "mainForm";
	}
	
	
	//로그아웃
	@RequestMapping (value="logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
		
		
	//사원 정보
	@RequestMapping (value="userInfo", method=RequestMethod.GET)
	public String userInfo(HttpSession session, Model model){
		String id = (String) session.getAttribute("userId");
		UserVO user = userDAO.findUser(id);
		
		model.addAttribute("user", user);
		return "user/userInfo";
	}
		
		
	//사원 정보 수정 페이지 이동
	@RequestMapping (value="update", method=RequestMethod.GET)
	public String updateForm(HttpSession session, Model model) {
		String id = (String) session.getAttribute("userId");
		UserVO user = userDAO.findUser(id);
		
		model.addAttribute("user", user);
		return "user/updateForm";
	}

	
	//사원 정보 수정 처리
	@RequestMapping (value="update", method=RequestMethod.POST)
	public String update(
			@ModelAttribute("user") UserVO user,
			Model model, HttpSession session) {
		
		String id = (String) session.getAttribute("userId");
		user.setUser_id(id);
		
		session.setAttribute("userDepartment", user.getDept_name());
		session.setAttribute("userPosition", user.getPosition_name());
		
		logger.debug("userConroller update {}", user);
		
		int result = userDAO.modifyUser(user);
		if (result != 1) {
			//DB update에 실패한 경우 alert() 출력용 메시지를 모델에 저장
			model.addAttribute("errorMsg", "수정 실패");
			return "user/updateForm";
		}
		
		//수정폼으로 감
		return "redirect:update";
	}
	
	
	//사원 주소록
	@RequestMapping (value="userList", method=RequestMethod.GET)
	public String userList( 
			@RequestParam(value="page", defaultValue="1") int page,
			@RequestParam(value="searchText", defaultValue="") String searchText,
			Model model) {
	
		int total = userDAO.getTotal(searchText);
		
		
		//페이지 계산을 위한 객체 생성
		PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total); 
		
		ArrayList<UserVO> userList = userDAO.userList(searchText, navi.getStartRecord(), navi.getCountPerPage());
		
		//페이지 정보 객체와 글 목록, 검색어를 모델에 저장
		model.addAttribute("userList", userList);		
		model.addAttribute("navi", navi);
		model.addAttribute("searchText", searchText);
		
		return "user/userList";
	}
	
	
}
