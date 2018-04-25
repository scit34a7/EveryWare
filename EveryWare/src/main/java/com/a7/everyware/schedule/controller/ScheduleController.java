package com.a7.everyware.schedule.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.a7.everyware.schedule.dao.ScheduleDAO;
import com.a7.everyware.schedule.vo.GetScheduleVO;
import com.a7.everyware.schedule.vo.ScheduleVO;

@Controller
public class ScheduleController {
	@Autowired
	ScheduleDAO scheduledao;
	
	
	@RequestMapping(value = "/schedule", method = RequestMethod.GET)
	public String schedule(HttpSession session) {
		
		String user_id = (String) session.getAttribute("userId");	
		ArrayList<ScheduleVO> Slist = new ArrayList<ScheduleVO>();
		Slist = scheduledao.Read_Schedule(user_id);
			
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
		return "schedule/Schedule_Calendar";
	}

	@RequestMapping(value = "/Schedule_add", method = RequestMethod.POST)
	public String Schedule_add(ScheduleVO schedule_vo) {
	
		System.out.println(schedule_vo);
		int result = 0;
		result = scheduledao.Schedule_add(schedule_vo);
		if(result == 0){
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
