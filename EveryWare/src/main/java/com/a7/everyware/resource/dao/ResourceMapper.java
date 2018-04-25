package com.a7.everyware.resource.dao;

import java.util.ArrayList;

import com.a7.everyware.resource.vo.R_reservationVO;
import com.a7.everyware.resource.vo.ResourceVO;

interface ResourceMapper {
	ArrayList<ResourceVO> readMeetingRoom(String resource_id);
	ArrayList<R_reservationVO> getMeetingRoom(String resource_id);
	
	int Resource_add(R_reservationVO reservationvo);
	int Resource_delete(String R_reservation_id);
}
