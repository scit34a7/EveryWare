package com.a7.everyware.push.dao;

import java.util.ArrayList;

import com.a7.everyware.push.vo.PushVO;

public interface PushMapper {
	public void addPush(PushVO vo);
	
	public ArrayList<PushVO> selectPush();
}
