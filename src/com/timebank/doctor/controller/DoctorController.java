package com.timebank.doctor.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.timebank.doctor.service.DoctorServiceImpl;
import com.timebank.entity.Doctor;
import com.timebank.entity.Patient;
import com.timebank.entity.User;
import com.timebank.framework.Page;
import com.timebank.user.service.UserServiceImpl;

@Controller
@RequestMapping("/doctor")
public class DoctorController {
	
	@Resource
	private DoctorServiceImpl doctorServiceImpl;

	@RequestMapping("/list")
	public String hospital(@RequestParam("pageNumber") String pageNumber,@RequestParam("hospital") String hospital,
			@RequestParam("faculty") String faculty,
			HttpServletRequest request,HttpServletResponse response,HttpSession session){
		Page<Doctor> page = null;
		if(hospital!="" && faculty!="") {
			page = doctorServiceImpl.findByHospitalFacultyPage(pageNumber,hospital, faculty);
		}else if(hospital!="" && faculty=="") {
			page = doctorServiceImpl.findByHospitalPage(pageNumber, hospital);
		}else if(hospital=="" && faculty!="") {
			page = doctorServiceImpl.findByFacultyPage(pageNumber, faculty);
		}
		
		request.setAttribute("page", page);
		request.setAttribute("hospital", hospital);
		request.setAttribute("faculty", faculty);
		
		
		return "doctor";
	}
	
//	@RequestMapping("/faculty")
//	public String faculty(@RequestParam("pageNumber") String pageNumber,@RequestParam("key") String key,
//			HttpServletRequest request,HttpServletResponse response,HttpSession session){
//		
//		Page<Doctor> page = doctorServiceImpl.findByFacultyPage(pageNumber, key);
//		
//		request.setAttribute("page", page);
//		request.setAttribute("key", key);
//		
//		
//		return "doctor-faculty";
//	}
	@RequestMapping("/reco")
	public String reco(@RequestParam("pageNumber") String pageNumber,
			@RequestParam("hospital") String hospital,@RequestParam("symptom") String symptom,
			@RequestParam("day") String day,@RequestParam("amorpm") String amorpm,
			HttpServletRequest request,HttpServletResponse response,HttpSession session){
		
		Page<Doctor> page = doctorServiceImpl.findByRecoPage(pageNumber,hospital, symptom,day,amorpm);
		
		request.setAttribute("page", page);
		request.setAttribute("hospital", hospital);
		request.setAttribute("symptom", symptom);
		request.setAttribute("day", day);
		request.setAttribute("amorpm", amorpm);

		if(page.getList()!=null) {
			System.out.println("hhhhhhhhh"+page.getList().size());
		}
		
		
		
		return "doctor-reco";
	}
	
