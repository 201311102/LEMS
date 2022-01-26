package com.mrshop.model.product;

import java.util.List;

public interface ProductService {

	// 관리자
	int prdCheckID(ProductInfoVO vo);

	// 물품 검색
	List<ProductInfoVO> listSearchPrd(String sPrd, int start, int end, String order, String sPrdB, String sPrdC);

	int countSearchPrd(String sPrd, String sPrdB, String sPrdC);

	// 물품 등록
	void insertProduct(ProductInfoVO vo);
	
	// 물품 업데이트
	void updateProduct(ProductInfoVO vo);
	
	// 물품 삭제
	void deleteProduct(ProductInfoVO vo);

	// 물품 리스트
	List<ProductInfoVO> getProductList(int start, int end, ProductInfoVO vo, String order);

	List<ProductInfoVO> getAdminProductList(int start, int end, ProductInfoVO vo);

	int getCountProduct(ProductInfoVO vo);

	int getAdminCountProduct(ProductInfoVO vo);

	ProductInfoVO productDetail(ProductInfoVO vo);
	
	int cartCheck(String member_id, String prd_id);
}