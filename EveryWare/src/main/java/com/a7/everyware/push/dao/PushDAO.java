package com.a7.everyware.push.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a7.everyware.push.vo.PushVO;

@Repository
public class PushDAO {
	@Autowired
	SqlSession sqlSession;

	public void addPush(PushVO vo) {
		PushMapper mapper = sqlSession.getMapper(PushMapper.class);
		System.out.println(vo.toString());
		mapper.addPush(vo);
	}
}
