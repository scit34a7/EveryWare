package com.a7.everyware.user.controller;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
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
	
	//@ResponseBody
	@RequestMapping(value="loginUser", method=RequestMethod.POST)
	public String loginUser(HttpSession session, Model model, String id, String password) {
		String msg = null;
		
		if ((String) session.getAttribute("userId") != null) {
			UserVO vo = userDAO.findUser((String) session.getAttribute("userId"));
		}
		
		UserVO vo = userDAO.findUser(id);

		//아이디가 존재하지 않는 경우
		if (vo != null) {
			if (password.equals(vo.getUser_pw())) {
				session.setAttribute("userId", vo.getUser_id());
				session.setAttribute("userName", vo.getUser_name());
				return "1";
			}
		}
		
		return "0";
	}
	
	@RequestMapping(value="mainForm", method=RequestMethod.GET)
	public String mainForm(Model model) {
		return "mainForm";
	}
	
	
}
