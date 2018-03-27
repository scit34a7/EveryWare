package com.a7.everyware.user.dao;

import com.a7.everyware.user.vo.UserVO;

public interface UserMapper {
	public UserVO findUser(String user_id);
}
