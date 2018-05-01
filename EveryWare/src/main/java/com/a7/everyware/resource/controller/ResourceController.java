package com.a7.everyware.resource.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		
		ArrayList<ResourceVO> MRlist = new ArrayList<ResourceVO>();

		MRlist = resourcedao.read_Resource(resource_id);
		session.setAttribute("resource_id", resource_id);
		session.setAttribute("MRlist", MRlist);
		
		
		ArrayList<R_reservationVO> RRlist = new ArrayList<R_reservationVO>();
		RRlist = resourcedao.get_Resource(resource_id);

		for (int i = 0; i < RRlist.size(); i++) {
			if (RRlist.get(i).getColor().equals("총무")) {
				RRlist.get(i).setColor("#62bbf1");
			} else if (RRlist.get(i).getColor().equals("재무")) {
				RRlist.get(i).setColor("#f26363");
			} else if (RRlist.get(i).getColor().equals("법무")) {
				RRlist.get(i).setColor("#884ff2");
			} else if (RRlist.get(i).getColor().equals("영업")) {
				RRlist.get(i).setColor("#d9ea5b");
			} else if (RRlist.get(i).getColor().equals("운영")) {
				RRlist.get(i).setColor("#edb657");
			}
		}
		
		session.setAttribute("RRlist", RRlist);
		
		return "/resource/Resource_Form";
	}

	// 예약
	@RequestMapping(value = "/Resource_add", method = RequestMethod.POST)
	public String Resource_add(R_reservationVO reservation_vo ,HttpSession session) {

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
		
		int result = 0;
		result = resourcedao.Resource_delete(R_reservation_id);
		if (result == 0) {
		}
		String r_id = (String) session.getAttribute("resource_id");

		return "redirect:/resource_Resource_Form?resource_id="  + r_id;
	}
	
	@ResponseBody
	@RequestMapping(value = "/get_R_reservation", method = RequestMethod.GET)
	public R_reservationVO get_R_reservation(String R_reservation_id){
		R_reservationVO result = new R_reservationVO();
		result = resourcedao.get_R_reservation(R_reservation_id);
		return result;
	}
}