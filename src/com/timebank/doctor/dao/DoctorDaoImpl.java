package com.timebank.doctor.dao;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.timebank.entity.Doctor;
import com.timebank.entity.User;
import com.timebank.framework.BaseDao;
import com.timebank.framework.Page;

@Repository
public class DoctorDaoImpl extends BaseDao<Doctor, Integer> {
	public List<Doctor> findByHospitalFacultyPage(int pageNum, int pageSize,String hospital,String faculty) {
		List<Doctor> list = null;
		try {
			list = this.find4PageByProperty(pageNum,pageSize,"from Doctor d where d.hospital=? and d.faculty=?",new Object[]{hospital,faculty});
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;		
	}
	
	
	public List<Doctor> findByFacultyPage(int pageNum, int pageSize,String key) {
		List<Doctor> list = null;
		try {
			list = this.find4PageByProperty(pageNum,pageSize,"from Doctor d where d.faculty=?",new Object[]{key});
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;		
	}
	
	public List<Doctor> findByHospitalPage(int pageNum, int pageSize,String key) {
		List<Doctor> list = null;
		try {
			list = this.find4PageByProperty(pageNum,pageSize,"from Doctor d where d.hospital=?",new Object[]{key});
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;		
	}
	
	public List<Doctor> findByRecoPage(int pageNum, int pageSize,String hospital, String symptom){
		List<Doctor> list = null;
		String hql = "from Doctor d where 1=1";
		List<Object> objects = new ArrayList<>();
		
		if(hospital!=null && hospital != "") {
			hql += "and d.hospital like '%"+ hospital +"%' ";
			objects.add(hospital);
		}
		
		if(symptom!=null && symptom != "") {
			hql += "and d.symptom like '%"+ symptom +"%' ";
			objects.add(symptom);
		}
		
		try {
			list = this.find4PageByProperty(pageNum,pageSize,hql,null);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;		
	}
	
	public Doctor findDoctorDetails(Integer doctorId) {
		Doctor d = null;
		try {
			 List<Doctor> list = this.findByProperty("from Doctor d where d.id=?", new Object[] {doctorId});
			 if(list!=null && list.size()>0) {
				 d=list.get(0);
			 }
			 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return d;
	}
}
