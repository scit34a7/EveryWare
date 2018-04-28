package com.a7.everyware.support.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletOutputStream;
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
import org.springframework.web.multipart.MultipartFile;

import com.a7.everyware.support.dao.SupportDAO;
import com.a7.everyware.support.vo.AttendVO;
import com.a7.everyware.board.dao.BoardDAO;
import com.a7.everyware.board.util.FileService;
import com.a7.everyware.board.util.PageNavigator;
import com.a7.everyware.board.vo.BoardAttachedVO;
import com.a7.everyware.board.vo.BoardReplyVO;
import com.a7.everyware.board.vo.BoardVO;


//업무지원 컨트롤러
@Controller
@RequestMapping(value="support")
public class SupportController {

	private static final Logger logger = LoggerFactory.getLogger(SupportController.class);
	
	
	@Autowired
	SupportDAO supportDAO;
	BoardDAO boardDAO;
	
	
	//게시판 관련 상수값들
	final int countPerPage = 10;				//페이지 당 글 수
	final int pagePerGroup = 5;					//페이지 이동 그룹 당 표시할 페이지 수
	final String uploadPath = "/boardfile";		//파일 업로드 경로

	
	
	//업무지원 메인 이동
	@RequestMapping (value="supportMain", method=RequestMethod.GET)
	public String supportMain() {
		
	
		return "support/supportMain";
	}
	
	
	//출근체크
	@RequestMapping (value="attendCheck", method=RequestMethod.POST)
	public String attendCheck(AttendVO attendVO, HttpSession session, Model model) {
		
		logger.debug("SupportController attendCheck para {}", attendVO);
		
		//세션에서 로그인한 사용자 아이디를 읽어 Attend객체의 사용자 정보에 세팅
		String id = (String) session.getAttribute("userId");
		attendVO.setUser_id(id);
		
		attendVO.setAttend_check("출근");
		logger.debug("SupportController attendCheck para {}", attendVO);
		
		supportDAO.attendCheck(attendVO);
		
		logger.debug("어텐드 객체{}", attendVO);
		
		
		//어레이리스트 생성
		ArrayList<AttendVO> attendList = new ArrayList<AttendVO>();
		
		
		//다오에서 리스트를 받아서 저장
		attendList = supportDAO.attendListGet(id);
		
		//모델에 넣는다
		model.addAttribute("attendList", attendList);
		
		
		
		//출퇴근 확인하던 업무지원 메인페이지로 이동
		return "redirect:attendList";
	}
	
	
	//퇴근체크
	@RequestMapping (value="attendOut", method=RequestMethod.POST)
	public String attendOut(AttendVO attendVO, HttpSession session, Model model) {
		
		logger.debug("SupportController attendCheck para {}", attendVO);
		
		//세션에서 로그인한 사용자 아이디를 읽어 Attend객체의 사용자 정보에 세팅
		String id = (String) session.getAttribute("userId");
		attendVO.setUser_id(id);
		
		attendVO.setAttend_check("퇴근");
		logger.debug("SupportController attendCheck para {}", attendVO);
		
		supportDAO.attendOut(attendVO);
		
		logger.debug("어텐드 객체{}", attendVO);
		
		
		//어레이리스트 생성
		ArrayList<AttendVO> attendList = new ArrayList<AttendVO>();
		
		
		//다오에서 리스트를 받아서 저장
		attendList = supportDAO.attendListGet(id);
		
		//모델에 넣는다
		model.addAttribute("attendList", attendList);
		
		
		
		//출퇴근 확인하던 업무지원 메인페이지로 이동
		return "redirect:attendList";
	}
	
	
	//외출체크
	@RequestMapping (value="goOut", method=RequestMethod.POST)
	public String goOut(AttendVO attendVO, HttpSession session, Model model) {
		
		logger.debug("SupportController attendCheck para {}", attendVO);
		
		//세션에서 로그인한 사용자 아이디를 읽어 Attend객체의 사용자 정보에 세팅
		String id = (String) session.getAttribute("userId");
		attendVO.setUser_id(id);
		
		attendVO.setAttend_check("외출");
		logger.debug("SupportController attendCheck para {}", attendVO);
		
		supportDAO.attendOut(attendVO);
		
		logger.debug("어텐드 객체{}", attendVO);
		
		
		//어레이리스트 생성
		ArrayList<AttendVO> attendList = new ArrayList<AttendVO>();
		
		
		//다오에서 리스트를 받아서 저장
		attendList = supportDAO.attendListGet(id);
		
		//모델에 넣는다
		model.addAttribute("attendList", attendList);
		
		
		
		//출퇴근 확인하던 업무지원 메인페이지로 이동
		return "redirect:attendList";
	}
		
	
	//외출복귀
	@RequestMapping (value="goIn", method=RequestMethod.POST)
	public String goIn(AttendVO attendVO, HttpSession session, Model model) {
		
		logger.debug("SupportController attendCheck para {}", attendVO);
		
		//세션에서 로그인한 사용자 아이디를 읽어 Attend객체의 사용자 정보에 세팅
		String id = (String) session.getAttribute("userId");
		attendVO.setUser_id(id);
		
		attendVO.setAttend_check("복귀");
		logger.debug("SupportController attendCheck para {}", attendVO);
		
		supportDAO.attendOut(attendVO);
		
		logger.debug("어텐드 객체{}", attendVO);
		
		
		//어레이리스트 생성
		ArrayList<AttendVO> attendList = new ArrayList<AttendVO>();
		
		
		//다오에서 리스트를 받아서 저장
		attendList = supportDAO.attendListGet(id);
		
		//모델에 넣는다
		model.addAttribute("attendList", attendList);
		
		
		
		//출퇴근 확인하던 업무지원 메인페이지로 이동
		return "redirect:attendList";
	}
	
	
	//내 근태목록
	@RequestMapping(value="attendList", method=RequestMethod.GET)
	public String attendList(AttendVO attendVO, Model model, HttpSession session){
		
		
		//세션에서 로그인한 사용자 아이디를 읽어 Attend객체의 사용자 정보에 세팅
		String id = (String) session.getAttribute("userId");
		attendVO.setUser_id(id);
		

		logger.debug("user_id : {}", id);
		
		ArrayList<AttendVO> attendList = supportDAO.attendListGet(id);
		
		model.addAttribute("attendList", attendList);
		
		return "support/attendList";
	}
	
	
	
	
	//업무보고 폼 보기
	@RequestMapping (value="write", method=RequestMethod.GET)
	public String writeForm(int boardFolder_id, Model model) {
		
		model.addAttribute("boardFolder_id", boardFolder_id);
		
		return "support/writeForm";
	}
		
	
	//업무보고 저장 처리
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
		
		
		
