package com.a7.everyware.schedule.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.a7.everyware.push.dao.PushDAO;
import com.a7.everyware.push.vo.PushVO;
import com.a7.everyware.schedule.dao.ScheduleDAO;
import com.a7.everyware.schedule.vo.ScheduleVO;
import com.a7.everyware.user.dao.UserDAO;
import com.a7.everyware.user.vo.UserVO;

@Controller
public class ScheduleController {
	@Autowired
	ScheduleDAO scheduledao;
	
	@Autowired
	PushDAO pushDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping(value = "schedule", method = RequestMethod.GET)
	public String schedule(HttpSession session) {
		
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
			else if(Slist.get(i).getSchedule_group().equals("법무"))
			{
				Slist.get(i).setColor("#884ff2");
			}
			else if(Slist.get(i).getSchedule_group().equals("영업"))
			{
				Slist.get(i).setColor("#d9ea5b");
			}
			else if(Slist.get(i).getSchedule_group().equals("운영"))
			{
				Slist.get(i).setColor("#edb657");
			}
		}
		
		session.setAttribute("Slist", Slist);
		return "schedule/Schedule_Calendar";
	}

	@RequestMapping(value = "/Schedule_add", method = RequestMethod.POST)
	public String Schedule_add(ScheduleVO schedule_vo, HttpSession session) {
	
		System.out.println(schedule_vo);
		int result = 0;
		result = scheduledao.Schedule_add(schedule_vo);
		if(result == 0){
		}

		if (!schedule_vo.getSchedule_group().equals("개인") || !schedule_vo.getSchedule_group().equals("2")) {
			String user_id = (String) session.getAttribute("userId");
			PushVO push = new PushVO();
			push.setPush_type("일정");
			push.setPush_title("부서일정이 등록되었습니다.");
			
			ArrayList<UserVO> vo = userDAO.selectUserDept(schedule_vo.getSchedule_group());

			// 임시
			push.setDept_name(schedule_vo.getSchedule_group());
			for (int i = 0; i < vo.size(); i++) {
				push.setUser_id(vo.get(i).getUser_id());
				pushDAO.addPush(push);
			}
			
			session.setAttribute("pushList", pushDAO.selectPush(userDAO.findUser(user_id)));
		}
		
		return "redirect:/schedule";
	}
	
	@RequestMapping(value = "/Schedule_delete", method = RequestMethod.POST)
	public String Schedule_delete(String schedule_num) {
	
		System.out.println("스케쥴 번호" + schedule_num);
		int result = 0;
		result = scheduledao.Schedule_Delete(schedule_num);
		if(result == 0)
		{
		}
		return "redirect:/schedule";
	}
	
}
