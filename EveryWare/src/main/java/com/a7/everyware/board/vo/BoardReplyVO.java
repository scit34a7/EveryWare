package com.a7.everyware.board.vo;

//게시판 리플
public class BoardReplyVO {

	int bReply_id;				//리플 아이디
	int board_id;				//게시글 번호
	String bReply_content;		//내용
	String bReply_date;			//작성일
	String user_id;				//작성자
	
	
	public BoardReplyVO() {
		super();
		
	}


	public BoardReplyVO(int bReply_id, int board_id, String bReply_content, String bReply_date, String user_id) {
		super();
		this.bReply_id = bReply_id;
		this.board_id = board_id;
		this.bReply_content = bReply_content;
		this.bReply_date = bReply_date;
		this.user_id = user_id;
	}


	public int getbReply_id() {
		return bReply_id;
	}


	public void setbReply_id(int bReply_id) {
		this.bReply_id = bReply_id;
	}


	public int getBoard_id() {
		return board_id;
	}


	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}


	public String getbReply_content() {
		return bReply_content;
	}


	public void setbReply_content(String bReply_content) {
		this.bReply_content = bReply_content;
	}


	public String getbReply_date() {
		return bReply_date;
	}


	public void setbReply_date(String bReply_date) {
		this.bReply_date = bReply_date;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	@Override
	public String toString() {
		return "BoardReplyVO [bReply_id=" + bReply_id + ", board_id=" + board_id + ", bReply_content=" + bReply_content
				+ ", bReply_date=" + bReply_date + ", user_id=" + user_id + "]";
	}

}
