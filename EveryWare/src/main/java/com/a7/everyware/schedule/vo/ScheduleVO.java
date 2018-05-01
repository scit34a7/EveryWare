package com.a7.everyware.schedule.vo;

public class ScheduleVO {
	private String schedule_num;	/*일정번호	id*/
	private String schedule_name;	/*일정 명 title*/
	private String user_id;			
	private String user_name;		
	private String schedule_sdate;	
	private String schedule_fdate;
	private String schedule_group;	/*개인인지 부서 프로젝트*/	
	private String project_id;
	private String schedule_memo;
	private String schedule_regdate;
	private String color;
	
	public ScheduleVO()
	{
		
	}

	public ScheduleVO(String schedule_num, String schedule_name, String user_id, String user_name,
			String schedule_sdate, String schedule_fdate, String schedule_group, String project_id,
			String schedule_memo, String schedule_regdate, String color) {
		super();
		this.schedule_num = schedule_num;
		this.schedule_name = schedule_name;
		this.user_id = user_id;
		this.user_name = user_name;
		this.schedule_sdate = schedule_sdate;
		this.schedule_fdate = schedule_fdate;
		this.schedule_group = schedule_group;
		this.project_id = project_id;
		this.schedule_memo = schedule_memo;
		this.schedule_regdate = schedule_regdate;
		this.color = color;
	}
	
	public String getSchedule_memo() {
		return schedule_memo;
	}

	public void setSchedule_memo(String schedule_memo) {
		this.schedule_memo = schedule_memo;
	}

	public String getSchedule_regdate() {
		return schedule_regdate;
	}

	public void setSchedule_regdate(String schedule_regdate) {
		this.schedule_regdate = schedule_regdate;
	}

	public String getColor() {
		return schedule_group;
	}



	public void setColor(String color2) {
		this.color = color2;
	}



	public String getSchedule_num() {
		return schedule_num;
	}

	public void setSchedule_num(String schedule_num) {
		this.schedule_num = schedule_num;
	}

	public String getSchedule_name() {
		return schedule_name;
	}

	public void setSchedule_name(String schedule_name) {
		this.schedule_name = schedule_name;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getSchedule_sdate() {
		return schedule_sdate;
	}

	public void setSchedule_sdate(String schedule_sdate) {
		this.schedule_sdate = schedule_sdate;
	}

	public String getSchedule_fdate() {
		return schedule_fdate;
	}

	public void setSchedule_fdate(String schedule_fdate) {
		this.schedule_fdate = schedule_fdate;
	}

	public String getSchedule_group() {
		return schedule_group;
	}

	public void setSchedule_group(String schedule_group) {
		this.schedule_group = schedule_group;
	}

	public String getProject_id() {
		return project_id;
	}

	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}

	@Override
	public String toString() {
		return "{id: '"+schedule_num+"', title: '"+schedule_name+"', start: '"+schedule_sdate+"', end: '"+schedule_fdate+"' , color : '"+color+"'}";
	}
}

	
