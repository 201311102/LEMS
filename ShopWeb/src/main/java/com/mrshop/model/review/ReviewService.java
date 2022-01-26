package com.mrshop.model.review;

import java.util.List;


public interface ReviewService {
	void writeReview(ReviewVO vo) throws Exception;	//리뷰 쓰기
	void deleteReview(ReviewVO vo) throws Exception; //리뷰 삭제
	void setPaymentRe(int review_id, String setRe);
	int countReview(String prd_id);
	double avgStar(String prd_id);
	List<ReviewVO> listReview(String prd_id, int start, int end);
	int countStar(String prd_id, int star);
}
