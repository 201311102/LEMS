package com.mrshop.model.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mrshop.model.product.ProductInfoVO;
import com.mrshop.model.product.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductInfoDAO productInfoDAO;

	// 관리자
	public int prdCheckID(ProductInfoVO vo) {
		return productInfoDAO.prdCheckID(vo);
	}

	// 물품 검색
	public List<ProductInfoVO> listSearchPrd(String sPrd, int start, int end, String order, String sPrdB, String sPrdC) {
		return productInfoDAO.listSearchPrd(sPrd, start, end, order, sPrdB, sPrdC);
	}

	// 물품 검색 카운트
	public int countSearchPrd(String sPrd, String sPrdB, String sPrdC) {
		return productInfoDAO.countSearchPrd(sPrd, sPrdB, sPrdC);
	}

	public void insertProduct(ProductInfoVO vo) {
		productInfoDAO.insertProduct(vo);
	}
	
	public void updateProduct(ProductInfoVO vo) {
		productInfoDAO.updateProduct(vo);
	}
	
	public void deleteProduct(ProductInfoVO vo) {
		productInfoDAO.deleteProduct(vo);
	}

	// 품목 리스트
	public List<ProductInfoVO> getProductList(int start, int end, ProductInfoVO vo, String order) {
		return productInfoDAO.getProductList(start, end, vo, order);
	}

	// 관리자 품목 리스트
	public List<ProductInfoVO> getAdminProductList(int start, int end, ProductInfoVO vo) {
		return productInfoDAO.getAdminProductList(start, end, vo);
	}

	// 품목 갯수 카운트
	public int getCountProduct(ProductInfoVO vo) {
		return productInfoDAO.getCountProduct(vo);
	}

	// 관리자 품목 갯수 카운트
	public int getAdminCountProduct(ProductInfoVO vo) {
		return productInfoDAO.getAdminCountProduct(vo);
	}

	// 품목 상세보기
	public ProductInfoVO productDetail(ProductInfoVO vo) {
		return productInfoDAO.productDetail(vo);
	}
	
	public int cartCheck(String member_id, String prd_id) {
		return productInfoDAO.cartCheck(member_id, prd_id);
	}
}
