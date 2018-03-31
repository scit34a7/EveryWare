package com.a7.everyware.approval.vo;

public class ApprovalVO {
	
	int eApproval_id;			//전결제 아이디
	String user_id;				//유저 아이디
	String eApproval_title;		//전자결제 제목
	String eApproval_content;	//전자결제 내용
	String eApproval_sDAte;		//전자결제 시작날짜
	String eApproval_fDate;		//전자결제 마감날짜
	int eApprovalLine_id;		//결제선 번호
	String eApproval_attached;	//첨부파일 여부
	
	public ApprovalVO() {
		super();
	}

	public ApprovalVO(int eApproval_id, String user_id, String eApproval_title, String eApproval_content,
			String eApproval_sDAte, String eApproval_fDate, int eApprovalLine_id, String eApproval_attached) {
		super();
		this.eApproval_id = eApproval_id;
		this.user_id = user_id;
		this.eApproval_title = eApproval_title;
		this.eApproval_content = eApproval_content;
		this.eApproval_sDAte = eApproval_sDAte;
		this.eApproval_fDate = eApproval_fDate;
		this.eApprovalLine_id = eApprovalLine_id;
		this.eApproval_attached = eApproval_attached;
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

	public String geteApproval_sDAte() {
		return eApproval_sDAte;
	}

	public void seteApproval_sDAte(String eApproval_sDAte) {
		this.eApproval_sDAte = eApproval_sDAte;
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

	public String geteApproval_attached() {
		return eApproval_attached;
	}

	public void seteApproval_attached(String eApproval_attached) {
		this.eApproval_attached = eApproval_attached;
	}

	@Override
	public String toString() {
		return "ApprovalVO [eApproval_id=" + eApproval_id + ", user_id=" + user_id + ", eApproval_title="
				+ eApproval_title + ", eApproval_content=" + eApproval_content + ", eApproval_sDAte=" + eApproval_sDAte
				+ ", eApproval_fDate=" + eApproval_fDate + ", eApprovalLine_id=" + eApprovalLine_id
				+ ", eApproval_attached=" + eApproval_attached + "]";
	}
	
	
	

}
