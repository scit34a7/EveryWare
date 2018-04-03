package com.a7.everyware.meeting.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.a7.everyware.HomeController;
import com.a7.everyware.meeting.dao.MeetingDAO;
import com.a7.everyware.meeting.vo.MeetingVO;

@Controller
@RequestMapping(value="meet")
public class MeetingController {

	@Autowired
	MeetingDAO meetingDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "meetingList", method = RequestMethod.GET)
	public String meetingList(Model model) {
		ArrayList<MeetingVO> meetingVO = meetingDAO.searchAllList();
		
		model.addAttribute("meetingList", meetingVO);
		
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
	
	@RequestMapping(value = "meetingRoom", method = RequestMethod.GET)
	public String meetingRoom() {
		return "meeting/meetingRoom";
	}
	
	@RequestMapping(value = "meetingRoom2", method = RequestMethod.GET)
	public String meetingRoom2(Model model, String id) {
		System.out.println(id);
		model.addAttribute("room_id", id);
		return "meeting/meetingRoom2";
	}

	@RequestMapping(value = "meetingRoom3", method = RequestMethod.GET)
	public String meetingRoom3(HttpSession session, Model model, String roomid) {
		System.out.println("ROOMID=" + roomid);
		System.out.println("CREATE");
		if (meetingDAO.findRoom((String) session.getAttribute("userId")) == null) {
			MeetingVO vo = new MeetingVO();
			vo.setUser_id((String) session.getAttribute("userId"));
			vo.setMeet_title("테스트");
			vo.setMeet_dept("경리");
			vo.setMeet_etposition("사원");
			vo.setMeet_date("18/03/29");
			vo.setMeet_maxpeople(3);

			meetingDAO.createRoom(vo);
			model.addAttribute("roomid", (String) session.getAttribute("userId"));
			System.out.println(vo.toString());
			return "meeting/meetingRoom3";
		} else {
			return "meeting/meetingRoom3";
		}
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////
	@RequestMapping(value = "test1", method = RequestMethod.GET)
	public String test1(Model model, String enter, String id) {
		System.out.println(enter);
		System.out.println(id);
		model.addAttribute("enter", enter);
		model.addAttribute("room_id", id);
		return "meeting/testroom";
	}
	
	@RequestMapping(value = "test2", method = RequestMethod.GET)
	public String test2() {
		return "meeting/test2";
	}
	
	@RequestMapping(value = "test3", method = RequestMethod.GET)
	public String test3() {
		return "meeting/test3";
	}
	
	@RequestMapping(value = "test4", method = RequestMethod.GET)
	public String test4() {
		return "meeting/test4";
	}
	
	@RequestMapping(value = "sharing", method = RequestMethod.GET)
	public String sharing() {
		return "meeting/Audio-Video-Screen";
	}
	
	@RequestMapping(value = "annyangTest", method = RequestMethod.GET)
	public String annyangTest() {
		return "meeting/annyangTest";
	}
}
