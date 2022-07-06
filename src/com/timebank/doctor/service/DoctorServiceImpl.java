package com.timebank.doctor.service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.timebank.doctor.dao.DoctorDaoImpl;
import com.timebank.entity.Doctor;
import com.timebank.entity.User;
import com.timebank.framework.Page;
import com.timebank.user.dao.UserDaoImpl;

/**
* @author 程文秀
* @version 创建时间：2019年5月29日 下午2:54:59
* @ClassName 类名称
* @Description 类描述
*/
@Service
public class DoctorServiceImpl {
	
	@Resource
	private DoctorDaoImpl doctorDaoImpl;

	public Page<Doctor> findByHospitalFacultyPage(String pageNumber,String hospital,String faculty){
		List<Doctor> listD;
		Page<Doctor> page = new Page<Doctor>();
		try {
			listD = doctorDaoImpl.findByProperty("from Doctor d where d.hospital=? and d.faculty=?",new Object[]{hospital,faculty});
			List<Doctor> list = doctorDaoImpl.findByHospitalFacultyPage(new Integer(pageNumber),9, hospital,faculty);	
			page.setCurrentPageNum(new Integer(pageNumber));
			page.setList(list);
			page.setNextPageNum(new Integer(pageNumber)+1);
			page.setPageSize(9);
//			System.out.println("个数"+listD.size());
			page.setTotalCount(listD.size());
			int totalPageNum = listD.size()/page.getPageSize();
			if(listD.size()%page.getPageSize()!=0){
				totalPageNum++;
			}
			page.setTotalPageNum(totalPageNum);
			System.out.println(page.getTotalPageNum());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return page;
	}

	
	public Page<Doctor> findByFacultyPage(String pageNumber,String key){
		List<Doctor> listD;
		Page<Doctor> page = new Page<Doctor>();
		try {
			listD = doctorDaoImpl.findByProperty("from Doctor d where d.faculty=?",new Object[]{key});
			List<Doctor> list = doctorDaoImpl.findByFacultyPage(new Integer(pageNumber),9, key);	
			page.setCurrentPageNum(new Integer(pageNumber));
			page.setList(list);
			page.setNextPageNum(new Integer(pageNumber)+1);
			page.setPageSize(9);
			System.out.println("个数"+listD.size());
			page.setTotalCount(listD.size());
			int totalPageNum = listD.size()/page.getPageSize();
			if(listD.size()%page.getPageSize()!=0){
				totalPageNum++;
			}
			page.setTotalPageNum(totalPageNum);
			System.out.println(page.getTotalPageNum());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return page;
	}
	public Page<Doctor> findByHospitalPage(String pageNumber,String key){
		List<Doctor> listD;
		Page<Doctor> page = new Page<Doctor>();
		try {
			listD = doctorDaoImpl.findByProperty("from Doctor d where d.hospital=?",new Object[]{key});
			List<Doctor> list = doctorDaoImpl.findByHospitalPage(new Integer(pageNumber),9, key);	
			page.setCurrentPageNum(new Integer(pageNumber));
			page.setList(list);
			page.setNextPageNum(new Integer(pageNumber)+1);
			page.setPageSize(9);
			System.out.println("个数"+listD.size());
			page.setTotalCount(listD.size());
			int totalPageNum = listD.size()/page.getPageSize();
			if(listD.size()%page.getPageSize()!=0){
				totalPageNum++;
			}
			page.setTotalPageNum(totalPageNum);
			System.out.println(page.getTotalPageNum());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return page;
	}
	public Page<Doctor> findByRecoPage(String pageNumber,String hospital, String symptom,String day,String amorpm){
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
		
		List<Doctor> listD;
		Page<Doctor> page = new Page<Doctor>();
		try {
			listD = doctorDaoImpl.findByProperty(hql,null);
			
			
			int num = 0;
			if(day.equals("Monday")) {
				if(amorpm.equals("am")) {
					num=2;
				}else if(amorpm.equals("pm")) {
					num=18;
				}else {
					num=34;
				}
			}
			if(day.equals("Tuesday")) {
				if(amorpm.equals("am")) {
					num=4;
				}else if(amorpm.equals("pm")) {
					num=20;
				}else {
					num=36;
				}
			}
			if(day.equals("Wednesday")) {
				if(amorpm.equals("am")) {
					num=6;
				}else if(amorpm.equals("pm")) {
					num=22;
				}else {
					num=38;
				}
			}
			if(day.equals("Thursday")) {
				if(amorpm.equals("am")) {
					num=8;
				}else if(amorpm.equals("pm")) {
					num=24;
				}else {
					num=40;
				}
			}
			if(day.equals("Friday")) {
				if(amorpm.equals("am")) {
					num=10;
				}else if(amorpm.equals("pm")) {
					num=26;
				}else {
					num=42;
				}
			}
			if(day.equals("Saturday")) {
				if(amorpm.equals("am")) {
					num=12;
				}else if(amorpm.equals("pm")) {
					num=28;
				}else {
					num=44;
				}
			}
			if(day.equals("Sunday")) {
				if(amorpm.equals("am")) {
					num=14;
				}else if(amorpm.equals("pm")) {
					num=30;
				}else {
					num=46;
				}
			}	
			System.out.println("num"+num);
			//记录要移除记录的下标
			/*List<Doctor> indexRemove = new ArrayList<>();
			for (int i=0;i<listD.size();++i) {
				System.err.println("iiiiiiiiiiiii" + i);
				Doctor doctor = listD.get(i);
				String time = doctor.getTime();
				time = time.replace(" ","");
				if(time.length()<46) {
					indexRemove.add(doctor);
					System.out.println("长度不够remove");
					
				}else {
					if(time.charAt(num)!='1') {
						indexRemove.add(doctor);
						System.out.println("时间不满足remove");
						System.out.println(time);
					}
					
				}
			}*/
			//移除
			/*for (int i=0;i<indexRemove.size();++i) {
				listD.remove(indexRemove.get(i));
			}*/
			
			//对listD中的医院进行等级排序
			/*医院排名是 越小越好 4
			 * 情感分析给分                               4
			回复时间  越小越好                         1
			职称  越大越好                                 1
			
			//最后都是数大 好 
			*/
			for(int i=0;i<listD.size();++i) {
				Doctor doctor = listD.get(i);
				/*int hospitalRank = doctor.getHospitalRank();
				double doctorTitleRank = 1/doctor.getDoctorTitleRank(); //取反*/
				/*int recSpeed = doctor.getRecSpeed();*/
				String standardScore = doctor.getStandardScore();
				double standardScore2 = Double.parseDouble(standardScore);
				System.out.println(standardScore);
				/*double rank = 4 * standardScore2 + 0.4 * 1/hospitalRank + 0.1 * doctorTitleRank/11 + 0.1 * recSpeed/40;*/
				double rank=4 * standardScore2;
				int r = (int)rank;
				doctor.setRank(r);
			}
			
			listD.sort(new Comparator<Doctor>(){
	            /*
	             * int compare(Person p1, Person p2) 返回一个基本类型的整型，
	             	* 返回负数表示：p1 小于p2，
	             	* 返回0 表示：p1和p2相等，
	             	* 返回正数表示：p1大于p2
	             */
	            public int compare(Doctor d1, Doctor d2) {
	                //按照Doctor的等级rank进行升序排列
	                if(d1.getRank() > d2.getRank()){
	                    return 1;
	                }
	                if(d1.getRank() == d2.getRank()){
	                    return 0;
	                }
	                return -1;
	            }
	            });
			
			for(int i=0;i<listD.size();++i) {
				Doctor d = listD.get(i);
				d.setRank(i+1);
				
				
			}
			
			
			
			
			int currentPage = new Integer(pageNumber);
			page.setCurrentPageNum(currentPage);
			
			page.setNextPageNum(currentPage+1);
			page.setPageSize(9);
			System.out.println("个数"+listD.size());
			page.setTotalCount(listD.size());
			int totalPageNum = listD.size()/page.getPageSize();
			if(listD.size()%page.getPageSize()!=0){
				totalPageNum++;
			}
			page.setTotalPageNum(totalPageNum);
			
			List<Doctor> list = new ArrayList<>();	
			
			if(listD.size()>0) {
				if(currentPage==totalPageNum) {
					for(int i=(currentPage-1)*9;i<((currentPage-1)*9+listD.size()%page.getPageSize());++i) {
						list.add(listD.get(i));
						System.out.println(listD.get(i).getRank());
					}
				}else {
					for(int i=(currentPage-1)*9;i<=(currentPage-1)*9+8;++i) {
						list.add(listD.get(i));
						System.out.println(listD.get(i).getRank());
					}
				}
			}
			
			
			
			page.setList(list);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return page;
	}
	
	public Doctor findDoctorDetails(Integer doctorId) {
		return doctorDaoImpl.findDoctorDetails(doctorId);
	}
}
