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

	@RequestMapping(value = "resource", method = RequestMethod.GET)
	public String resource(HttpSession session) {

		return "resource/Resource_Home";
	}

	// 들어가기
	@RequestMapping(value = "/resource_Resource_Form", method = RequestMethod.GET)
	public String resource_ConferenceRoom01(HttpSession session, String resource_id) {
		System.out.println("받아온값" + resource_id);
		ArrayList<ResourceVO> MRlist = new ArrayList<ResourceVO>();
		// String resource_type = "회의실001";
		MRlist = resourcedao.readMeetingRoom(resource_id);
		session.setAttribute("resource_id", resource_id);
		session.setAttribute("MRlist", MRlist);
		System.out.println("mr->" + MRlist);
		
		ArrayList<R_reservationVO> RRlist = new ArrayList<R_reservationVO>();
		RRlist = resourcedao.getMeetingRoom(resource_id);

		for (int i = 0; i < RRlist.size(); i++) {
			if (RRlist.get(i).getColor().equals("총무")) {
				RRlist.get(i).setColor("#62bbf1");
			} else if (RRlist.get(i).getColor().equals("재무")) {
				RRlist.get(i).setColor("#f26363");
			} else if (RRlist.get(i).getColor().equals("법무")) {

			} else if (RRlist.get(i).getColor().equals("영업")) {

			} else if (RRlist.get(i).getColor().equals("운영")) {

			}
		}
		
		session.setAttribute("RRlist", RRlist);
		
		return "/resource/Resource_Form";
	}

	// 예약
	@RequestMapping(value = "/Resource_add", method = RequestMethod.POST)
	public String Resource_add(R_reservationVO reservation_vo ,String resource_type,HttpSession session) {

		int result = 0;
		result = resourcedao.Resource_add(reservation_vo);
		if (result == 0) {

		}
		String r_id = (String) session.getAttribute("resource_id");

		return "redirect:/resource_Resource_Form?resource_id="  + r_id;
	}

	//  삭제
	@RequestMapping(value = "/Resource_delete", method = RequestMethod.POST)
	public String Resource_delete(String R_reservation_id, HttpSession session) {
		System.out.println(R_reservation_id);
		int result = 0;
		result = resourcedao.Resource_delete(R_reservation_id);
		if (result == 0) {
		}
		String r_id = (String) session.getAttribute("resource_id");

		return "redirect:/resource_Resource_Form?resource_id="  + r_id;
	}
}