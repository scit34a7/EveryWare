package com.a7.everyware.meeting.dao;

import java.util.ArrayList;

import com.a7.everyware.meeting.vo.MeetingVO;

public interface MeetingMapper {
	public ArrayList<MeetingVO> searchAllList();

	public void createRoom(MeetingVO meetVO);

	public MeetingVO findRoom(String user_id);
}
