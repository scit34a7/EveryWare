package com.a7.everyware.meeting.controller;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.a7.everyware.HomeController;

@Controller
@RequestMapping(value="meet")
public class MeetingController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "meetingList", method = RequestMethod.GET)
	public String meetingList() {
		return "meeting/meetingList";
	}
	
	@RequestMapping(value = "createRoom", method = RequestMethod.GET)
	public String createMeetingRoom() {
		return "meeting/createRoom";
	}
	
	@RequestMapping(value = "joinRoom", method = RequestMethod.GET)
	public String joinMeetingRoom() {
		return "meeting/joinRoom";
	}
/////////////////////////////////////////////////////////////////////////////////////////////////
	@RequestMapping(value = "test1", method = RequestMethod.GET)
	public String test1(HttpSession session, String enter) {
		System.out.println(enter);
		session.setAttribute("enter", enter);
		return "meeting/testroom";
	}
	
	@RequestMapping(value = "test2", method = RequestMethod.GET)
	public String test2() {
		return "meeting/test2";
	}
}
