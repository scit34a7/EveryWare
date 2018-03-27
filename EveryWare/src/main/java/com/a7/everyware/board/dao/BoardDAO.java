package com.a7.everyware.board.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a7.everyware.board.vo.BoardAttachedVO;
import com.a7.everyware.board.vo.BoardVO;


//게시판DAO
@Repository
public class BoardDAO {

	@Autowired
	SqlSession sqlSession;
	
	
	//게시글 저장
	public int insertBoard(BoardVO board) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = 0;
		try {
			result = mapper.insertBoard(board);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	//게시글 첨부 저장
	public int insertBoardAttached(BoardAttachedVO boardAttached) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = 0;
		try {
			result = mapper.insertBoardAttached(boardAttached);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
