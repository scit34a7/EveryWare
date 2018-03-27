package com.a7.everyware.board.dao;

import java.util.ArrayList;

import com.a7.everyware.board.vo.BoardAttachedVO;
import com.a7.everyware.board.vo.BoardReplyVO;
import com.a7.everyware.board.vo.BoardVO;

//게시판 DAO
public interface BoardMapper {

	
	//게시글 저장
	public int insertBoard(BoardVO board);
	
	//게시글 첨부 저장
	public int insertBoardAttached(BoardAttachedVO boardAttached);
	
	//글번호로 해당 게시글 검색
	public BoardVO searchBoard(int board_id);
	
	//조회수 1 증가
	public int addHits(int board_id);
	
	//검색 후의 총 글 개수
	public int getTotal(String searchText);
	
	//검색 후의 현재 페이지 목록
	//public ArrayList<BoardVO> listBoard(String searchText, RowBounds rb);
	
	//글번호와 아이디로 해당 게시글 삭제
	public int deleteBoard(BoardVO board);
	
	//글 수정
	public int modifyBoard(BoardVO board);

	
	//리플 저장
	public int insertBoardReply(BoardReplyVO reply);
	
	//한 게시물의 리플 목록
	public ArrayList<BoardReplyVO> listBoardReply(int board_id);
	
	//리플번호와 아이디로 해당 리플 삭제
	public int deleteBoardReply(BoardReplyVO reply);
	
	//리플 수정
	public int modifyBoardReply(BoardReplyVO reply);
		
}
