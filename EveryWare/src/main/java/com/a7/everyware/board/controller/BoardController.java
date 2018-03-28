package com.a7.everyware.board.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.a7.everyware.board.dao.BoardDAO;
import com.a7.everyware.board.util.PageNavigator;
import com.a7.everyware.board.vo.BoardVO;




//게시판 컨트롤러
@Controller
@RequestMapping(value="board")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardDAO BoardDAO;
	
	//게시판 관련 상수값들
	final int countPerPage = 10;				//페이지 당 글 수
	final int pagePerGroup = 5;					//페이지 이동 그룹 당 표시할 페이지 수
	final String uploadPath = "/boardfile";		//파일 업로드 경로
	
	
	//글쓰기 폼 보기
	@RequestMapping (value="write", method=RequestMethod.GET)
	public String writeForm() {
		return "board/writeForm";
	}
	
	
	//글 저장 처리
	@RequestMapping (value="write", method=RequestMethod.POST)
	public String write(
		BoardVO BoardVO, 
		MultipartFile upload,
		HttpSession session, 
		Model model) {
		
		//세션에서 로그인한 사용자의 아이디를 읽어서 Board객체의 작성자 정보에 세팅
		String id = (String) session.getAttribute("userId");
		BoardVO.setUser_id(id);
		
		//아래 첨부파일 설정....
		
		BoardDAO.insertBoard(BoardVO);
		
		return "redirect:boardList";
	}
	
	
	/**
	 * 글 목록
	 * @param page 현재 페이지. 없으면 1로 처리
	 * @param searchText 검색어. 없으면 ""로 처리
	 */
	@RequestMapping (value="list", method=RequestMethod.GET)
	public String list(
			@RequestParam(value="page", defaultValue="1") int page,
			@RequestParam(value="searchText", defaultValue="") String searchText,
			Model model) {
		logger.debug("page: {}, searchText: {}", page, searchText);
		
		int total = BoardDAO.getTotal(searchText);			//전체 글 개수
		
		//페이지 계산을 위한 객체 생성
		PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total); 
		
		//검색어와 시작 위치, 페이지당 글 수를 전달하여 목록 읽기
		ArrayList<BoardVO> boardlist = BoardDAO.listBoard(searchText, navi.getStartRecord(), navi.getCountPerPage());	
		
		//페이지 정보 객체와 글 목록, 검색어를 모델에 저장
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("navi", navi);
		model.addAttribute("searchText", searchText);
		return "board/boardList";
	}
	
	

	
}
