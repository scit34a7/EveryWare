package com.a7.everyware;

import java.util.ArrayList;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.a7.everyware.board.dao.BoardDAO;
import com.a7.everyware.board.vo.BoardVO;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//공지사항 읽을 때
	@Autowired
	BoardDAO boardDAO;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "home";
	}
	

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(
			@RequestParam(value="boardFolder_id", defaultValue="1") int boardFolder_id
			, Model model) {
		
		ArrayList<BoardVO> boardlist = boardDAO.listBoardMain(boardFolder_id);
		
		model.addAttribute("boardlist", boardlist);
		
		return "index";
	}
	
	@RequestMapping(value = "appviews-file-manager", method = RequestMethod.GET)
	public String appviews_file_manager() {
		return "appviews-file-manager";
	}
	
	@RequestMapping(value = "appviews-inbox", method = RequestMethod.GET)
	public String appviews_inbox() {
		return "appviews-inbox";
	}
	
	@RequestMapping(value = "appviews-inbox-inbox", method = RequestMethod.GET)
	public String appviews_inbox_inbox() {
		return "appviews-inbox-inbox";
	}
	
	@RequestMapping(value = "appviews-inbox-write", method = RequestMethod.GET)
	public String appviews_inbox_write() {
		return "appviews-inbox-write";
	}
	
	@RequestMapping(value = "appviews-inbox-read", method = RequestMethod.GET)
	public String appviews_inbox_read() {
		return "appviews-inbox-read";
	}
	
	
	@RequestMapping(value = "appviews-project-detail", method = RequestMethod.GET)
	public String appviews_project_detail() {
		return "appviews-project-detail";
	}
	
	@RequestMapping(value = "appviews-projects", method = RequestMethod.GET)
	public String appviews_projects() {
		return "appviews-projects";
	}
}
