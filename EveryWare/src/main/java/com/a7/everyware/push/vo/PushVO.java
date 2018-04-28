package com.a7.everyware.push.vo;

public class PushVO {
	private int push_id;
	private String push_type;
	private String push_title;
	private String user_id;
	private String dept_name;
	private String push_time;
	private int push_isRead;
	
	public PushVO() {}
	
	public PushVO(int push_id, String push_type, String push_title, String user_id, String dept_name, String push_time, int push_isRead) {
		this.push_id = push_id;
		this.push_type = push_type;
		this.push_title = push_title;
		this.user_id = user_id;
		this.dept_name = dept_name;
		this.push_time = push_time;
		this.push_isRead = push_isRead;
	}

	public int getPush_id() {
		return push_id;
	}

	public void setPush_id(int push_id) {
		this.push_id = push_id;
	}

	public String getPush_type() {
		return push_type;
	}

	public void setPush_type(String push_type) {
		this.push_type = push_type;
	}

	public String getPush_title() {
		return push_title;
	}

	public void setPush_title(String push_title) {
		this.push_title = push_title;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getDept_name() {
		return dept_name;
	}

	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}

	public String getPush_time() {
		return push_time;
	}

	public void setPush_time(String push_time) {
		this.push_time = push_time;
	}

	public int getPush_isRead() {
		return push_isRead;
	}

	public void setPush_isRead(int push_isRead) {
		this.push_isRead = push_isRead;
	}

	@Override
	public String toString() {
		return "PushVO [push_id=" + push_id + ", push_type=" + push_type + ", push_title=" + push_title + ", user_id="
				+ user_id + ", dept_name=" + dept_name + ", push_time=" + push_time + ", push_isRead=" + push_isRead + "]";
	}
}
