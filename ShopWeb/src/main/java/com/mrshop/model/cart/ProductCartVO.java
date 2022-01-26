package com.mrshop.model.cart;

import java.util.List;

public class ProductCartVO {
	private String prd_img;
	private String prd_name;
	private String prd_brand;
	private String prd_coll;
	private int prd_price;
	private String member_id;
	private String prd_id;
	private int cart_id;

	
	
	public String getPrd_brand() {
		return prd_brand;
	}

	public void setPrd_brand(String prd_brand) {
		this.prd_brand = prd_brand;
	}

	public String getPrd_coll() {
		return prd_coll;
	}

	public void setPrd_coll(String prd_coll) {
		this.prd_coll = prd_coll;
	}

	public String getPrd_img() {
		return prd_img;
	}

	public void setPrd_img(String prd_img) {
		this.prd_img = prd_img;
	}

	public String getPrd_name() {
		return prd_name;
	}

	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}

	public int getPrd_price() {
		return prd_price;
	}

	public void setPrd_price(int prd_price) {
		this.prd_price = prd_price;
	}


	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getPrd_id() {
		return prd_id;
	}

	public void setPrd_id(String prd_id) {
		this.prd_id = prd_id;
	}

	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

}
