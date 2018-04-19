package com.a7.everyware.schedule.dao;

import java.util.ArrayList;

import com.a7.everyware.schedule.vo.GetScheduleVO;
import com.a7.everyware.schedule.vo.ScheduleVO;

interface ScheduleMapper {
	int Schedule_add(ScheduleVO schedule_vo);
	ArrayList<ScheduleVO> Read_Schedule(String user_id);

}