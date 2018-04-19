package com.a7.everyware.meeting.dao;

import java.util.ArrayList;

import com.a7.everyware.meeting.vo.MeetingLogVO;
import com.a7.everyware.meeting.vo.MeetingVO;

public interface MeetingMapper {
	public ArrayList<MeetingVO> searchAllList();

	public void createRoom(MeetingVO meetVO);

	public MeetingVO findRoom(String user_id);

	public void saveLog(MeetingLogVO logVO);

	public ArrayList<MeetingLogVO> searchLogList();
	
	public ArrayList<MeetingLogVO> searchAllLog(String meet_title);

	public void removeRoom(MeetingVO vo);
}
