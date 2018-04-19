package com.a7.everyware.resource.vo;

public class ResourceVO {
	private String resource_id;
	private String resource_type;

	public ResourceVO()
	{
		
	}

	public ResourceVO(String resource_id, String resource_type) {
		super();
		this.resource_id = resource_id;
		this.resource_type = resource_type;
	}

	public String getResource_id() {
		return resource_id;
	}

	public void setResource_id(String resource_id) {
		this.resource_id = resource_id;
	}

	public String getResource_type() {
		return resource_type;
	}

	public void setResource_type(String resource_type) {
		this.resource_type = resource_type;
	}

	@Override
	public String toString() {
		return "{id: '"+ resource_id +"',title: '" + resource_type + "'}";
	}
	
	
}