		logger.debug("{}", boardVO);
		
		
		if (upload.get(0).getOriginalFilename()!=null && !upload.get(0).getOriginalFilename().equals("")) {
			boardVO.setBoard_attached("T");
			logger.debug("if");
		}else {
			boardVO.setBoard_attached("F");
			logger.debug("else");
		}
		
		supportDAO.insertBoard(boardVO);
		
		boardVO = supportDAO.findBoardId(boardVO);
		
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
				supportDAO.insertBoardAttached(boardAttachedVO);
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
			,@RequestParam(value="boardFolder_id", defaultValue="4") int boardFolder_id
			,Model model) {
		logger.debug("page: {}, searchText: {}", page, searchText);
		
		int total = supportDAO.getTotal(searchText, boardFolder_id);			//전체 글 개수
		
		//페이지 계산을 위한 객체 생성
		PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total); 
		
		//검색어와 시작 위치, 페이지당 글 수를 전달하여 목록 읽기
		ArrayList<BoardVO> boardlist = supportDAO.listBoard(searchText, boardFolder_id, navi.getStartRecord(), navi.getCountPerPage());	
	
		//페이지 정보 객체와 글 목록, 검색어를 모델에 저장
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("navi", navi);
		model.addAttribute("searchText", searchText);
		model.addAttribute("boardFolder_id", boardFolder_id);
		
		
		//return "redirect:boardList?boardFolder_id=4";
		return "support/boardList";
	}
	
	
	/**
	 * 글 읽기
	 * @param board_id 읽을 글번호
	 * @return 해당 글 정보
	 */
	@RequestMapping (value="read", method=RequestMethod.GET)
	public String read(int board_id, Model model) {
		//전달된 글 번호로 해당 글정보 읽기
		BoardVO boardVO = supportDAO.get(board_id);
		
		
		if(boardVO.getBoard_attached().equals("T")){
			//첨부읽기
			//board_id para로 주고 결과로 boardAttachedVO 객체를 arrayList형태로 가져와야 함.
			ArrayList<BoardAttachedVO> boardAttachedList = supportDAO.getBoardAttached(board_id);
			model.addAttribute("boardAttachedList", boardAttachedList);
		}
		
		
		//해당 글에 달린 리플목록 읽기
		ArrayList<BoardReplyVO> replylist = supportDAO.listBoardReply(board_id);
		
		
		//본문글정보와 리플목록을 모델에 저장
		model.addAttribute("board", boardVO);
		model.addAttribute("replylist", replylist);
		
		
		return "support/boardRead";
	}

	
	
	/**
	 * 파일 다운로드
	 * @param boardnum 파일이 첨부된 글 번호
	 */
	@RequestMapping(value = "download", method = RequestMethod.GET)
	public String fileDownload(int bAttached_id, Model model, HttpServletResponse response) {
		BoardAttachedVO boardAttachedVO = supportDAO.getAttached(bAttached_id);
		
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
		String name = (String) session.getAttribute("userName");
		
		//삭제할 글 번호와 본인 글인지 확인할 로그인아이디
		BoardVO board = new BoardVO();
		board.setBoard_id(board_id);
		
		
		
		board = supportDAO.get(board_id);
		
		if(board.getBoard_attached().equals("T")){
			ArrayList<BoardAttachedVO> boardAttachedList = supportDAO.getBoardAttached(board_id);
			
			for(BoardAttachedVO attached : boardAttachedList){
				//첨부삭제
				supportDAO.deleteBoardAttached(attached);
				FileService.deleteFile(uploadPath + "/" + attached.getbAttached_saved());
			}
			
		}
		
		board.setUser_id(id);
		//글 삭제
		int result = supportDAO.deleteBoard(board);
		
	
		return "redirect:boardList?boardFolder_id=" + board.getBoardFolder_id();
	}
	
	/**
	 * 글 수정 폼으로 이동
	 * @param board_id 수정할 글번호
	 * @return 해당 번호의 글 정보
	 */
	@RequestMapping (value="edit", method=RequestMethod.GET)
	public String editForm(int board_id, HttpSession session, Model model) {
		
		BoardVO board = supportDAO.get(board_id);
		model.addAttribute("board", board);
		return "support/editForm";
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
		String name = (String) session.getAttribute("userName");
		BoardVO oldBoard = supportDAO.get(board.getBoard_id());

	
		if (oldBoard == null || !oldBoard.getUser_id().equals(name)) {
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
		supportDAO.modifyBoard(board);
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
		supportDAO.insertBoardReply(reply);
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
		
		supportDAO.deleteBoardReply(reply);
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
		supportDAO.modifyBoardReply(reply);
		//원래의 글읽기 화면으로 이동 
		return "redirect:read?board_id=" + reply.getBoard_id();
	}

	
	
	
	
/*	
	//근태읽기
	@RequestMapping (value="attendGet", method=RequestMethod.GET)
	public String attendGet(int attend_id, Model model) {
		//전달된 attend_id로 해당 근태 목록 읽기
		AttendVO attendVO = supportDAO.attendGet(attend_id);
		
		logger.debug("SupportController attendGet para {}", attendVO);
		
		
		//supportDAO.attendGet(attend_id);
		
		//근태 목록을 모델에 저장
		model.addAttribute("attend", attendVO);
		
		return "support/attendGet";
	}
	
	*/
	
}
