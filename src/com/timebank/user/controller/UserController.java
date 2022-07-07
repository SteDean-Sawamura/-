package com.timebank.user.controller;

import java.io.IOException;
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

import com.timebank.entity.User;
import com.timebank.user.service.UserServiceImpl;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private UserServiceImpl userServiceImpl;

	@RequestMapping("/login")
	public String login(@RequestParam("phone") String phone,
			@RequestParam("password") String password,
			HttpServletRequest request,HttpServletResponse response,HttpSession session){
		
		System.out.println("loginController");
		User user = this.userServiceImpl.login(phone, password);
		String str = null;
		if(user==null) {
			request.setAttribute("message", "用户名不存在或密码错误");
			
//				request.getRequestDispatcher("login.jsp").forward(request,response);
			str = "redirect:" + "/login.jsp";
			
		}else {
			request.removeAttribute("message");
			session.setAttribute("user", user);
			str = "redirect:" + "/index.jsp";
		}
		
		
		return str;
	}
	
	@RequestMapping("/logout")
	public String login(HttpServletRequest request,HttpServletResponse response,HttpSession session){
		session.removeAttribute("user");		
		String str = "redirect:" + "/index.jsp";
		return str;
	}
	
	@RequestMapping("/regist")
	public String regist(@RequestParam("username") String username,
			@RequestParam("phonenumber") String phonenumber,@RequestParam("pwd") String pwd,
			HttpServletRequest request) {
		int userId = this.userServiceImpl.regist(username,phonenumber,pwd);
		String str = null;
		if(userId!=0) {
			request.removeAttribute("register_message");
			str = "redirect:" + "/login.jsp";
		}else {//注册失败（用户信息插入失败）
			request.setAttribute("register_message", "注册失败");
			str = "redirect:" + "/register.jsp";
		}
		
		return str;
	}
	
	
}
