package com.mrshop.model.review.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mrshop.model.product.impl.ProductInfoDAO;
import com.mrshop.model.review.ReviewService;
import com.mrshop.model.review.ReviewVO;

@Service("reviewService")
public class ReviewServiceimpl implements ReviewService{
	@Autowired
	private ReviewDAO reviewDAO;
	
	@Override
	public void writeReview(ReviewVO vo) throws Exception {
		reviewDAO.writeReview(vo);
	}
	
	@Override
	public void setPaymentRe(int review_id, String setRe) {
		reviewDAO.setPaymentRe(review_id, setRe);
	}

	@Override
	public void deleteReview(ReviewVO vo) throws Exception {
		reviewDAO.deleteReview(vo);
	}

	@Override
	public int countReview(String prd_id) {
		return reviewDAO.countReview(prd_id);
	}

	@Override
	public double avgStar(String prd_id) {
		return reviewDAO.avgStar(prd_id);
	}

	@Override
	public List<ReviewVO> listReview(String prd_id, int start, int end) {
		return reviewDAO.listReview(prd_id, start, end);
	}
	
	@Override
	public int countStar(String prd_id, int star) {
		System.out.println("여기는 임플 id는:" + prd_id + "별은" + star);
		
		return reviewDAO.countStar(prd_id, star);
	}
}
