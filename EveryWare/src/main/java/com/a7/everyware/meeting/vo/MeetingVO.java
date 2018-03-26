package com.a7.everyware.meeting.vo;

/**
 * Meeting info Table�� ���� VO
 * ȭ��ȸ�ǽǿ� ���� ������ ���� ���̺�
 */
public class MeetingVO {
	private int meet_id;			// ȸ�� ��ȣ
	private String user_id;			// ���� ���̵�
	private String meet_date;		// ȸ�� �ð�
	private String meet_etposition;	// ���� ����
	private String meet_maxpeople;	// �ִ� ���� �ο�
	private String meet_dept;		// ���� ���� �μ�
	private String meet_title;		// ȸ�� ����
	
	public MeetingVO() {}
	
	public MeetingVO(int meet_id, String user_id, String meet_date, String meet_etposition, String meet_maxpeople,
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
	
	public String getMeet_maxpeople() {
		return meet_maxpeople;
	}
	
	public void setMeet_maxpeople(String meet_maxpeople) {
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
