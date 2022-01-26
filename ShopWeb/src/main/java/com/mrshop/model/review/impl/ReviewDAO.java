package com.mrshop.model.review.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mrshop.model.review.ReviewVO;

@Repository
public class ReviewDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void writeReview(ReviewVO vo) {
		mybatis.insert("ReviewDAO.writeReview", vo);
	}
	
	public void setPaymentRe(int review_id, String setRe) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("review_id", review_id);
		map.put("setRe", setRe);
		mybatis.update("ReviewDAO.setPaymentRe", map);
	}
	
	public void deleteReview(ReviewVO vo) {
		mybatis.delete("ReviewDAO.deleteReview", vo);
	}
	
	public int countReview(String prd_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("prd_id", prd_id);
		return mybatis.selectOne("ReviewDAO.countReview", map);
	}

	public double avgStar(String prd_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("prd_id", prd_id);
		return mybatis.selectOne("ReviewDAO.avgReview", map);
	}

	public List<ReviewVO> listReview(String prd_id, int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("prd_id", prd_id);
		map.put("start", start);
		map.put("end", end);
		return mybatis.selectList("ReviewDAO.listReview", map);
	}
	
	public int countStar(String prd_id, int star) {
		System.out.println("여기는 다오 id는:" + prd_id + "별은" + star);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("prd_id", prd_id);
		map.put("star", star);
		int cStar = mybatis.selectOne("ReviewDAO.countStar", map);
		System.out.println("카운트수는" + cStar);
		return mybatis.selectOne("ReviewDAO.countStar", map);
	}
}
