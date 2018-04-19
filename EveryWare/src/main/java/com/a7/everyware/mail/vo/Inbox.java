package com.a7.everyware.mail.vo;

import java.util.Arrays;

public class Inbox {

	String message_name; 
	String repository_name; 
	String message_state; 
	String error_message; 
	String sender;
	String recipients; 
	String remote_host;
	String remote_addr;
	byte[] message_body;
	byte[] message_attributes;
	String last_updated;
	String message_importance;
	String message_receiving; 
	String message_deleted;
	
	public Inbox(String message_name, String repository_name, String message_state, String error_message, String sender,
			String recipients, String remote_host, String remote_addr, byte[] message_body, byte[] message_attributes,
			String last_updated, String message_importance, String message_receiving, String message_deleted) {
		super();
		this.message_name = message_name;
		this.repository_name = repository_name;
		this.message_state = message_state;
		this.error_message = error_message;
		this.sender = sender;
		this.recipients = recipients;
		this.remote_host = remote_host;
		this.remote_addr = remote_addr;
		this.message_body = message_body;
		this.message_attributes = message_attributes;
		this.last_updated = last_updated;
		this.message_importance = message_importance;
		this.message_receiving = message_receiving;
		this.message_deleted = message_deleted;
	}

	public Inbox() {
		super();
	}

	public String getMessage_name() {
		return message_name;
	}

	public void setMessage_name(String message_name) {
		this.message_name = message_name;
	}

	public String getRepository_name() {
		return repository_name;
	}

	public void setRepository_name(String repository_name) {
		this.repository_name = repository_name;
	}

	public String getMessage_state() {
		return message_state;
	}

	public void setMessage_state(String message_state) {
		this.message_state = message_state;
	}

	public String getError_message() {
		return error_message;
	}

	public void setError_message(String error_message) {
		this.error_message = error_message;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getRecipients() {
		return recipients;
	}

	public void setRecipients(String recipients) {
		this.recipients = recipients;
	}

	public String getRemote_host() {
		return remote_host;
	}

	public void setRemote_host(String remote_host) {
		this.remote_host = remote_host;
	}

	public String getRemote_addr() {
		return remote_addr;
	}

	public void setRemote_addr(String remote_addr) {
		this.remote_addr = remote_addr;
	}

	public byte[] getMessage_body() {
		return message_body;
	}

	public void setMessage_body(byte[] message_body) {
		this.message_body = message_body;
	}

	public byte[] getMessage_attributes() {
		return message_attributes;
	}

	public void setMessage_attributes(byte[] message_attributes) {
		this.message_attributes = message_attributes;
	}

	public String getLast_updated() {
		return last_updated;
	}

	public void setLast_updated(String last_updated) {
		this.last_updated = last_updated;
	}

	public String getMessage_importance() {
		return message_importance;
	}

	public void setMessage_importance(String message_importance) {
		this.message_importance = message_importance;
	}

	public String getMessage_receiving() {
		return message_receiving;
	}

	public void setMessage_receiving(String message_receiving) {
		this.message_receiving = message_receiving;
	}

	public String getMessage_deleted() {
		return message_deleted;
	}

	public void setMessage_deleted(String message_deleted) {
		this.message_deleted = message_deleted;
	}

	@Override
	public String toString() {
		return "Inbox [message_name=" + message_name + ", repository_name=" + repository_name + ", message_state="
				+ message_state + ", error_message=" + error_message + ", sender=" + sender + ", recipients="
				+ recipients + ", remote_host=" + remote_host + ", remote_addr=" + remote_addr + ", message_body="
				+ Arrays.toString(message_body) + ", message_attributes=" + Arrays.toString(message_attributes)
				+ ", last_updated=" + last_updated + ", message_importance=" + message_importance
				+ ", message_receiving=" + message_receiving + ", message_deleted=" + message_deleted + "]";
	}
	
}
