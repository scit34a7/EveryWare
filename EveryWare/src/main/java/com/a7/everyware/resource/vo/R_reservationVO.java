package com.a7.everyware.resource.vo;
	
public class R_reservationVO {
	private String R_reservation_id;
	private String R_reservation_type;
	private String resource_id;
	private String r_reservation_sdate;
	private String r_reservation_fdate;
	private String r_reservation_regDate;
	private String r_reservation_memo;
	private String r_reservation_userName;
	private String color;
	public R_reservationVO()
	{
		
	}

	public R_reservationVO(String r_reservation_id, String r_reservation_type, String resource_id,
			String r_reservation_sdate, String r_reservation_fdate, String r_reservation_regDate,
			String r_reservation_memo, String r_reservation_userName, String color) {
		super();
		R_reservation_id = r_reservation_id;
		R_reservation_type = r_reservation_type;
		this.resource_id = resource_id;
		this.r_reservation_sdate = r_reservation_sdate;
		this.r_reservation_fdate = r_reservation_fdate;
		this.r_reservation_regDate = r_reservation_regDate;
		this.r_reservation_memo = r_reservation_memo;
		this.r_reservation_userName = r_reservation_userName;
		this.color = color;
	}


	public String getR_reservation_regDate() {
		return r_reservation_regDate;
	}

	public void setR_reservation_regDate(String r_reservation_regDate) {
		this.r_reservation_regDate = r_reservation_regDate;
	}

	public String getR_reservation_memo() {
		return r_reservation_memo;
	}

	public void setR_reservation_memo(String r_reservation_memo) {
		this.r_reservation_memo = r_reservation_memo;
	}

	public String getR_reservation_userName() {
		return r_reservation_userName;
	}

	public void setR_reservation_userName(String r_reservation_userName) {
		this.r_reservation_userName = r_reservation_userName;
	}

	public String getColor() {
		return R_reservation_type;
	}

	public void setColor(String color2) {
		color = color2;
	}

	public String getR_reservation_id() {
		return R_reservation_id;
	}

	public void setR_reservation_id(String r_reservation_id) {
		R_reservation_id = r_reservation_id;
	}

	public String getR_reservation_type() {
		return R_reservation_type;
	}

	public void setR_reservation_type(String r_reservation_type) {
		R_reservation_type = r_reservation_type;
	}

	public String getResource_id() {
		return resource_id;
	}

	public void setResource_id(String resource_id) {
		this.resource_id = resource_id;
	}

	public String getR_reservation_sdate() {
		return r_reservation_sdate;
	}

	public void setR_reservation_sdate(String r_reservation_sdate) {
		this.r_reservation_sdate = r_reservation_sdate;
	}

	public String getR_reservation_fdate() {
		return r_reservation_fdate;
	}

	public void setR_reservation_fdate(String r_reservation_fdate) {
		this.r_reservation_fdate = r_reservation_fdate;
	}

	@Override
	public String toString() {
		return "{resourceId: '"+resource_id+"', id : '"+R_reservation_id+"',title : '"+R_reservation_type+ "' + '"+ ":" +"'  +  '"+r_reservation_userName+"' , start: '"+ r_reservation_sdate +"', end: '"+ r_reservation_fdate +"', color : '"+ color +"'}";
	}
	
	
}
