package com.timebank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;





@Entity
@Table(name="review")
public class Review {

	private Integer cmtid;
	private String userName;
	private String doctorName;
	private String cmt;
	private Integer grade;

	
	public Review(String userName,String doctorName,String cmt,Integer grade) {
		
		this.userName=userName;
		this.doctorName=doctorName;
		this.cmt=cmt;
		this.grade=grade;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="cmt_id")
	public Integer getCmtId() {
		return cmtid;
	}
	public void setCmtId(Integer cmtid) {
		this.cmtid = cmtid;
	}
	
	
	
	@Column(name="doctor_name")
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	
	@Column(name="user_name")
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	@Column(name="cmt")
	public String getCmt() {
		return cmt;
	}
	public void setCmt(String cmt) {
		this.cmt = cmt;
	}
	
	
	@Column(name="grade")
	public Integer getGrade() {
		return grade;
	}
	public void setGrade(Integer grade) {
		this.grade = grade;
	}
	
	
	
	@Override
	public String toString() {
		return "review [cmtid=" + cmtid +  ", username=" + userName + ", doctorname=" + doctorName + ", cmt=" + cmt + ", grade=" + grade +"]";
	}

	
	
	
	
	
}
