package com.a7.everyware.approval.vo;

import java.util.Arrays;

public class ApprovalFormatVO {
	int approvalFormat_id;				//양식 아이디
	String user_id;						//유저 아이디
	String approvalFormat_name;			//양식 이름
	String approvalFormat_title;		//양식 제목
	byte[] approvalFormat_content;		//양식 내용(바이트)
	String approvalFormat_content2;		//양식 내용(스트링, db에는 존재하지 않는다.)
	
	public ApprovalFormatVO() {
		super();
	}

	public ApprovalFormatVO(int approvalFormat_id, String user_id, String approvalFormat_name,
			String approvalFormat_title, byte[] approvalFormat_content, String approvalFormat_content2) {
		super();
		this.approvalFormat_id = approvalFormat_id;
		this.user_id = user_id;
		this.approvalFormat_name = approvalFormat_name;
		this.approvalFormat_title = approvalFormat_title;
		this.approvalFormat_content = approvalFormat_content;
		this.approvalFormat_content2 = approvalFormat_content2;
	}

	public int getApprovalFormat_id() {
		return approvalFormat_id;
	}

	public void setApprovalFormat_id(int approvalFormat_id) {
		this.approvalFormat_id = approvalFormat_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getApprovalFormat_name() {
		return approvalFormat_name;
	}

	public void setApprovalFormat_name(String approvalFormat_name) {
		this.approvalFormat_name = approvalFormat_name;
	}

	public String getApprovalFormat_title() {
		return approvalFormat_title;
	}

	public void setApprovalFormat_title(String approvalFormat_title) {
		this.approvalFormat_title = approvalFormat_title;
	}

	public byte[] getApprovalFormat_content() {
		return approvalFormat_content;
	}

	public void setApprovalFormat_content(byte[] approvalFormat_content) {
		this.approvalFormat_content = approvalFormat_content;
	}

	public String getApprovalFormat_content2() {
		return approvalFormat_content2;
	}

	public void setApprovalFormat_content2(String approvalFormat_content2) {
		this.approvalFormat_content2 = approvalFormat_content2;
	}

	@Override
	public String toString() {
		return "ApprovalFormatVO [approvalFormat_id=" + approvalFormat_id + ", user_id=" + user_id
				+ ", approvalFormat_name=" + approvalFormat_name + ", approvalFormat_title=" + approvalFormat_title
				+ ", approvalFormat_content=" + Arrays.toString(approvalFormat_content) + ", approvalFormat_content2="
				+ approvalFormat_content2 + "]";
	}
	
	

}
