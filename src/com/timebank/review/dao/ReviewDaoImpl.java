package com.timebank.review.dao;
import org.springframework.stereotype.Repository;

import com.timebank.entity.Review;
import com.timebank.entity.review;
import com.timebank.framework.BaseDao;

@Repository
public class ReviewDaoImpl extends BaseDao<Review, Integer> {


	
	public int addReview(Review review) {
		try {
			this.save(review);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Integer id = review.getCmtId();
		System.out.println(id);
		return id;
	}
	
	
	
}
