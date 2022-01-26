package com.mrshop.model.payment.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mrshop.model.payment.PaymentVO;

@Repository
public class PaymentDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 물품 구매
	public List<PaymentVO> getPaymentProduct(PaymentVO vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("payment", vo);
		return mybatis.selectList("PaymentDAO.paymentProduct", map);
	}
	
	// 장바구니 물품 구매
	public List<PaymentVO> cartPaymentProduct(PaymentVO vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("payment", vo);
		return mybatis.selectList("PaymentDAO.cartPaymentProduct", map);
	}
	
	// 결제
	public void insertPayment(PaymentVO vo) {
		mybatis.insert("PaymentDAO.insertPayment", vo);
	}
	
	// 결제 후 장바구니 비우기
	public void deleteCartPayment(PaymentVO vo) {
		mybatis.delete("PaymentDAO.deleteCartPayment", vo);
	}
	
	public void reduceProduct(String prd_id, String size) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("prd_id", prd_id);
		map.put("size", size);
		mybatis.update("PaymentDAO.reduceProduct", map);
	}
	
	public void doDelivery(PaymentVO vo) {
		mybatis.update("PaymentDAO.doDelivery", vo);
	}
	
	public int countDelevery() {
		return mybatis.selectOne("PaymentDAO.countDelevery");
	}
	
	public List<PaymentVO> deliveryPayment(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return mybatis.selectList("PaymentDAO.deliveryPayment", map);
	}
	
}