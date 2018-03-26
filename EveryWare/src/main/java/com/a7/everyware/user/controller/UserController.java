package com.a7.everyware.user.controller;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.a7.everyware.HomeController;
import com.a7.everyware.user.dao.UserDAO;
import com.a7.everyware.user.vo.UserVO;

@Controller
@RequestMapping(value="user")
public class UserController {
	
	@Autowired
	UserDAO userDAO;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	//로그인 (user/login)
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(UserVO user, HttpSession session) {
		logger.debug("user/login para : {}", user);
		
		UserVO findUser = userDAO.findUser(user.getUser_id());
		
		//아이디가 존재 하는 경우
		if(findUser != null){
			//아이디가 존재하고 비밀번호도 일치하는 경우(로그인 성공)
			if(findUser.getUser_pw().equals(user.getUser_pw())){
				
				//로그인 유저 : 아이디와 이름만 담겨 있어야 한다.
				UserVO login_user = new UserVO();
				login_user.setUser_id(findUser.getUser_id());
				login_user.setUser_id(findUser.getUser_name());
				
				session.setAttribute("login_user", login_user);
				
			//아이디는 존재 하지만 비밀번호가 틀린경우(로그인 실패)
			}else{
				
			}
			
		//아이디가 존재 하지 않는 경우 (로그인 실패)	
		}else{
			
		}
		
		
		return "home";
	}
	
	
}
