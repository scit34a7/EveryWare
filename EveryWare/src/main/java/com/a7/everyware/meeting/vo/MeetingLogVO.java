package com.a7.everyware.meeting.vo;

/**
 * Meeting Log Table에 대한 VO
 * 회의 음성을 텍스트로 남기는 테이블
 */
public class MeetingLogVO {
	private int log_id;			// 로그 아이디
	private String user_id;		// 유저 아이디
	private String log_content;	// 로그 내용
	private String log_time;	// 로그 시간
	private String meet_title;	// 회의 제목
	
	public MeetingLogVO() {}
	
	public MeetingLogVO(int log_id, String user_id, String log_content, String log_time, String meet_title) {
		super();
		this.log_id = log_id;
		this.user_id = user_id;
		this.log_content = log_content;
		this.log_time = log_time;
		this.meet_title = meet_title;
	}

	public int getLog_id() {
		return log_id;
	}

	public void setLog_id(int log_id) {
		this.log_id = log_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getLog_content() {
		return log_content;
	}

	public void setLog_content(String log_content) {
		this.log_content = log_content;
	}

	public String getLog_time() {
		return log_time;
	}

	public void setLog_time(String log_time) {
		this.log_time = log_time;
	}

	public String getmeet_title() {
		return meet_title;
	}

	public void setmeet_title(String meet_title) {
		this.meet_title = meet_title;
	}

	@Override
	public String toString() {
		return "MeetingLogVO [log_id=" + log_id + ", user_id=" + user_id + ", log_content=" + log_content
				+ ", log_time=" + log_time + ", meet_title=" + meet_title + "]";
	}
}
