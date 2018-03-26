package com.a7.everyware.meeting.vo;

/**
 * Meeting Log Table�� ���� VO
 * ȸ�� ������ �ؽ�Ʈ�� ����� ���̺�
 */
public class MeetingLogVO {
	private int log_id;			// �α� ���̵�
	private String user_id;		// ���� ���̵�
	private String log_content;	// �α� ����
	private String log_time;	// �α� �ð�
	private int meet_id;		// ȸ�� ��ȣ
	
	public MeetingLogVO() {}
	
	public MeetingLogVO(int log_id, String user_id, String log_content, String log_time, int meet_id) {
		super();
		this.log_id = log_id;
		this.user_id = user_id;
		this.log_content = log_content;
		this.log_time = log_time;
		this.meet_id = meet_id;
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

	public int getMeet_id() {
		return meet_id;
	}

	public void setMeet_id(int meet_id) {
		this.meet_id = meet_id;
	}

	@Override
	public String toString() {
		return "MeetingLogVO [log_id=" + log_id + ", user_id=" + user_id + ", log_content=" + log_content
				+ ", log_time=" + log_time + ", meet_id=" + meet_id + "]";
	}
}
