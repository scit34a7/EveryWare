package com.a7.everyware.board.vo;

//게시판 폴더구분
public class BoardFolderVO {

	int boardFolder_id;				//폴더구분 아이디
	String boardFolder_name;		//폴더구분 이름
	
	
	public BoardFolderVO() {
		super();
		
	}


	public BoardFolderVO(int boardFolder_id, String boardFolder_name) {
		super();
		this.boardFolder_id = boardFolder_id;
		this.boardFolder_name = boardFolder_name;
	}


	public int getBoardFolder_id() {
		return boardFolder_id;
	}


	public void setBoardFolder_id(int boardFolder_id) {
		this.boardFolder_id = boardFolder_id;
	}


	public String getBoardFolder_name() {
		return boardFolder_name;
	}


	public void setBoardFolder_name(String boardFolder_name) {
		this.boardFolder_name = boardFolder_name;
	}


	@Override
	public String toString() {
		return "BoardFolderVO [boardFolder_id=" + boardFolder_id + ", boardFolder_name=" + boardFolder_name + "]";
	}


}
