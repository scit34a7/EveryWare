package com.a7.everyware.approval.vo;

public class ApprovalVO {
	
	int eApproval_id;			//전결제 아이디
	String user_id;				//유저 아이디
	String eApproval_title;		//전자결제 제목
	String eApproval_content;	//전자결제 내용
	String eApproval_sDate;		//전자결제 시작날짜
	String eApproval_fDate;		//전자결제 마감날짜
	int eApprovalLine_id;		//결제선 번호
	String eApproval_saved;		//첨부파일 저장된 파일명
	String eApproval_original;	//첨부파일 원본 파일명
	
	public ApprovalVO() {
		super();
	}

	public ApprovalVO(int eApproval_id, String user_id, String eApproval_title, String eApproval_content,
			String eApproval_sDate, String eApproval_fDate, int eApprovalLine_id, String eApproval_saved,
			String eApproval_original) {
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

	public String geteApproval_content() {
		return eApproval_content;
	}

	public void seteApproval_content(String eApproval_content) {
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

	@Override
	public String toString() {
		return "ApprovalVO [eApproval_id=" + eApproval_id + ", user_id=" + user_id + ", eApproval_title="
				+ eApproval_title + ", eApproval_content=" + eApproval_content + ", eApproval_sDate=" + eApproval_sDate
				+ ", eApproval_fDate=" + eApproval_fDate + ", eApprovalLine_id=" + eApprovalLine_id
				+ ", eApproval_saved=" + eApproval_saved + ", eApproval_original=" + eApproval_original + "]";
	}

	
	

}
