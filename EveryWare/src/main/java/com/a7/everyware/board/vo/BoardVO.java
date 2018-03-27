package com.a7.everyware.board.vo;

//게시판
public class BoardVO {

	int board_id;				//게시판 아이디
	String board_title;			//게시판 제목
	String board_content;		//게시판 내용
	String user_id;				//글쓴이
	String board_date;			//글쓴 날짜
	boolean board_attached;		//첨부파일 여부
	int boardfolder_id;			//폴더구분 아이디
	int board_hits;				//조회수
	
	
	public BoardVO() {
		super();
		
	}


	public BoardVO(int board_id, String board_title, String board_content, String user_id, String board_date,
			boolean board_attached, int boardfolder_id, int board_hits) {
		super();
		this.board_id = board_id;
		this.board_title = board_title;
		this.board_content = board_content;
		this.user_id = user_id;
		this.board_date = board_date;
		this.board_attached = board_attached;
		this.boardfolder_id = boardfolder_id;
		this.board_hits = board_hits;
	}


	public int getBoard_id() {
		return board_id;
	}


	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}


	public String getBoard_title() {
		return board_title;
	}


	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}


	public String getBoard_content() {
		return board_content;
	}


	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getBoard_date() {
		return board_date;
	}


	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}


	public boolean isBoard_attached() {
		return board_attached;
	}


	public void setBoard_attached(boolean board_attached) {
		this.board_attached = board_attached;
	}


	public int getBoardfolder_id() {
		return boardfolder_id;
	}


	public void setBoardfolder_id(int boardfolder_id) {
		this.boardfolder_id = boardfolder_id;
	}


	public int getBoard_hits() {
		return board_hits;
	}


	public void setBoard_hits(int board_hits) {
		this.board_hits = board_hits;
	}


	@Override
	public String toString() {
		return "BoardVO [board_id=" + board_id + ", board_title=" + board_title + ", board_content=" + board_content
				+ ", user_id=" + user_id + ", board_date=" + board_date + ", board_attached=" + board_attached
				+ ", boardfolder_id=" + boardfolder_id + ", board_hits=" + board_hits + "]";
	}

	
}
