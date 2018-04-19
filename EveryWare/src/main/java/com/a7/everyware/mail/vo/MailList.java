package com.a7.everyware.mail.vo;

public class MailList {

	String message_name;
	String from;
	String recipients;
	String mailsubject;
	String contentpreview;
	String maildate;
	String mailattached;
	String mailimportance;
	String mailreaded;

	public MailList(String message_name, String from, String recipients, String mailsubject, String contentpreview,
			String maildate, String mailattached, String mailimportance, String mailreaded) {
		super();
		this.message_name = message_name;
		this.from = from;
		this.recipients = recipients;
		this.mailsubject = mailsubject;
		this.contentpreview = contentpreview;
		this.maildate = maildate;
		this.mailattached = mailattached;
		this.mailimportance = mailimportance;
		this.mailreaded = mailreaded;
	}

	public MailList() {
		super();
	}

	public String getMessage_name() {
		return message_name;
	}

	public void setMessage_name(String message_name) {
		this.message_name = message_name;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getRecipients() {
		return recipients;
	}

	public void setRecipients(String recipients) {
		this.recipients = recipients;
	}

	public String getMailsubject() {
		return mailsubject;
	}

	public void setMailsubject(String mailsubject) {
		this.mailsubject = mailsubject;
	}

	public String getContentpreview() {
		return contentpreview;
	}

	public void setContentpreview(String contentpreview) {
		this.contentpreview = contentpreview;
	}

	public String getMaildate() {
		return maildate;
	}

	public void setMaildate(String maildate) {
		this.maildate = maildate;
	}

	public String getMailattached() {
		return mailattached;
	}

	public void setMailattached(String mailattached) {
		this.mailattached = mailattached;
	}

	public String getMailimportance() {
		return mailimportance;
	}

	public void setMailimportance(String mailimportance) {
		this.mailimportance = mailimportance;
	}

	public String getMailreaded() {
		return mailreaded;
	}

	public void setMailreaded(String mailreaded) {
		this.mailreaded = mailreaded;
	}

	@Override
	public String toString() {
		return "MailList [message_name=" + message_name + ", from=" + from + ", recipients=" + recipients
				+ ", mailsubject=" + mailsubject + ", contentpreview=" + contentpreview + ", maildate=" + maildate
				+ ", mailattached=" + mailattached + ", mailimportance=" + mailimportance + ", mailreaded=" + mailreaded
				+ "]";
	}
}
