package com.timebank.user.dao;
import org.springframework.stereotype.Repository;

import com.timebank.entity.User;
import com.timebank.framework.BaseDao;

@Repository
public class UserDaoImpl extends BaseDao<User, Integer> {

	public User findByNameAndPwd(String phone,String pwd) {
		User user = null;
		try {
			user = this.findOne("from User u where u.uPhone=? and u.uPassword=?", new Object[]{phone,pwd});
			System.out.println("UserDaoImpl");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;		
	}
	
	public int addUser(User user) {
		try {
			this.save(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Integer id = user.getuId();
		System.out.println(id);
		return id;
	}
	
	
	
}
