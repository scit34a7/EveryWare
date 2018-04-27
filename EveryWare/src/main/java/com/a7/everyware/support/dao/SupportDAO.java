package com.a7.everyware.support.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a7.everyware.board.dao.BoardMapper;
import com.a7.everyware.board.vo.BoardAttachedVO;
import com.a7.everyware.board.vo.BoardReplyVO;
import com.a7.everyware.board.vo.BoardVO;
import com.a7.everyware.support.controller.SupportController;
import com.a7.everyware.support.vo.AttendVO;


//업무지원DAO
@Repository
public class SupportDAO {

	private static final Logger logger = LoggerFactory.getLogger(SupportController.class);

	@Autowired
	SqlSession sqlSession;
	

	//메인용 근태
	public ArrayList<AttendVO> attendCheckMain(String user_id){
		SupportMapper mapper = sqlSession.getMapper(SupportMapper.class);
		
		ArrayList<AttendVO> attendListMain = mapper.attendCheckMain(user_id);
		return attendListMain;
		
	}
	
	//출근 체크
	public int attendCheck(AttendVO attend){
		
		logger.info("AttendDAO insert para : {}", attend);
		
		SupportMapper mapper = sqlSession.getMapper(SupportMapper.class);
		
		int result = 0;
		
		result = mapper.attendCheck(attend);
		
		return result;
	}
	
	
	//퇴근 체크
	public int attendOut(AttendVO attend){
		
		logger.info("AttendDAO insert para : {}", attend);
		
		SupportMapper mapper = sqlSession.getMapper(SupportMapper.class);
		
		int result = 0;
		
		result = mapper.attendCheck(attend);
		
		return result;
	}
	
	
	//외출 복귀
	public int goIn(AttendVO attend){
		
		logger.info("AttendDAO insert para : {}", attend);
		
		SupportMapper mapper = sqlSession.getMapper(SupportMapper.class);
		
		int result = 0;
		
		result = mapper.attendCheck(attend);
		
		return result;
	}
	
	
	//외출 체크
	public int goOut(AttendVO attend){
		
		logger.info("AttendDAO insert para : {}", attend);
		
		SupportMapper mapper = sqlSession.getMapper(SupportMapper.class);
		
		int result = 0;
		
		result = mapper.attendCheck(attend);
		
		return result;
	}

	
	//내 근태 읽기
	public ArrayList<AttendVO> attendListGet(String user_id){
		SupportMapper mapper = sqlSession.getMapper(SupportMapper.class);
		ArrayList<AttendVO> attendList = mapper.attendListGet(user_id);
		return attendList;
	}
	
	
	
	//업무보고  저장
	public int insertBoard(BoardVO board) {
		
	logger.info("boardDAO insert para : {}", board);
	
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
		
		
	//업무보고 첨부 저장
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

	
	//게시글 번호 읽기
	public BoardVO findBoardId(BoardVO board){
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		BoardVO board2 = mapper.findBoardId(board);
		return board2;
	}
	
	

	
	//번호로 게시글 읽기(글 하나 읽을때)
	public BoardVO get(int board_id){
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		BoardVO board = mapper.get(board_id);
		
		mapper.addHits(board_id);
		return board;
	}
	
	
	//번호로 게시글 읽기(첨부파일)
	public BoardAttachedVO getAttached(int bAttached_id) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		//해당 번호의 글정보 읽기
		BoardAttachedVO boardAttachedVO = mapper.searchBoardAttached(bAttached_id);
		
		return boardAttachedVO;
	}


	//BoardAttachedVO 가져오기.... 보드 아이디로
	public ArrayList<BoardAttachedVO> getBoardAttached(int board_id) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		
		ArrayList<BoardAttachedVO> boardAttachedVO = mapper.getBoardAttached(board_id);
		
		return boardAttachedVO;
	}
	
		
	//검색 결과 레코드 수
	public int getTotal(String searchText, int boardFolder_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("searchText", searchText);
		map.put("boardFolder_id", boardFolder_id);
		
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int total = mapper.getTotal(map);
		return total;
	}
	
	
	//한 페이지 게시글 목록 읽기
	public ArrayList<BoardVO> listBoard(String searchText, int boardFolder_id, int startRecord, int countPerPage) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("searchText", searchText);
		map.put("boardFolder_id", boardFolder_id);
		
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		//전체 검색 결과 중 읽을 시작위치와 개수
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		
		//검색어와 읽을 범위를 전달
		//ArrayList<BoardVO> boardlist = mapper.listBoard(map, rb);
		ArrayList<BoardVO> boardlist = mapper.listBoard(map);
		
		return boardlist;
	}
	
	
	
	//게시글 삭제
	public int deleteBoard(BoardVO board) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.deleteBoard(board);
		return result;
	}
	
	//첨부삭제
	public int deleteBoardAttached(BoardAttachedVO boardAttached){
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result2 = mapper.deleteBoardAttached(boardAttached);
		return result2;
	}

	
	//게시글 수정
	public int modifyBoard(BoardVO board) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.modifyBoard(board);
		return result;
	}
	
	
	//리플 저장
	public int insertBoardReply(BoardReplyVO reply) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = 0;
		try {
			result = mapper.insertBoardReply(reply);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	//리플 목록 읽기
	public ArrayList<BoardReplyVO> listBoardReply(int boardnum) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		ArrayList<BoardReplyVO> replylist = mapper.listBoardReply(boardnum);
		return replylist;
	}

	
	//리플 삭제
	public int deleteBoardReply(BoardReplyVO reply) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.deleteBoardReply(reply);
		return result;
	}

	
	//리플 수정
	public int modifyBoardReply(BoardReplyVO reply) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.modifyBoardReply(reply);
		return result;
	}
	
	
	
	
	
	
	/*	
	//근태 읽기
	public AttendVO attendGet(int attend_id){
		
		SupportMapper mapper = sqlSession.getMapper(SupportMapper.class);
		AttendVO attend = mapper.attendGet(attend_id);
		
		return attend;
	}
	*/
	
	
/*	
	//근태 목록
	public ArrayList<AttendVO> attendList(){
		
		SupportMapper mapper = sqlSession.getMapper(SupportMapper.class);
		ArrayList<AttendVO> attendList = mapper.attendList();
		
		return attendList;
	}
	*/
}
