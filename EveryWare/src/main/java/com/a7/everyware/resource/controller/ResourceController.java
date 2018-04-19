package com.a7.everyware.resource.controller;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.a7.everyware.resource.vo.R_reservationVO;
import com.a7.everyware.resource.vo.ResourceVO;
import com.a7.everyware.resource.dao.ResourceDAO;;

@Controller
public class ResourceController {
	
	@Autowired
	ResourceDAO resourcedao;
	SqlSession sqlSession;
	
	@RequestMapping(value = "/resource", method = RequestMethod.GET)
	public String resource(HttpSession session) {
		
		return "resource/Resource_Home";
	}
	
	//회의실
	@RequestMapping(value = "/resource_MeetingRoom", method = RequestMethod.GET)
	public String resource_MeetingRoom(HttpSession session) {
		
		ArrayList<ResourceVO> MRlist = new ArrayList<ResourceVO>();
		MRlist = resourcedao.readMeetingRoom();
		session.setAttribute("MRlist", MRlist );
		
		ArrayList<R_reservationVO> RRlist = new ArrayList<R_reservationVO>();
		RRlist = resourcedao.getMeetingRoom();
		
		for(int i = 0; i < RRlist.size(); i++)
		{
			if(RRlist.get(i).getColor().equals("총무"))
			{
				RRlist.get(i).setColor("#62bbf1");
			}
			else if(RRlist.get(i).getColor().equals("재무"))
			{
				RRlist.get(i).setColor("#f26363");
			}
			else if(RRlist.get(i).getColor().equals("법무"))
			{
				
			}
			else if(RRlist.get(i).getColor().equals("영업"))
			{
			
			}
			else if(RRlist.get(i).getColor().equals("운영"))
			{
			
			}			
		}	
		session.setAttribute("RRlist", RRlist);
		return "resource/Resource_MeetingRoom";
	}
	//미팅룸 예약
	@RequestMapping(value = "/MeetingRoom_add", method = RequestMethod.POST)
	public String MeetingRoom_add(R_reservationVO resevatin_vo){
	
		System.out.println(resevatin_vo);
		int result = 0;
		result = resourcedao.Resource_add(resevatin_vo);
		if(result==0){
			
		}
		
		return "redirect:/resource_MeetingRoom";
	}
	//노트북
	@RequestMapping(value = "/resource_NoteBook", method = RequestMethod.GET)
	public String resource_NoteBook(HttpSession session) {
		
		ArrayList<ResourceVO> NBlist = new ArrayList<ResourceVO>();
		NBlist = resourcedao.readNoteBook();
		session.setAttribute("NBlist", NBlist );
		
		ArrayList<R_reservationVO> RRlist = new ArrayList<R_reservationVO>();
		RRlist = resourcedao.getMeetingRoom();
		
		for(int i = 0; i < RRlist.size(); i++)
		{
			if(RRlist.get(i).getColor().equals("총무"))
			{
				RRlist.get(i).setColor("#62bbf1");
			}
			else if(RRlist.get(i).getColor().equals("재무"))
			{
				RRlist.get(i).setColor("#f26363");
			}
			else if(RRlist.get(i).getColor().equals("법무"))
			{
				
			}
			else if(RRlist.get(i).getColor().equals("영업"))
			{
			
			}
			else if(RRlist.get(i).getColor().equals("운영"))
			{
			
			}			
		}	
		session.setAttribute("RRlist", RRlist);
		
		return "resource/Resource_NoteBook";
	}
	//노트북 예약
	@RequestMapping(value = "/NoteBook_add", method = RequestMethod.POST)
	public String NoteBook_add(R_reservationVO resevatin_vo){
	
		System.out.println(resevatin_vo);
		int result = 0;
		result = resourcedao.Resource_add(resevatin_vo);
		if(result==0){
			
		}
		
		return "redirect:/resource_NoteBook";
	}
	
	
	//빔 프로젝트
	@RequestMapping(value = "/resource_BeamProjector", method = RequestMethod.GET)
	public String resource_BeamProjector(HttpSession session) {
		
		return "resource/Resource_BeamProjector";
	}
	//차량
	@RequestMapping(value = "/resource_Cars", method = RequestMethod.GET)
	public String resource_Cars(HttpSession session) {
		
		return "resource/Resource_Cars";
	}
	

	
}