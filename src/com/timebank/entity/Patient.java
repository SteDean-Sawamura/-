package com.timebank.entity;

import java.util.List;

public class Patient {
	private String name;
	private String symptom;
	private List<String> tag;
	private String eavl;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSymptom() {
		return symptom;
	}
	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}
	public List<String> getTag() {
		return tag;
	}
	public void setTag(List<String> tag) {
		this.tag = tag;
	}
	public String getEavl() {
		return eavl;
	}
	public void setEavl(String eavl) {
		this.eavl = eavl;
	}
	
	
}
