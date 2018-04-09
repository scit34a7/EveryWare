package com.a7.everyware.approval.vo;

public class ApprovalHistoryVO {

	int eHistory_id;			//결재 히스토리 아이디
	int eApproval_id;			//전자결재 아이디
	String user_id;				//결재자
	String eHistory_content;	//결재 내용(대기,승인,거절,반려)
	String eHistory_date;		//결재 승인 날짜
	String eHistory_reason;		//결재 승인(반려,거절) 이유
	
	public ApprovalHistoryVO() {
		super();
	}

	public ApprovalHistoryVO(int eHistory_id, int eApproval_id, String user_id, String eHistory_content,
			String eHistory_date, String eHistory_reason) {
		super();
		this.eHistory_id = eHistory_id;
		this.eApproval_id = eApproval_id;
		this.user_id = user_id;
		this.eHistory_content = eHistory_content;
		this.eHistory_date = eHistory_date;
		this.eHistory_reason = eHistory_reason;
	}

	public int geteHistory_id() {
		return eHistory_id;
	}

	public void seteHistory_id(int eHistory_id) {
		this.eHistory_id = eHistory_id;
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

	public String geteHistory_content() {
		return eHistory_content;
	}

	public void seteHistory_content(String eHistory_content) {
		this.eHistory_content = eHistory_content;
	}

	public String geteHistory_date() {
		return eHistory_date;
	}

	public void seteHistory_date(String eHistory_date) {
		this.eHistory_date = eHistory_date;
	}

	public String geteHistory_reason() {
		return eHistory_reason;
	}

	public void seteHistory_reason(String eHistory_reason) {
		this.eHistory_reason = eHistory_reason;
	}

	@Override
	public String toString() {
		return "ApprovalHistoryVO [eHistory_id=" + eHistory_id + ", eApproval_id=" + eApproval_id + ", user_id="
				+ user_id + ", eHistory_content=" + eHistory_content + ", eHistory_date=" + eHistory_date
				+ ", eHistory_reason=" + eHistory_reason + "]";
	}
	
	
}
