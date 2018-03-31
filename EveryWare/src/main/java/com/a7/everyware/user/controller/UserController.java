package com.a7.everyware.user.controller;


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
import org.springframework.web.bind.annotation.ResponseBody;

import com.a7.everyware.HomeController;
import com.a7.everyware.user.dao.UserDAO;
import com.a7.everyware.user.vo.UserVO;



@Controller
@RequestMapping(value="user")
public class UserController {
	
	@Autowired
	UserDAO userDAO;

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	
	//로그인
	@ResponseBody
	@RequestMapping(value="loginUser", method=RequestMethod.POST)
	public String loginUser(HttpSession session, Model model, String id, String password) {
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
	
	
	//사워 정보 수정 페이지 이동
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
	
	
/*	
	//유저 정보 등록(일단 보류)
	@RequestMapping (value="join", method=RequestMethod.GET)
	public String joinForm(Model model) {
		//빈 VO객체를 만들어 세션에 저장
		UserVO user = new UserVO();
		model.addAttribute("user", user);
		return "user/joinForm";
	}

	//유저 정보 등록(일단 보류)
	@RequestMapping (value="join", method=RequestMethod.POST)
	public String join(
			@ModelAttribute("user") UserVO user,
			Model model) {
		
		int result = userDAO.insertUser(user);
		if (result != 1) {
			//DB저장에 실패한 경우 alert() 출력용 메시지를 모델에 저장
			model.addAttribute("errorMsg", "등록 실패");
			return "user/joinForm";
		}
		
		//경로 나중에 다시 확인!!!!!!!!!!!!!!!
		return "redirect:/";
	}
	
	
	//사번 중복 확인
	@RequestMapping(value="idcheck", method=RequestMethod.GET)
	public String idcheck(Model model) {
		//검색 전후 확인용
		model.addAttribute("search", false);
		return "user/idcheck";
	}
	
	//사번 중복 검사
	@RequestMapping(value="idcheck", method=RequestMethod.POST)
	public String idcheck(String searchId, Model model) {
		//ID 검색
		UserVO user = userDAO.checkId(searchId);
		
		//검색ID와 검색 결과, 검색전후 확인용 값 저장
		model.addAttribute("searchId", searchId);
		model.addAttribute("searchResult", user);
		model.addAttribute("search", true);
		
		return "user/idcheck";
	}
	
	*/
	
	
}
