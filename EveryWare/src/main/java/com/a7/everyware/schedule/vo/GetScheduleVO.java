package com.a7.everyware.schedule.vo;

public class GetScheduleVO {
	private String user_id;
	private String schedule_group;	/*개인인지 부서 프로젝트*/	
	private String project_id;
	
	public GetScheduleVO(){
		
	}

	public GetScheduleVO(String user_id, String schedule_group, String project_id) {
		super();
		this.user_id = user_id;
		this.schedule_group = schedule_group;
		this.project_id = project_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
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
		return "GetScheduleVO [user_id=" + user_id + ", schedule_group=" + schedule_group + ", project_id=" + project_id
				+ "]";
	}
	
	
}
