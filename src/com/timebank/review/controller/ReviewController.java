package com.timebank.review.controller;

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
import com.timebank.entity.Review;
import com.timebank.framework.Page;
import com.timebank.review.service.ReviewServiceImpl;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Resource
	private ReviewServiceImpl reviewServiceImpl;

	@RequestMapping("/comment")
	public String comment(@RequestParam("username") String username,@RequestParam("doctorname") String doctorname,
			@RequestParam("comment") String comment,@RequestParam("grade") String grade,
			HttpServletRequest request,HttpServletResponse response,HttpSession session){
		
		//reviewservice
		int commentId = this.reviewServiceImpl.comment(username,doctorname,comment,grade);
		String str = null;
		if(commentId!=0) {
			request.removeAttribute("review_message");
			str = "redirect:" + "/index.jsp";
		}else {//注册失败（用户信息插入失败）
			request.setAttribute("review_message", "注册失败");
			str = "redirect:" + "/review.jsp";
		}
		
		return str;
	}
	

	
	
}