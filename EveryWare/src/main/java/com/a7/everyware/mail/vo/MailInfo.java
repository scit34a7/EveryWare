package com.a7.everyware.mail.vo;

import java.util.Arrays;

public class MailInfo {

	String user_id; 
	String user_name;
	String mailinfo_repository; 
	String mailinfo_address;
	byte[] mailinfo_writeformat;
	String etc1;
	
	public MailInfo(String user_id, String user_name, String mailinfo_repository, String mailinfo_address,
			byte[] mailinfo_writeformat, String etc1) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.mailinfo_repository = mailinfo_repository;
		this.mailinfo_address = mailinfo_address;
		this.mailinfo_writeformat = mailinfo_writeformat;
		this.etc1 = etc1;
	}

	public MailInfo() {
		super();
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

	public String getMailinfo_repository() {
		return mailinfo_repository;
	}

	public void setMailinfo_repository(String mailinfo_repository) {
		this.mailinfo_repository = mailinfo_repository;
	}

	public String getMailinfo_address() {
		return mailinfo_address;
	}

	public void setMailinfo_address(String mailinfo_address) {
		this.mailinfo_address = mailinfo_address;
	}

	public byte[] getMailinfo_writeformat() {
		return mailinfo_writeformat;
	}

	public void setMailinfo_writeformat(byte[] mailinfo_writeformat) {
		this.mailinfo_writeformat = mailinfo_writeformat;
	}

	public String getEtc1() {
		return etc1;
	}

	public void setEtc1(String etc1) {
		this.etc1 = etc1;
	}

	@Override
	public String toString() {
		return "MailInfo [user_id=" + user_id + ", user_name=" + user_name + ", mailinfo_repository="
				+ mailinfo_repository + ", mailinfo_address=" + mailinfo_address + ", mailinfo_writeformat="
				+ Arrays.toString(mailinfo_writeformat) + ", etc1=" + etc1 + "]";
	}
}
