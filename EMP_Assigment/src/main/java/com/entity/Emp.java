package com.entity;

public class Emp {
	private int empId;
	private String name;
	private String doj;
	private String  yoe;
	private String designation;
	public Emp() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Emp(String name, String doj, String yoe, String designation) {
		super();
		this.name = name;
		this.doj = doj;
		this.yoe = yoe;
		this.designation = designation;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getYoe() {
		return yoe;
	}
	public void setYoe(String yoe) {
		this.yoe = yoe;
	}
	public String getDoj() {
		return doj;
	}
	public void setDoj(String doj) {
		this.doj = doj;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	@Override
	public String toString() {
		return "Emp [empId=" + empId + ", Name=" + name  + ", Date of Join=" + doj+ ", Year of Expirience=" + yoe + ", Designation="
				+ designation + "]";
	}	
	

}
