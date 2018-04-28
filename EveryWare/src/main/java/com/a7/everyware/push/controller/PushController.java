package com.a7.everyware.push.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.a7.everyware.push.dao.PushDAO;
import com.a7.everyware.user.dao.UserDAO;

@Controller
//@RequestMapping(value="push")
public class PushController {
	@Autowired
	PushDAO pushDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@ResponseBody
	@RequestMapping(value = "pushCheck", method = RequestMethod.POST)
	public String pushCheck(boolean isPush, int push_id) {
		if (isPush) {
			pushDAO.updatePush(push_id);
		}
		
		return "0";
	}
}
