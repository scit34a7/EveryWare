package com.a7.everyware.support.vo;


//근태 관리VO
public class AttendVO {

	int attend_id;			//근태 아이디
	String user_id;			//유저 아이디
	String attend_check;	//근태 확인
	String attend_time;		//근태 시간
	
	
	
	public AttendVO() {
		super();
		// TODO Auto-generated constructor stub
	}



	public AttendVO(int attend_id, String user_id, String attend_check, String attend_time) {
		super();
		this.attend_id = attend_id;
		this.user_id = user_id;
		this.attend_check = attend_check;
		this.attend_time = attend_time;
	}



	public int getAttend_id() {
		return attend_id;
	}



	public void setAttend_id(int attend_id) {
		this.attend_id = attend_id;
	}



	public String getUser_id() {
		return user_id;
	}



	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}



	public String getAttend_check() {
		return attend_check;
	}



	public void setAttend_check(String attend_check) {
		this.attend_check = attend_check;
	}



	public String getAttend_time() {
		return attend_time;
	}



	public void setAttend_time(String attend_time) {
		this.attend_time = attend_time;
	}



	@Override
	public String toString() {
		return "AttendVO [attend_id=" + attend_id + ", user_id=" + user_id + ", attend_check=" + attend_check
				+ ", attend_time=" + attend_time + "]";
	}
	

	
	
}
