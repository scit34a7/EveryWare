package com.a7.everyware.board.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
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
	
	
	/**
	 * 한 페이지의 게시글 목록 읽기
	 * @param searchText 검색어
	 * @param startRecord 전체 결과중 읽을 시작 위치 (첫행은 0)
	 * @param countPerPage 읽을 레코드 수 (한페이지당 글 개수)
	 * @return 글목록
	 */
	public ArrayList<BoardVO> listBoard(String searchText, int startRecord, int countPerPage) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		//전체 검색 결과 중 읽을 시작위치와 개수
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		
		//검색어와 읽을 범위를 전달
		ArrayList<BoardVO> boardlist = mapper.listBoard(searchText, rb);
		return boardlist;
	}
	
}
