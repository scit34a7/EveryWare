package com.a7.everyware.resource.dao;

import java.util.ArrayList;

import com.a7.everyware.resource.vo.R_reservationVO;
import com.a7.everyware.resource.vo.ResourceVO;

interface ResourceMapper {
	ArrayList<ResourceVO> read_Resource(String resource_id);
	ArrayList<R_reservationVO> get_Resource(String resource_id);
	
	int Resource_add(R_reservationVO reservation_vo);
	int Resource_delete(String R_reservation_id);
	
	R_reservationVO get_R_reservation(String R_reservation_id);
}
