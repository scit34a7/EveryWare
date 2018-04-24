package com.a7.everyware.support.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;

import com.a7.everyware.board.vo.BoardAttachedVO;
import com.a7.everyware.board.vo.BoardReplyVO;
import com.a7.everyware.board.vo.BoardVO;
import com.a7.everyware.support.vo.AttendVO;

//업무지원
public interface SupportMapper {

	//출근 체크
	public int attendCheck(AttendVO attend);
	
	//퇴근 체크
	public int attendOut(AttendVO attend);
	
	//외출 체크
	public int goOut(AttendVO attend);
	
	//외출 복귀
	public int goIn(AttendVO attend);
	
	//내 근태 가져오기
	public ArrayList<AttendVO> attendListGet(String user_id);

	
	//업무보고 저장
	public int insertBoard(BoardVO board);
	
	//업무보고 첨부 저장
	public int insertBoardAttached(BoardAttachedVO boardAttached);
	
	//글번호 가져오기(첨부파일 등록시)
	public BoardVO findBoardId(BoardVO board);
	

	//번호로 글 읽기
	public BoardVO get(int board_id);
	
	//첨부 읽기
	public BoardAttachedVO searchBoardAttached(int bAttached_id);
	
	//board_id로 boardAttached 가져옴
	public ArrayList<BoardAttachedVO> getBoardAttached(int board_id);
	
	//조회수 1 증가
	public int addHits(int board_id);
	
	//검색 후의 총 글 개수
	public int getTotal(HashMap<String, Object> map);
	
	//검색 후의 현재 페이지 목록
	//public ArrayList<BoardVO> listBoard(HashMap<String, Object> map, RowBounds rb);
	public ArrayList<BoardVO> listBoard(HashMap<String, Object> map);
	
	
	//글번호와 아이디로 해당 게시글 삭제
	public int deleteBoard(BoardVO board);
	
	//첨부삭제
	public int deleteBoardAttached(BoardAttachedVO boardAttached);
	
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
	
	
	
	
	
	
/*	//근태 읽기
	public AttendVO attendGet(int attend_id);*/
	
	
	/*//근태 목록
	public ArrayList<AttendVO> attendList();*/
	
	
	
}
