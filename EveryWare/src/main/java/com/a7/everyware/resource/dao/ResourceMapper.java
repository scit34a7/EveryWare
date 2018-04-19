package com.a7.everyware.resource.dao;

import java.util.ArrayList;

import com.a7.everyware.resource.vo.R_reservationVO;
import com.a7.everyware.resource.vo.ResourceVO;

interface ResourceMapper {
	ArrayList<ResourceVO> readMeetingRoom();
	int Resource_add(R_reservationVO reservationvo);
	ArrayList<R_reservationVO> getMeetingRoom();
	ArrayList<ResourceVO> readNoteBook();
}
