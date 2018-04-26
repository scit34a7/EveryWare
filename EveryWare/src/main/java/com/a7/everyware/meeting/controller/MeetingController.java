package com.a7.everyware.meeting.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.a7.everyware.HomeController;
import com.a7.everyware.meeting.dao.MeetingDAO;
import com.a7.everyware.meeting.vo.MeetingLogVO;
import com.a7.everyware.meeting.vo.MeetingVO;
import com.a7.everyware.user.dao.UserDAO;
import com.a7.everyware.user.vo.UserVO;

@Controller
@RequestMapping(value="meet")
public class MeetingController {

	@Autowired
	MeetingDAO meetingDAO;
	
	@Autowired
	UserDAO userDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "meetingList", method = RequestMethod.GET)
	public String meetingList(Model model, boolean isRight) {
		System.out.println("isRight:" + isRight);
		if (isRight) {
			model.addAttribute("isRight", isRight);
		}
		
		ArrayList<MeetingVO> meetingVO = meetingDAO.searchAllList();
		
		model.addAttribute("meetingList", meetingVO);
		
		return "meeting/meetingList";
	}
	
	@RequestMapping(value = "createRoom", method = RequestMethod.GET)
	public String createMeetingRoom() {
		return "meeting/createRoom";
	}
	
	@RequestMapping(value = "meetingRoom", method = RequestMethod.GET)
	public String meetingRoom(HttpSession session, Model model, String roomid) {
		System.out.println("ROOMID=" + roomid);
		String user = "";
		user = (String)session.getAttribute("userId");
		System.out.println("USER=" + user);
		UserVO userInfo = userDAO.findUser(user);
		System.out.println(userInfo.toString());
		MeetingVO roomInfo = meetingDAO.findRoom(roomid);
		System.out.println(roomInfo.toString());
		
		String[] position = roomInfo.getMeet_etposition().split(",");
		String[] department = roomInfo.getMeet_dept().split(",");
		
		boolean isCorrectPosition = false;
		boolean isCorrectDepartment = false;
		
		for (int i = 0; i < position.length; i++) {
			if (position[i].equals(userInfo.getPosition_name())) {
				System.out.println("직위적합");
				isCorrectPosition = true;
				break;
			}
		}
		
		if (isCorrectPosition) {
			for (int i = 0; i < department.length; i++) {
				if (department[i].equals(userInfo.getDept_name())) {
					System.out.println("부서적합");
					isCorrectDepartment = true;
					break;
				}
			}
		} else {
			System.out.println("직위방출");
		}
		
		if (isCorrectPosition && isCorrectDepartment) {
			model.addAttribute("guestid", user);
			return "meeting/meetingRoom";
		} else {
			System.out.println("부서방출");
			// alert 추가
			return "redirect:./";
		}
		
	}
	
	/// 임시
	String concatData(String[] data) {
		String concatData = "";
		
		for (int i = 0; i < data.length; i++) {
			if (i == 0) {
				concatData += data[i];
			} else if (i < data.length) {
				concatData += "," + data[i];
			}
		}
		
		return concatData;
	}
	
	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String create(HttpSession session, Model model, String title, String content, String people, String position, String[] department, String time, String roomid) {
		if (meetingDAO.findRoom((String) session.getAttribute("userId")) == null && roomid == null) {
//			logger.debug("title: {}", title);
//			logger.debug("content: {}", content);
//			logger.debug("people: {}", people);
//			logger.debug("position: {}", concatData(department));
			String[] startTime = time.split(":");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
			Calendar calendar = Calendar.getInstance();
			calendar.set(calendar.HOUR, Integer.parseInt(startTime[0])); 
			calendar.set(calendar.MINUTE, Integer.parseInt(startTime[1])); 
			
			String strDate = sdf.format(calendar.getTime());
			logger.debug("date: {}", strDate);
			logger.debug("position: {}", position);
			
			MeetingVO vo = new MeetingVO();
			vo.setUser_id((String) session.getAttribute("userId"));
			vo.setMeet_title(title);
			vo.setMeet_dept(concatData(department));
			vo.setMeet_etposition(position);
			vo.setMeet_date(strDate);
			vo.setMeet_maxpeople(Integer.parseInt(people));

			UserVO user = userDAO.findUser((String) session.getAttribute("userId"));
			
			
			meetingDAO.createRoom(vo);
			model.addAttribute("roomInfo", vo);
			model.addAttribute("roomid", vo.getUser_id());
			model.addAttribute("userName", user.getUser_name());
			System.out.println(vo.toString());
			return "meeting/meetingRoom";
		} else {
			System.out.println("ROOMID=" + roomid);
			String user = "";
			user = (String)session.getAttribute("userId");
			System.out.println("USER=" + user);
			UserVO userInfo = userDAO.findUser(user);
			System.out.println(userInfo.toString());
			MeetingVO roomInfo = meetingDAO.findRoom(roomid);
			System.out.println(roomInfo.toString());
			
			String[] position2 = roomInfo.getMeet_etposition().split(",");
			String[] department2 = roomInfo.getMeet_dept().split(",");
			
			boolean isCorrectPosition = false;
			boolean isCorrectDepartment = false;
			
			for (int i = 0; i < position2.length; i++) {
				if (position2[i].equals(userInfo.getPosition_name())) {
					System.out.println("직위적합");
					isCorrectPosition = true;
					break;
				}
			}
			
			if (isCorrectPosition) {
				for (int i = 0; i < department2.length; i++) {
					if (department2[i].equals(userInfo.getDept_name())) {
						System.out.println("부서적합");
						isCorrectDepartment = true;
						break;
					}
				}
			} else {
				System.out.println("직위방출");
			}
			
			if (isCorrectPosition && isCorrectDepartment) {
				model.addAttribute("roomInfo", roomInfo);
				model.addAttribute("roomid", roomInfo.getUser_id());
				model.addAttribute("guestid", user);
				return "meeting/meetingRoom";
			} else {
				System.out.println("부서방출");
				model.addAttribute("isRight", true);
				return "redirect:/meet/meetingList";
			}
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "saveLog", method = RequestMethod.POST)
	public String saveLog(MeetingLogVO logVO) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		logVO.setLog_time(sdf.format(calendar.getTime()));
		System.out.println(logVO.toString());

		meetingDAO.saveLog(logVO);
		return "0";
	}
	//
	@RequestMapping(value = "minutes", method = RequestMethod.GET)
	public String minutes(Model model) {
		ArrayList<MeetingLogVO> logVO = meetingDAO.searchLogList();
		ArrayList<MeetingLogVO> logVO2 = new ArrayList<>();
		String title = "";
		
		for (int i = 0; i < logVO.size(); i++) {
			if (logVO.get(i).getmeet_title().equals(title)) {
				continue;
			} else {
				System.out.println(logVO.get(i).toString());
				logVO2.add(logVO.get(i));
				title = logVO.get(i).getmeet_title();
			}
		}
		
	//	System.out.println(logVO2.toString());
		
		model.addAttribute("logList", logVO2);
		return "meeting/minutes";
	}
	
	@RequestMapping(value = "meetingLog", method = RequestMethod.GET)
	public String meetingLog(Model model, String meet_title) {
		System.out.println(meet_title);
		ArrayList<MeetingLogVO> logVO = meetingDAO.searchAllLog(meet_title);
		System.out.println(logVO.toString());
		
		model.addAttribute("logList", logVO);
		return "meeting/meetingLog";
	}
	
	@ResponseBody
	@RequestMapping(value = "removeRoom", method = RequestMethod.POST)
	public String removeRoom(Model model, boolean isRemove, String userid) {
		System.out.println(isRemove + ", " + userid);

		if (isRemove) {
			MeetingVO vo = meetingDAO.findRoom(userid);
			
			if (vo != null) {
				meetingDAO.removeRoom(vo);
				return "0";
			}
		}
		return "1";		
	}
}
