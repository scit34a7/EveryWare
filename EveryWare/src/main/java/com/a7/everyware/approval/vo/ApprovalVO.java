package com.a7.everyware.approval.vo;

import java.nio.charset.StandardCharsets;

public class ApprovalVO {
	
	int eApproval_id;			//전결제 아이디
	String user_id;				//유저 아이디
	String eApproval_title;		//전자결제 제목
	byte[] eApproval_content;	//전자결재 내용 byte[]
	String eApproval_content2;	//전자결재 내용 String
	String eApproval_sDate;		//전자결제 시작날짜
	String eApproval_fDate;		//전자결제 마감날짜
	int eApprovalLine_id;		//결제선 번호
	String eApproval_saved;		//첨부파일 저장된 파일명
	String eApproval_original;	//첨부파일 원본 파일명
	String eApproval_status;	//테이브에는 없고 VO에만 있는 항목, 반려or거절이 들어간다.
	int eApproval_fileSize;		//첨붚파일 사이즈
	
	public ApprovalVO() {
		super();
	}

	public ApprovalVO(int eApproval_id, String user_id, String eApproval_title, byte[] eApproval_content,
			String eApproval_sDate, String eApproval_fDate, int eApprovalLine_id, String eApproval_saved,
			String eApproval_original, String eApproval_status, int eApproval_fileSize) {
		super();
		this.eApproval_id = eApproval_id;
		this.user_id = user_id;
		this.eApproval_title = eApproval_title;
		this.eApproval_content = eApproval_content;
		this.eApproval_sDate = eApproval_sDate;
		this.eApproval_fDate = eApproval_fDate;
		this.eApprovalLine_id = eApprovalLine_id;
		this.eApproval_saved = eApproval_saved;
		this.eApproval_original = eApproval_original;
		this.eApproval_status = eApproval_status;
		this.eApproval_fileSize = eApproval_fileSize;
	}

	public int geteApproval_id() {
		return eApproval_id;
	}

	public void seteApproval_id(int eApproval_id) {
		this.eApproval_id = eApproval_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String geteApproval_title() {
		return eApproval_title;
	}

	public void seteApproval_title(String eApproval_title) {
		this.eApproval_title = eApproval_title;
	}

	public byte[] geteApproval_content() {
		return eApproval_content;
	}

	public void seteApproval_content(byte[] eApproval_content) {
		this.eApproval_content = eApproval_content;
	}

	public String geteApproval_sDate() {
		return eApproval_sDate;
	}

	public void seteApproval_sDate(String eApproval_sDate) {
		this.eApproval_sDate = eApproval_sDate;
	}

	public String geteApproval_fDate() {
		return eApproval_fDate;
	}

	public void seteApproval_fDate(String eApproval_fDate) {
		this.eApproval_fDate = eApproval_fDate;
	}

	public int geteApprovalLine_id() {
		return eApprovalLine_id;
	}

	public void seteApprovalLine_id(int eApprovalLine_id) {
		this.eApprovalLine_id = eApprovalLine_id;
	}

	public String geteApproval_saved() {
		return eApproval_saved;
	}

	public void seteApproval_saved(String eApproval_saved) {
		this.eApproval_saved = eApproval_saved;
	}

	public String geteApproval_original() {
		return eApproval_original;
	}

	public void seteApproval_original(String eApproval_original) {
		this.eApproval_original = eApproval_original;
	}

	public String geteApproval_status() {
		return eApproval_status;
	}

	public void seteApproval_status(String eApproval_status) {
		this.eApproval_status = eApproval_status;
	}	

	public String geteApproval_content2() {
		return eApproval_content2;
	}

	public void seteApproval_content2(String eApproval_content2) {
		this.eApproval_content2 = eApproval_content2;
	}
	
	
	public int geteApproval_fileSize() {
		return eApproval_fileSize;
	}

	public void seteApproval_fileSize(int eApproval_fileSize) {
		this.eApproval_fileSize = eApproval_fileSize;
	}

	/**
	 * eApproval_content를 eApproval_content2 변환해서 setting까지
	 */
	public void byteToString(){
		eApproval_content2 = new String(eApproval_content, StandardCharsets.UTF_8);
	}
	
	@Override
	public String toString() {
		return "ApprovalVO [eApproval_id=" + eApproval_id + ", user_id=" + user_id + ", eApproval_title="
				+ eApproval_title + ", eApproval_content2=" + eApproval_content2 + ", eApproval_sDate="
				+ eApproval_sDate + ", eApproval_fDate=" + eApproval_fDate + ", eApprovalLine_id=" + eApprovalLine_id
				+ ", eApproval_saved=" + eApproval_saved + ", eApproval_original=" + eApproval_original
				+ ", eApproval_status=" + eApproval_status + ", eApproval_fileSize=" + eApproval_fileSize + "]";
	}

	
	

}
