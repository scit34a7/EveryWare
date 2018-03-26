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
	
	
	//�α��� (user/login)
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(UserVO user, HttpSession session) {
		logger.debug("user/login para : {}", user);
		
		UserVO findUser = userDAO.findUser(user.getUser_id());
		
		//���̵� ���� �ϴ� ���
		if(findUser != null){
			//���̵� �����ϰ� ��й�ȣ�� ��ġ�ϴ� ���(�α��� ����)
			if(findUser.getUser_pw().equals(user.getUser_pw())){
				
				//�α��� ���� : ���̵�� �̸��� ��� �־�� �Ѵ�.
				UserVO login_user = new UserVO();
				login_user.setUser_id(findUser.getUser_id());
				login_user.setUser_id(findUser.getUser_name());
				
				session.setAttribute("login_user", login_user);
				
			//���̵�� ���� ������ ��й�ȣ�� Ʋ�����(�α��� ����)
			}else{
				
			}
			
		//���̵� ���� ���� �ʴ� ��� (�α��� ����)	
		}else{
			
		}
		
		
		return "home";
	}
	
	
}
