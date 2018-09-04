package com.dreamcube.pojo;

import java.io.InputStream;

public class File {

	
	private String id;
	private String name;
	private InputStream in; // 
	private long size; //78983 bytes, isFormField=false, FieldName=upfile
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public InputStream getIn() {
		return in;
	}
	public void setIn(InputStream in) {
		this.in = in;
	}
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	
	
}
