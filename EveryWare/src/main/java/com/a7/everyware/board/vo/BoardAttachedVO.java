package com.a7.everyware.board.vo;

//게시판 첨부파일
public class BoardAttachedVO {

	int bAttached_id;			//첨부 아이디
	int board_id;				//게시글 번호
	String bAttached_saved;		//저장
	String bAttached_original;	//원본
	
	
	public BoardAttachedVO() {
		super();
		
	}


	public BoardAttachedVO(int bAttached_id, int board_id, String bAttached_saved, String bAttached_original) {
		super();
		this.bAttached_id = bAttached_id;
		this.board_id = board_id;
		this.bAttached_saved = bAttached_saved;
		this.bAttached_original = bAttached_original;
	}


	public int getbAttached_id() {
		return bAttached_id;
	}


	public void setbAttached_id(int bAttached_id) {
		this.bAttached_id = bAttached_id;
	}


	public int getBoard_id() {
		return board_id;
	}


	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}


	public String getbAttached_saved() {
		return bAttached_saved;
	}


	public void setbAttached_saved(String bAttached_saved) {
		this.bAttached_saved = bAttached_saved;
	}


	public String getbAttached_original() {
		return bAttached_original;
	}


	public void setbAttached_original(String bAttached_original) {
		this.bAttached_original = bAttached_original;
	}


	@Override
	public String toString() {
		return "BoardAttachedVO [bAttached_id=" + bAttached_id + ", board_id=" + board_id + ", bAttached_saved="
				+ bAttached_saved + ", bAttached_original=" + bAttached_original + "]";
	}
	
	
}
