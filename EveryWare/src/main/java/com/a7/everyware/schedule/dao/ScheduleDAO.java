package com.a7.everyware.schedule.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a7.everyware.schedule.vo.GetScheduleVO;
import com.a7.everyware.schedule.vo.ScheduleVO;

@Repository
public class ScheduleDAO {
	@Autowired
	SqlSession sqlsession;

	public int Schedule_add(ScheduleVO schedule_vo)
	{
		int result = 0;
		try{
			ScheduleMapper mapper = sqlsession.getMapper(ScheduleMapper.class);
			result = mapper.Schedule_add(schedule_vo);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}	
	
	public ArrayList<ScheduleVO> Read_Schedule(String user_id){
		ArrayList<ScheduleVO> result = new ArrayList<ScheduleVO>();
		try{
			ScheduleMapper mapper = sqlsession.getMapper(ScheduleMapper.class);
			result = mapper.Read_Schedule(user_id);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
	
	
}