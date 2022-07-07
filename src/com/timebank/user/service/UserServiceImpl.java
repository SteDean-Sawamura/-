package com.timebank.user.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.timebank.entity.User;
import com.timebank.user.dao.UserDaoImpl;

@Service
public class UserServiceImpl {
	
	@Resource
	private UserDaoImpl userDaoImpl;

	public User login(String phoneNum, String upwd) {
		return userDaoImpl.findByNameAndPwd(phoneNum, upwd);
	}
	
	public int regist(String userName, String phone, String password) {
		User user = new User(userName,phone,password);
		return userDaoImpl.addUser(user);
	}

	
	
	
}
