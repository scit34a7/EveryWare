package com.a7.everyware.meeting.vo;

/**
 * Meeting info Table에 대한 VO
 * 화상회의실에 대한 정보를 가진 테이블
 */
public class MeetingVO {
	private int meet_id;			// 회의 번호
	private String user_id;			// 유저 아이디
	private String meet_date;		// 회의 시간
	private String meet_etposition;	// 입장 권한
	private int meet_maxpeople;	// 최대 입장 인원
	private String meet_dept;		// 입장 가능 부서
	private String meet_title;		// 회의 제목
	
	public MeetingVO() {}
	
	public MeetingVO(int meet_id, String user_id, String meet_date, String meet_etposition, int meet_maxpeople,
			String meet_dept, String meet_title) {
		this.meet_id = meet_id;
		this.user_id = user_id;
		this.meet_date = meet_date;
		this.meet_etposition = meet_etposition;
		this.meet_maxpeople = meet_maxpeople;
		this.meet_dept = meet_dept;
		this.meet_title = meet_title;
	}
	
	public int getMeet_id() {
		return meet_id;
	}
	
	public void setMeet_id(int meet_id) {
		this.meet_id = meet_id;
	}
	
	public String getUser_id() {
		return user_id;
	}
	
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getMeet_date() {
		return meet_date;
	}
	
	public void setMeet_date(String meet_date) {
		this.meet_date = meet_date;
	}
	
	public String getMeet_etposition() {
		return meet_etposition;
	}
	
	public void setMeet_etposition(String meet_etposition) {
		this.meet_etposition = meet_etposition;
	}
	
	public int getMeet_maxpeople() {
		return meet_maxpeople;
	}
	
	public void setMeet_maxpeople(int meet_maxpeople) {
		this.meet_maxpeople = meet_maxpeople;
	}
	
	public String getMeet_dept() {
		return meet_dept;
	}
	
	public void setMeet_dept(String meet_dept) {
		this.meet_dept = meet_dept;
	}
	
	public String getMeet_title() {
		return meet_title;
	}
	
	public void setMeet_title(String meet_title) {
		this.meet_title = meet_title;
	}
	
	@Override
	public String toString() {
		return "MeetingVO [meet_id=" + meet_id + ", user_id=" + user_id + ", meet_date=" + meet_date
				+ ", meet_etposition=" + meet_etposition + ", meet_maxpeople=" + meet_maxpeople + ", meet_dept="
				+ meet_dept + ", meet_title=" + meet_title + "]";
	}
}
