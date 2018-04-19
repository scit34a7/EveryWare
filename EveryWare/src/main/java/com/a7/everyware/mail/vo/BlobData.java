package com.a7.everyware.mail.vo;

import java.util.Arrays;

public class BlobData {

	byte[] blobData;

	public BlobData(byte[] blobData) {
		super();
		this.blobData = blobData;
	}

	public BlobData() {
		super();
	}

	public byte[] getBlobData() {
		return blobData;
	}

	public void setBlobData(byte[] blobData) {
		this.blobData = blobData;
	}

	@Override
	public String toString() {
		return "BlobData [blobData=" + Arrays.toString(blobData) + "]";
	}
	
	
		
}
