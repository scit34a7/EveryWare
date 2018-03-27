package com.a7.everyware.board.vo;

//게시판 폴더구분
public class BoardFolderVO {

	int boardfolder_id;				//폴더구분 아이디
	String boardfolder_name;		//폴더구분 이름
	
	
	public BoardFolderVO() {
		super();
		
	}


	public BoardFolderVO(int boardfolder_id, String boardfolder_name) {
		super();
		this.boardfolder_id = boardfolder_id;
		this.boardfolder_name = boardfolder_name;
	}


	public int getBoardfolder_id() {
		return boardfolder_id;
	}


	public void setBoardfolder_id(int boardfolder_id) {
		this.boardfolder_id = boardfolder_id;
	}


	public String getBoardfolder_name() {
		return boardfolder_name;
	}


	public void setBoardfolder_name(String boardfolder_name) {
		this.boardfolder_name = boardfolder_name;
	}


	@Override
	public String toString() {
		return "BoardFolderVO [boardfolder_id=" + boardfolder_id + ", boardfolder_name=" + boardfolder_name + "]";
	}
	

}
