package com.a7.everyware.board.vo;

//게시판 폴더구분
public class BoardFolderVO {

	int boardFolder_id;				//폴더구분 아이디
	String boardfolder_name;		//폴더구분 이름
	
	
	public BoardFolderVO() {
		super();
		
	}


	public BoardFolderVO(int boardFolder_id, String boardfolder_name) {
		super();
		this.boardFolder_id = boardFolder_id;
		this.boardfolder_name = boardfolder_name;
	}


	public int getBoardFolder_id() {
		return boardFolder_id;
	}


	public void setBoardFolder_id(int boardFolder_id) {
		this.boardFolder_id = boardFolder_id;
	}


	public String getBoardfolder_name() {
		return boardfolder_name;
	}


	public void setBoardfolder_name(String boardfolder_name) {
		this.boardfolder_name = boardfolder_name;
	}


	@Override
	public String toString() {
		return "BoardFolderVO [boardFolder_id=" + boardFolder_id + ", boardfolder_name=" + boardfolder_name + "]";
	}
	
	
	



}