	@RequestMapping("/details")
	public String details(@RequestParam("doctorid") String doctorid,
			HttpServletRequest request,HttpServletResponse response,HttpSession session){
		
		Doctor d = doctorServiceImpl.findDoctorDetails(Integer.parseInt(doctorid));
		System.out.println(d);
		
		String s = d.getEvals();
		s = s.replace("\\n                            ", "");
		s = s.replace(" ", "");
		s = s.replace("['", "");
		s = s.replace("']", "");
		s = s.replace("\\n", "");
		s = s.replace("\\r", "");
		String[] evalsArr = s.split("','");
//		System.out.println("--------------------------------------------");
//		for(int i=0;i<evalsArr.length;++i) {
//			System.out.println(evalsArr[i]);
//		}
//
//		
//		System.out.println("--------------------------------------------");
		
		String patient = d.getPatient();
		patient = patient.replace("\\n                            ", "");
		patient = patient.replace(" ", "");
		patient = patient.replace("['", "");
		patient = patient.replace("']", "");
		patient = patient.replace("\\n", "");
		patient = patient.replace("\\r", "");
		String[] patientArr = patient.split("','");
		
		String symptom = d.getSymptom();
		symptom = symptom.replace("\\n                            ", "");
		symptom = symptom.replace(" ", "");
		symptom = symptom.replace("['", "");
		symptom = symptom.replace("']", "");
		symptom = symptom.replace("\\n", "");
		symptom = symptom.replace("\\r", "");
		String[] symptomArr = symptom.split("','");
		
		String tag = d.getTag();
		tag = tag.replace("\\n                            ", "");
		tag = tag.replace(" ", "");
		tag = tag.replace("['", "");
		tag = tag.replace("']", "");
		tag = tag.replace("\\n", "");
		tag = tag.replace("\\r", "");
		String[] tagArr = tag.split("','");
		List<Patient> patientList = new ArrayList<>();
		for(int i=0;i<tagArr.length;++i) {
			String[] tagsArr = tagArr[i].split("/");
			List<String> tags = Arrays.asList(tagsArr);
			System.out.println("--------------------------");
			for(int a=0;a<tags.size();++a) {
				System.out.println(tags.get(a));
			}
			System.out.println("--------------------------");
			Patient p = new Patient();
			p.setName(patientArr[i]);
			p.setSymptom(symptomArr[i]);
			p.setTag(tags);
			p.setEavl(evalsArr[i]);
			patientList.add(p);
			
		}
		
		request.setAttribute("doctor", d);
		request.setAttribute("patientList", patientList);
		
		
		
		String time = d.getTime();
		time = time.replace(" ","");
		
//		System.out.println(time);
		//[[0, 1, 0, 0, 0, 0, 0], [0, 1, 1, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0]]
		
		String workTime = "";
//		System.out.println(am1);
//		System.out.println(am2);
//		System.out.println(am3);
		if(time.length()<46) {
			workTime+="暂无出诊时间";
		}else {
			char am1 = time.charAt(2);
			char am2 = time.charAt(4);
			char am3= time.charAt(6);
			char am4 = time.charAt(8);
			char am5 = time.charAt(10);
			char am6 = time.charAt(12);
			char am7 = time.charAt(14);
			char pm1 = time.charAt(18);
			char pm2 = time.charAt(20);
			char pm3 = time.charAt(22);
			char pm4 = time.charAt(24);
			char pm5 = time.charAt(26);
			char pm6 = time.charAt(28);
			char pm7 = time.charAt(30);
			char n1 = time.charAt(34);
			char n2 = time.charAt(36);
			char n3 = time.charAt(38);
			char n4 = time.charAt(40);
			char n5 = time.charAt(42);
			char n6 = time.charAt(44);
			char n7 = time.charAt(46);
			if(am1=='1') {
				workTime+="周一上午；";
			}
			if(am2=='1') {
				workTime+="周二上午；";
			}
			if(am3=='1') {
				workTime+="周三上午；";
			}
			if(am4=='1') {
				workTime+="周四上午；";
			}
			if(am5=='1') {
				workTime+="周五上午；";
			}
			if(am6=='1') {
				workTime+="周六上午；";
			}
			if(am7=='1') {
				workTime+="周日上午；";
			}
			workTime+="<br/>";
			if(pm1=='1') {
				workTime+="周一下午；";
			}
			if(pm2=='1') {
				workTime+="周二下午；";
			}
			if(pm3=='1') {
				workTime+="周三下午；";
			}
			if(pm4=='1') {
				workTime+="周四下午；";
			}
			if(pm5=='1') {
				workTime+="周五下午；";
			}
			if(pm6=='1') {
				workTime+="周六下午；";
			}
			if(pm7=='1') {
				workTime+="周日下午；";
			}
			workTime+="<br/>";
			if(n1=='1') {
				workTime+="周一晚上；";
			}
			if(n2=='1') {
				workTime+="周二晚上；";
			}
			if(n3=='1') {
				workTime+="周三晚上；";
			}
			if(n4=='1') {
				workTime+="周四晚上；";
			}
			if(n5=='1') {
				workTime+="周五晚上；";
			}
			if(n6=='1') {
				workTime+="周六晚上；";
			}
			if(n7=='1') {
				workTime+="周日晚上；";
			}
			
		}
		
		request.setAttribute("workTime", workTime);
		
//		System.out.println(d);
		return "doctor-details";
	}
	
	
}