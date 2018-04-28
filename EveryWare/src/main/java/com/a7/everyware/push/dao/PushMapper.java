package com.a7.everyware.push.dao;

import java.util.ArrayList;

import com.a7.everyware.push.vo.PushVO;
import com.a7.everyware.user.vo.UserVO;

public interface PushMapper {
	public void addPush(PushVO vo);
	
	public ArrayList<PushVO> selectPush(UserVO userVO);
}
