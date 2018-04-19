package com.a7.everyware.mail.vo;

public class AttachInfo {

	String message_number;	//for download url
	String part_number; 	//for download url
	String fileName; 		//for display the name 	
	String size;			//for display the name
	
	public AttachInfo(String message_number, String part_number, String fileName, String size) {
		super();
		this.message_number = message_number;
		this.part_number = part_number;
		this.fileName = fileName;
		this.size = size;
	}

	public AttachInfo() {
		super();
	}

	public String getMessage_number() {
		return message_number;
	}

	public void setMessage_number(String message_number) {
		this.message_number = message_number;
	}

	public String getPart_number() {
		return part_number;
	}

	public void setPart_number(String part_number) {
		this.part_number = part_number;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	@Override
	public String toString() {
		return "AttachInfo [message_number=" + message_number + ", part_number=" + part_number + ", fileName="
				+ fileName + ", size=" + size + "]";
	}
	
}
