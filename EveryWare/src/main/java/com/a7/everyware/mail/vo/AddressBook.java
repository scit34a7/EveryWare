package com.a7.everyware.mail.vo;

public class AddressBook {

	int addrbook_num;
	String user_id;
	String repository;
	String addrbook_name;
	String mailto;
	String mailreference;
	String etc; // 등록한 날짜 넣기 

	public AddressBook(int addrbook_num, String user_id, String repository, String addrbook_name, String mailto,
			String mailreference, String etc) {
		super();
		this.addrbook_num = addrbook_num;
		this.user_id = user_id;
		this.repository = repository;
		this.addrbook_name = addrbook_name;
		this.mailto = mailto;
		this.mailreference = mailreference;
		this.etc = etc;
	}

	public AddressBook() {
		super();
	}

	public int getAddrbook_num() {
		return addrbook_num;
	}

	public void setAddrbook_num(int addrbook_num) {
		this.addrbook_num = addrbook_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getRepository() {
		return repository;
	}

	public void setRepository(String repository) {
		this.repository = repository;
	}

	public String getAddrbook_name() {
		return addrbook_name;
	}

	public void setAddrbook_name(String addrbook_name) {
		this.addrbook_name = addrbook_name;
	}

	public String getMailto() {
		return mailto;
	}

	public void setMailto(String mailto) {
		this.mailto = mailto;
	}

	public String getMailreference() {
		return mailreference;
	}

	public void setMailreference(String mailreference) {
		this.mailreference = mailreference;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	@Override
	public String toString() {
		return "AddressBook [addrbook_num=" + addrbook_num + ", user_id=" + user_id + ", repository=" + repository
				+ ", addrbook_name=" + addrbook_name + ", mailto=" + mailto + ", mailreference=" + mailreference
				+ ", etc=" + etc + "]";
	}

}
