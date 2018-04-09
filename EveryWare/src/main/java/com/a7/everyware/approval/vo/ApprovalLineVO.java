package com.a7.everyware.approval.vo;

public class ApprovalLineVO {
	
	int eApprovalLine_id;			//결재선 아이디
	String user_id;					//유저 아이디
	String eApprovalLine_name;		//결재선 이름
	String eApprovalLine_person1;	//결재자1
	String eApprovalLine_person2;	//결재자2
	String eApprovalLine_person3;	//결재자3
	
	public ApprovalLineVO() {
		super();
	}

	public ApprovalLineVO(int eApprovalLine_id, String user_id, String eApprovalLine_name, String eApprovalLine_person1,
			String eApprovalLine_person2, String eApprovalLine_person3) {
		super();
		this.eApprovalLine_id = eApprovalLine_id;
		this.user_id = user_id;
		this.eApprovalLine_name = eApprovalLine_name;
		this.eApprovalLine_person1 = eApprovalLine_person1;
		this.eApprovalLine_person2 = eApprovalLine_person2;
		this.eApprovalLine_person3 = eApprovalLine_person3;
	}

	public int geteApprovalLine_id() {
		return eApprovalLine_id;
	}

	public void seteApprovalLine_id(int eApprovalLine_id) {
		this.eApprovalLine_id = eApprovalLine_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String geteApprovalLine_name() {
		return eApprovalLine_name;
	}

	public void seteApprovalLine_name(String eApprovalLine_name) {
		this.eApprovalLine_name = eApprovalLine_name;
	}

	public String geteApprovalLine_person1() {
		return eApprovalLine_person1;
	}

	public void seteApprovalLine_person1(String eApprovalLine_person1) {
		this.eApprovalLine_person1 = eApprovalLine_person1;
	}

	public String geteApprovalLine_person2() {
		return eApprovalLine_person2;
	}

	public void seteApprovalLine_person2(String eApprovalLine_person2) {
		this.eApprovalLine_person2 = eApprovalLine_person2;
	}

	public String geteApprovalLine_person3() {
		return eApprovalLine_person3;
	}

	public void seteApprovalLine_person3(String eApprovalLine_person3) {
		this.eApprovalLine_person3 = eApprovalLine_person3;
	}

	@Override
	public String toString() {
		return "ApprovalLineVO [eApprovalLine_id=" + eApprovalLine_id + ", user_id=" + user_id + ", eApprovalLine_name="
				+ eApprovalLine_name + ", eApprovalLine_person1=" + eApprovalLine_person1 + ", eApprovalLine_person2="
				+ eApprovalLine_person2 + ", eApprovalLine_person3=" + eApprovalLine_person3 + "]";
	}

	
}
