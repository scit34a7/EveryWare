package com.a7.everyware.schedule.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.a7.everyware.schedule.vo.ScheduleVO;

interface ScheduleMapper {
	int Schedule_add(ScheduleVO schedule_vo);
	ArrayList<ScheduleVO> Read_Schedule(HashMap hm);
	int Schedule_Delete(String schedule_num);

}