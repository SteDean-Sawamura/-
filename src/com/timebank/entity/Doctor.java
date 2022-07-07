package com.timebank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="doctor")
public class Doctor {

	private Integer id;
	private String doctorName;
	private String doctorTitle;
	private String hospital;
	private String faculty;
	private String goodAt;
	private String briefIntro;
	private String imgHref;
	private String time;
	private String patient;
	private String symptom;
	private String tag;
	private String evals;
	
	/*private int hospitalRank;
	private int doctorTitleRank;*/
	private int recSpeed;
	private String originalSentScore;
	private String reNew;
	private String standardScore;
	
	
	private int rank;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="doctor_name")
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	@Column(name="doctor_title")
	public String getDoctorTitle() {
		return doctorTitle;
	}
	public void setDoctorTitle(String doctorTitle) {
		this.doctorTitle = doctorTitle;
	}
	@Column(name="hospital")
	public String getHospital() {
		return hospital;
	}
	public void setHospital(String hospital) {
		this.hospital = hospital;
	}
	@Column(name="faculty")
	public String getFaculty() {
		return faculty;
	}
	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}
	@Column(name="good_at")
	public String getGoodAt() {
		return goodAt;
	}
	public void setGoodAt(String goodAt) {
		this.goodAt = goodAt;
	}
	@Column(name="brief_intro")
	public String getBriefIntro() {
		return briefIntro;
	}
	public void setBriefIntro(String briefIntro) {
		this.briefIntro = briefIntro;
	}
	@Column(name="img_href")
	public String getImgHref() {
		return imgHref;
	}
	public void setImgHref(String imgHref) {
		this.imgHref = imgHref;
	}
	@Column(name="time")
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Column(name="patient")
	public String getPatient() {
		return patient;
	}
	public void setPatient(String patient) {
		this.patient = patient;
	}
	@Column(name="symptom")
	public String getSymptom() {
		return symptom;
	}
	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}
	@Column(name="tag")
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	@Column(name="evals")
	public String getEvals() {
		return evals;
	}
	public void setEvals(String evals) {
		this.evals = evals;
	}
	/*@Column(name="hospital_rank")
	public int getHospitalRank() {
		return hospitalRank;
	}
	public void setHospitalRank(int hospitalRank) {
		this.hospitalRank = hospitalRank;
	}
	@Column(name="doctor_title_rank")
	public int getDoctorTitleRank() {
		return doctorTitleRank;
	}
	public void setDoctorTitleRank(int doctorTitleRank) {
		this.doctorTitleRank = doctorTitleRank;
	}*/
	/*@Column(name="rec_speed")
	public int getRecSpeed() {
		return recSpeed;
	}
	public void setRecSpeed(int recSpeed) {
		this.recSpeed = recSpeed;
	}*/
	
	@Column(name="original_sent_score")
	public String getOriginalSentScore() {
		return originalSentScore;
	}
	public void setOriginalSentScore(String originalSentScore) {
		this.originalSentScore = originalSentScore;
	}
	@Column(name="renew")
	public String getReNew() {
		return reNew;
	}
	public void setReNew(String reNew) {
		this.reNew = reNew;
	}
	@Column(name="standard_score")
	public String getStandardScore() {
		return standardScore;
	}
	public void setStandardScore(String standardScore) {
		this.standardScore = standardScore;
	}
	@Column(name="rank")
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	@Override
	public String toString() {
		return "Doctor [id=" + id + ", doctorName=" + doctorName + ", doctorTitle=" + doctorTitle + ", hospital="
				+ hospital + ", faculty=" + faculty + ", goodAt=" + goodAt + ", briefIntro=" + briefIntro + ", imgHref="
				+ imgHref + ", time=" + time + ", patient=" + patient + ", symptom=" + symptom + ", tag=" + tag
				+ ", evals=" + evals + /*", hospitalRank=" + hospitalRank + ", doctorTitleRank=" + doctorTitleRank
				+*/ ", recSpeed=" + recSpeed + ", rank=" + rank + "]";
	}
	
	
	
	
	
}
