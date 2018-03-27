package com.a7.everyware.user.vo;

public class UserVO {
	
	String user_id;			//유저 아이디
	String user_pw;			//유저 비밀번호
	String user_name;		//유저 이름
	String dept_name;		//유저 부서
	String position_name;	//유저 직위
	String user_address;	//유저 주소
	String user_phone;		//유저 연락처
	String authority;		//유저 권한
	
	public UserVO() {
		super();
	}

	public UserVO(String user_id, String user_pw, String user_name, String dept_name, String position_name,
			String user_address, String user_phone, String authority) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.dept_name = dept_name;
		this.position_name = position_name;
		this.user_address = user_address;
		this.user_phone = user_phone;
		this.authority = authority;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getDept_name() {
		return dept_name;
	}

	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}

	public String getPosition_name() {
		return position_name;
	}

	public void setPosition_name(String position_name) {
		this.position_name = position_name;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	@Override
	public String toString() {
		return "UserVO [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", dept_name="
				+ dept_name + ", position_name=" + position_name + ", user_address=" + user_address + ", user_phone="
				+ user_phone + ", authority=" + authority + "]";
	}
	
	
	
	

}
