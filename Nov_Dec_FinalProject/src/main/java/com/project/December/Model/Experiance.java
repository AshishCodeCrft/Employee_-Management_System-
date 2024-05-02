package com.project.December.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Experiance {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int srno;
	private String companyname;
	private String role;
	private String dateofjoining;
	private String lastdate;
	public int getSrno() {
		return srno;
	}
	public void setSrno(int srno) {
		this.srno = srno;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getDateofjoining() {
		return dateofjoining;
	}
	public void setDateofjoining(String dateofjoining) {
		this.dateofjoining = dateofjoining;
	}
	public String getLastdate() {
		return lastdate;
	}
	public void setLastdate(String lastdate) {
		this.lastdate = lastdate;
	}
	public Experiance(int srno, String companyname, String role, String dateofjoining, String lastdate) {
		super();
		this.srno = srno;
		this.companyname = companyname;
		this.role = role;
		this.dateofjoining = dateofjoining;
		this.lastdate = lastdate;
	}
	public Experiance() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Experiance [srno=" + srno + ", companyname=" + companyname + ", role=" + role + ", dateofjoining="
				+ dateofjoining + ", lastdate=" + lastdate + "]";
	}
	
	
	

	
	
}
