package com.timebank.review.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.timebank.entity.Review;
import com.timebank.entity.review;
import com.timebank.review.dao.ReviewDaoImpl;

@Service
public class ReviewServiceImpl {
	
	@Resource
	private ReviewDaoImpl reviewDaoImpl;

	
	public int comment(String username,String doctorname,String comment,String grade) {
		int g=Integer.parseInt(grade);
		Review review = new Review(username,doctorname,comment,g);
		return reviewDaoImpl.addReview(review);
	}
}

	
	
	