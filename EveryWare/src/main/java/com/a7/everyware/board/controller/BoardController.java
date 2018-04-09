package com.a7.everyware.board.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.a7.everyware.board.dao.BoardDAO;
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
	
	

	
}
