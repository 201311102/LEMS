package com.mrshop.model.product;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class ProductInfoVO {
	private String prd_brand;
	private Date prd_date;
	private String prd_name;
	private String prd_id;
	private int prd_price;
	private String prd_img;
	private String prd_coll;
	private int prd_lncp;
	private MultipartFile uploadFile;
	private String prd_mdlno;
	private String prd_color;
	private String prd_lncd;
	private String keyword ="";
	private int size250;
	private int size255;
	private int size260;
	private int size265;
	private int size270;
	private int size275;
	private int size280;
	private int size285;
	private int size290;
	
	
	public int getSize250() {
		return size250;
	}

	public void setSize250(int size250) {
		this.size250 = size250;
	}

	public int getSize255() {
		return size255;
	}

	public void setSize255(int size255) {
		this.size255 = size255;
	}

	public int getSize260() {
		return size260;
	}

	public void setSize260(int size260) {
		this.size260 = size260;
	}

	public int getSize265() {
		return size265;
	}

	public void setSize265(int size265) {
		this.size265 = size265;
	}

	public int getSize270() {
		return size270;
	}

	public void setSize270(int size270) {
		this.size270 = size270;
	}

	public int getSize275() {
		return size275;
	}

	public void setSize275(int size275) {
		this.size275 = size275;
	}

	public int getSize280() {
		return size280;
	}

	public void setSize280(int size280) {
		this.size280 = size280;
	}

	public int getSize285() {
		return size285;
	}

	public void setSize285(int size285) {
		this.size285 = size285;
	}

	public int getSize290() {
		return size290;
	}

	public void setSize290(int size290) {
		this.size290 = size290;
	}

	@Override
	public String toString() {
		return "ProductInfoVO [prd_brand=" + prd_brand + ", prd_date=" + prd_date + ", prd_name=" + prd_name
				+ ", prd_id=" + prd_id + ", prd_price=" + prd_price + ", prd_img=" + prd_img + ", prd_coll=" + prd_coll
				+ ", prd_lncp=" + prd_lncp + ", uploadFile=" + uploadFile + ", prd_mdlno=" + prd_mdlno + ", prd_color="
				+ prd_color + ", prd_lncd=" + prd_lncd + ", keyword=" + keyword + ", size250=" + size250 + ", size255="
				+ size255 + ", size260=" + size260 + ", size265=" + size265 + ", size270=" + size270 + ", size275="
				+ size275 + ", size280=" + size280 + ", size285=" + size285 + ", size290=" + size290 + "]";
	}

	public String getKeyword() {
		return keyword;
	}
	
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	public Date getPrd_date() {
		return prd_date;
	}

	public void setPrd_date(Date prd_date) {
		this.prd_date = prd_date;
	}

	public String getPrd_name() {
		return prd_name;
	}

	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}

	public String getPrd_id() {
		return prd_id;
	}

	public void setPrd_id(String prd_id) {
		this.prd_id = prd_id;
	}

	public int getPrd_price() {
		return prd_price;
	}

	public void setPrd_price(int prd_price) {
		this.prd_price = prd_price;
	}

	public String getPrd_img() {
		return prd_img;
	}

	public void setPrd_img(String prd_img) {
		this.prd_img = prd_img;
	}


	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

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

	public int getPrd_lncp() {
		return prd_lncp;
	}

	public void setPrd_lncp(int prd_lncp) {
		this.prd_lncp = prd_lncp;
	}

	public String getPrd_mdlno() {
		return prd_mdlno;
	}

	public void setPrd_mdlno(String prd_mdlno) {
		this.prd_mdlno = prd_mdlno;
	}

	public String getPrd_color() {
		return prd_color;
	}

	public void setPrd_color(String prd_color) {
		this.prd_color = prd_color;
	}

	public String getPrd_lncd() {
		return prd_lncd;
	}

	public void setPrd_lncd(String prd_lncd) {
		this.prd_lncd = prd_lncd;
	}

}
