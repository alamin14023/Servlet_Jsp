package com.student.model;

public class StudentModel {
	
	private String sId;
	private String sName;
	private String sClass;
	public StudentModel(String sId, String sName, String sClass) {
		super();
		this.sId = sId;
		this.sName = sName;
		this.sClass = sClass;
	}
	public String getsId() {
		return sId;
	}
	public void setsId(String sId) {
		this.sId = sId;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsClass() {
		return sClass;
	}
	public void setsClass(String sClass) {
		this.sClass = sClass;
	}
	@Override
	public String toString() {
		return "StudentModel [sId=" + sId + ", sName=" + sName + ", sClass=" + sClass + "]";
	}
	
	

}
