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
	BoardDAO boardDAO;
	
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
		BoardVO boardVO, 
		MultipartFile upload,
		HttpSession session, 
		Model model) {
		
		logger.info("BoardController write para : {}", boardVO);
		
		boardVO.setBoard_attached("F");
		
		//세션에서 로그인한 사용자의 아이디를 읽어서 Board객체의 작성자 정보에 세팅
		String id = (String) session.getAttribute("userId");
		
		boardVO.setUser_id(id);
		//보드 폴더 아이디 1 : 공지사항.. 나중에 폴더 처리 해야됨
		boardVO.setBoardfolder_id(1);
		logger.debug("{}", boardVO);
		
		//아래 첨부파일 설정....
		
		boardDAO.insertBoard(boardVO);
		
		return "redirect:boardList";
	}
	
	
	/**
	 * 글 목록
	 * @param page 현재 페이지. 없으면 1로 처리
	 * @param searchText 검색어. 없으면 ""로 처리
	 */
	@RequestMapping (value="boardList", method=RequestMethod.GET)
	public String boardList(
			@RequestParam(value="page", defaultValue="1") int page,
			@RequestParam(value="searchText", defaultValue="") String searchText,
			Model model) {
		logger.debug("page: {}, searchText: {}", page, searchText);
		
		int total = boardDAO.getTotal(searchText);			//전체 글 개수
		
		//페이지 계산을 위한 객체 생성
		PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total); 
		
		//검색어와 시작 위치, 페이지당 글 수를 전달하여 목록 읽기
		ArrayList<BoardVO> boardlist = boardDAO.listBoard(searchText, navi.getStartRecord(), navi.getCountPerPage());	
		
		//페이지 정보 객체와 글 목록, 검색어를 모델에 저장
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("navi", navi);
		model.addAttribute("searchText", searchText);
		return "board/boardList";
	}
	
	
	/**
	 * 글 읽기
	 * @param boardnum 읽을 글번호
	 * @return 해당 글 정보
	 */
	@RequestMapping (value="read", method=RequestMethod.GET)
	public String read(int board_id, Model model) {
		//전달된 글 번호로 해당 글정보 읽기
		BoardVO boardVO = boardDAO.get(board_id);
		if (boardVO == null) {
			return "redirect:boardList";
		}
		
		//해당 글에 달린 리플목록 읽기
		//ArrayList<ReplyVO> replylist = boardDAO.listReply(board_id);
		
		//본문글정보와 리플목록을 모델에 저장
		model.addAttribute("board", boardVO);
		//model.addAttribute("replylist", replylist);
		
		return "board/boardRead";
	}

	/**
	 * 글 삭제
	 * @param boardnum 삭제할 글번호
	 */
	@RequestMapping (value="delete", method=RequestMethod.GET)
	public String delete(int board_id, HttpSession session) {
		String id = (String) session.getAttribute("userId");
		
		//삭제할 글 번호와 본인 글인지 확인할 로그인아이디
		BoardVO board = new BoardVO();
		board.setBoard_id(board_id);
		board.setUser_id(id);
		
		//첨부된 파일이 있는지 먼저 확인
		//String savedfile = boardDAO.get(board_id).getBoard_attached();
		
		//글 삭제
		int result = boardDAO.deleteBoard(board);
		
		//글 삭제 성공 and 첨부된 파일이 있는 경우 파일도 삭제
		/*if (result == 1 && savedfile != null) {
			FileService.deleteFile(uploadPath + "/" + savedfile);
		}*/
		
		return "redirect:boardList";
	}
	
	/**
	 * 글 수정 폼으로 이동
	 * @param boardnum 수정할 글번호
	 * @return 해당 번호의 글 정보
	 */
	@RequestMapping (value="edit", method=RequestMethod.GET)
	public String editForm(int board_id, HttpSession session, Model model) {
		
		BoardVO board = boardDAO.get(board_id);
		model.addAttribute("board", board);
		return "board/editForm";
	}
	
	/**
	 * 글 수정 처리
	 * @param board 수정할 글 정보
	 */
	@RequestMapping (value="edit", method=RequestMethod.POST)
	public String edit(
			BoardVO board, 
			MultipartFile upload,
			HttpSession session) {
		
		//수정할 글이 로그인한 본인 글인지 확인
		String id = (String) session.getAttribute("userId");
		BoardVO oldBoard = boardDAO.get(board.getBoard_id());
		if (oldBoard == null || !oldBoard.getUser_id().equals(id)) {
			return "redirect:boardList";
		}
		
		//수정할 정보에 로그인 아이디 저장
		board.setUser_id(id);
		
		//수정 시 새로 첨부한 파일이 있으면 기존 파일을 삭제하고 새로 업로드
		/*if (!upload.isEmpty()) {
			//기존 글에 첨부된 파일의 실제 저장된 이름
			String savedfile = oldBoard.getSavedfile();
			//기존 파일이 있으면 삭제
			if (savedfile != null) {
				FileService.deleteFile(uploadPath + "/" + savedfile);
			}
			
			//새로 업로드한 파일 저장
			savedfile = FileService.saveFile(upload, uploadPath);
			
			//수정 정보에 새로 저장된 파일명과 원래의 파일명 저장
			board.setOriginalfile(upload.getOriginalFilename());
			board.setSavedfile(savedfile);
		}
		*/
		
		//글 수정 처리
		boardDAO.modifyBoard(board);
		//원래의 글읽기 화면으로 이동 
		return "redirect:read?board_id=" + board.getBoard_id();
	}
	
}
