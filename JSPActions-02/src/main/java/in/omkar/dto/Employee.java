package in.omkar.dto;

import java.io.Serializable;

public class Employee implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private Integer eno;
	private String ename;
	private Integer bSalary;
	private float gSalary;
	private float nSalary;
	public Integer getEno() {
		return eno;
	}
	public void setEno(Integer eno) {
		this.eno = eno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public Integer getbSalary() {
		return bSalary;
	}
	public void setbSalary(Integer bSalary) {
		this.bSalary = bSalary;
	}
	public float getgSalary() {
		return gSalary;
	}
	public void setgSalary(float gSalary) {
		this.gSalary = gSalary;
	}
	public float getnSalary() {
		return nSalary;
	}
	public void setnSalary(float nSalary) {
		this.nSalary = nSalary;
	}
}
