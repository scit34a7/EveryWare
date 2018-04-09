package com.a7.everyware.board.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.a7.everyware.board.dao.BoardDAO;
import com.a7.everyware.board.util.FileService;
import com.a7.everyware.board.util.PageNavigator;
import com.a7.everyware.board.vo.BoardAttachedVO;
import com.a7.everyware.board.vo.BoardReplyVO;
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
		ArrayList<MultipartFile> upload,
		HttpSession session,
		Model model) {
		
		logger.info("BoardController write para : {}", boardVO);
		logger.debug("BoardController write para {}", upload);
		
		
		//세션에서 로그인한 사용자의 아이디를 읽어서 Board객체의 작성자 정보에 세팅
		String id = (String) session.getAttribute("userId");
		
		boardVO.setUser_id(id);
		
		
		//보드 폴더 아이디 1 : 공지사항.. 나중에 폴더 처리 해야됨-------------
		//boardVO.setBoardfolder_id(1);
		logger.debug("{}", boardVO);
		
		
		if (upload.get(0).getOriginalFilename()!=null && !upload.get(0).getOriginalFilename().equals("")) {
			boardVO.setBoard_attached("T");
			logger.debug("if");
		}else {
			boardVO.setBoard_attached("F");
			logger.debug("else");
		}
		
		boardDAO.insertBoard(boardVO);
		
		boardVO = boardDAO.findBoardId(boardVO);
		
		if(boardVO.getBoard_attached().equals("T")) {
			int attachedCnt = upload.size();
	
			logger.debug("attachedCnt{}", attachedCnt);
			
			for(int i=0; i< attachedCnt; i++){
				
				logger.debug("for문");
				
				BoardAttachedVO boardAttachedVO = new BoardAttachedVO();
				
				boardAttachedVO.setBoard_id(boardVO.getBoard_id());
				
				String savedfile = FileService.saveFile(upload.get(i), uploadPath);
				boardAttachedVO.setbAttached_original(upload.get(i).getOriginalFilename());
				boardAttachedVO.setbAttached_saved(savedfile);
				boardDAO.insertBoardAttached(boardAttachedVO);
				logger.debug("BoardController 첨부파일 저장 para : {} ", boardAttachedVO);
				
			}
		
		}
		
		
		return "redirect:boardList?boardFolder_id=" + boardVO.getBoardFolder_id();
	}

	
	/**
	 * 글 목록
	 * @param page 현재 페이지. 없으면 1로 처리
	 * @param searchText 검색어. 없으면 ""로 처리
	 */
	@RequestMapping (value="boardList", method=RequestMethod.GET)
	public String boardList(
			@RequestParam(value="page", defaultValue="1") int page
			,@RequestParam(value="searchText", defaultValue="") String searchText
			,@RequestParam(value="boardFolder_id", defaultValue="1") int boardFolder_id
			,Model model) {
		logger.debug("page: {}, searchText: {}", page, searchText);
		
		int total = boardDAO.getTotal(searchText, boardFolder_id);			//전체 글 개수
		
		//페이지 계산을 위한 객체 생성
		PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total); 
		
		//검색어와 시작 위치, 페이지당 글 수를 전달하여 목록 읽기
		ArrayList<BoardVO> boardlist = boardDAO.listBoard(searchText, boardFolder_id, navi.getStartRecord(), navi.getCountPerPage());	
	
		//페이지 정보 객체와 글 목록, 검색어를 모델에 저장
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("navi", navi);
		model.addAttribute("searchText", searchText);
		model.addAttribute("boardFolder_id", boardFolder_id);
		return "board/boardList";
	}
	
	
	/**
	 * 글 읽기
	 * @param board_id 읽을 글번호
	 * @return 해당 글 정보
	 */
	@RequestMapping (value="read", method=RequestMethod.GET)
	public String read(int board_id, Model model) {
		//전달된 글 번호로 해당 글정보 읽기
		BoardVO boardVO = boardDAO.get(board_id);
		
		
		if(boardVO.getBoard_attached().equals("T")){
			//첨부읽기
			//board_id para로 주고 결과로 boardAttachedVO 객체를 arrayList형태로 가져와야 함.
			ArrayList<BoardAttachedVO> boardAttachedList = boardDAO.getBoardAttached(board_id);
			model.addAttribute("boardAttachedList", boardAttachedList);
		}
		
		
		//해당 글에 달린 리플목록 읽기
		ArrayList<BoardReplyVO> replylist = boardDAO.listBoardReply(board_id);
		
		
		//본문글정보와 리플목록을 모델에 저장
		model.addAttribute("board", boardVO);
		model.addAttribute("replylist", replylist);
		
		
		return "board/boardRead";
	}

	
	
	/**
	 * 파일 다운로드
	 * @param boardnum 파일이 첨부된 글 번호
	 */
	@RequestMapping(value = "download", method = RequestMethod.GET)
	public String fileDownload(int bAttached_id, Model model, HttpServletResponse response) {
		BoardAttachedVO boardAttachedVO = boardDAO.getAttached(bAttached_id);
		
		logger.debug("{}", bAttached_id);
		
		//원래의 파일명
		String originalfile = new String(boardAttachedVO.getbAttached_original());
		
	
		try {
			response.setHeader("Content-Disposition", " attachment;filename="+ URLEncoder.encode(originalfile, "UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		//저장된 파일 경로
		String fullPath = uploadPath + "/" + boardAttachedVO.getbAttached_saved();
		
		//서버의 파일을 읽을 입력 스트림과 클라이언트에게 전달할 출력스트림
		FileInputStream filein = null;
		ServletOutputStream fileout = null;
		
		try {
			filein = new FileInputStream(fullPath);
			fileout = response.getOutputStream();
			
			//Spring의 파일 관련 유틸
			FileCopyUtils.copy(filein, fileout);
			
			filein.close();
			fileout.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
	}
	
	
	/**
	 * 글 삭제
	 * @param board_id 삭제할 글번호
	 */
	@RequestMapping (value="delete", method=RequestMethod.GET)
	public String delete(int board_id, HttpSession session) {
		String id = (String) session.getAttribute("userId");
		
		//삭제할 글 번호와 본인 글인지 확인할 로그인아이디
		BoardVO board = new BoardVO();
		board.setBoard_id(board_id);
		board.setUser_id(id);
		
		
		board = boardDAO.get(board_id);
		
		if(board.getBoard_attached().equals("T")){
			ArrayList<BoardAttachedVO> boardAttachedList = boardDAO.getBoardAttached(board_id);
			
			for(BoardAttachedVO attached : boardAttachedList){
				//첨부삭제
				boardDAO.deleteBoardAttached(attached);
				FileService.deleteFile(uploadPath + "/" + attached.getbAttached_saved());
			}
			
		}
		
	
		//글 삭제
		int result = boardDAO.deleteBoard(board);
		
	
		return "redirect:boardList?boardFolder_id=" + board.getBoardFolder_id();
	}
	
	/**
	 * 글 수정 폼으로 이동
	 * @param board_id 수정할 글번호
	 * @return 해당 번호의 글 정보
	 */
	@RequestMapping (value="edit", method=RequestMethod.GET)
	public String editForm(int board_id, HttpSession session, Model model) {
		
		BoardVO board = boardDAO.get(board_id);
		model.addAttribute("board", board);
		return "board/editForm";
	}
	
	
	//글 수정
	@RequestMapping (value="edit", method=RequestMethod.POST)
	public String edit(
			BoardVO board,
			ArrayList<MultipartFile> upload,
			HttpSession session) {
		
		board.setBoard_attached("F");
		
		//수정할 글이 로그인한 본인 글인지 확인
		String id = (String) session.getAttribute("userId");
		BoardVO oldBoard = boardDAO.get(board.getBoard_id());

		//보드 폴더 아이디 1 : 공지사항.. 나중에 폴더 처리 해야됨-------------
		board.setBoardFolder_id(1);

		if (oldBoard == null || !oldBoard.getUser_id().equals(id)) {
			return "redirect:boardList?boardFolder_id=" + board.getBoardFolder_id();
		}
		
		//수정할 정보에 로그인 아이디 저장
		board.setUser_id(id);
		
		
		/*//수정시 파일첨부된것도 수정!!!
		//수정 시 새로 첨부한 파일이 있으면 기존 파일을 삭제하고 새로 업로드
		if (!upload.isEmpty()) {
			
			int attachedCnt = upload.size();
			
			logger.debug("attachedCnt{}", attachedCnt);
			
			for(int i = 0; i < attachedCnt; i++){
				logger.debug("for문");
				
				BoardAttachedVO boardAttachedVO = new BoardAttachedVO();
				
				boardAttachedVO.setBoard_id(board.getBoard_id());
				
				//기존 글에 첨부된 파일의 실제 저장된 이름
				String savedfile = oldBoard.getBoard_attached();
				
				
				//기존 파일이 있으면 삭제
				if (savedfile.equals('T')) {
					FileService.deleteFile(uploadPath + "/" + savedfile);
				
					boardAttachedVO.setBoard_id(board.getBoard_id());
				}
				
				//새로 업로드한 파일 저장
				savedfile = FileService.saveFile(upload, uploadPath);
				
				//수정 정보에 새로 저장된 파일명과 원래의 파일명 저장
				boardAttachedVO.setbAttached_original(upload.);
				boardAttachedVO.setbAttached_saved(savedfile);
				
			}
			
		}*/
		
		//글 수정 처리
		boardDAO.modifyBoard(board);
		//원래의 글읽기 화면으로 이동 
		return "redirect:read?board_id=" + board.getBoard_id();
	}
	
	
	
	//리플 저장
	@RequestMapping (value="replyWrite", method=RequestMethod.POST)
	public String replyWrite(
			BoardReplyVO reply, 
			HttpSession session, 
			Model model) {
		
		//세션에서 로그인한 사용자의 아이디를 읽어서 Reply객체의 작성자 정보에 세팅
		String id = (String) session.getAttribute("userId");
		reply.setUser_id(id);
		logger.debug("{}", id);
		//리플 정보를 DB에 저장
		boardDAO.insertBoardReply(reply);
		logger.debug("{}", reply);
		
		//읽던 게시글로 되돌아 감
		return "redirect:read?board_id=" + reply.getBoard_id();
	}

	
	
	//리플 삭제
	@RequestMapping (value="replyDelete", method=RequestMethod.GET)
	public String deleteReply(BoardReplyVO reply, HttpSession session) {
		String id = (String) session.getAttribute("userId");
		
		//삭제할 글 번호와 본인 글인지 확인할 로그인아이디
		reply.setUser_id(id);
		
		boardDAO.deleteBoardReply(reply);
		return "redirect:read?board_id=" + reply.getBoard_id();
	}
	
	
	
	//리플 수정
	@RequestMapping (value="replyEdit", method=RequestMethod.POST)
	public String replyEdit(
			BoardReplyVO reply, 
			HttpSession session) {
		
		//삭제할 리플 정보와 본인 글인지 확인할 로그인아이디
		String id = (String) session.getAttribute("userId");
		reply.setUser_id(id);
		
		//리플  수정 처리
		boardDAO.modifyBoardReply(reply);
		//원래의 글읽기 화면으로 이동 
		return "redirect:read?board_id=" + reply.getBoard_id();
	}
	
}
