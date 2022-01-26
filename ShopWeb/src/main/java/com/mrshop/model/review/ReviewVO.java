package com.mrshop.model.review;

import java.sql.Date;

public class ReviewVO {
	private int review_id;
	private String review_prd_id;
	private String review_writer_id;
	private String review_cont;
	private int review_star;
	private Date review_date;
	
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public String getReview_prd_id() {
		return review_prd_id;
	}
	public void setReview_prd_id(String review_prd_id) {
		this.review_prd_id = review_prd_id;
	}
	public String getReview_writer_id() {
		return review_writer_id;
	}
	public void setReview_writer_id(String review_writer_id) {
		this.review_writer_id = review_writer_id;
	}
	public String getReview_cont() {
		return review_cont;
	}
	public void setReview_cont(String review_cont) {
		this.review_cont = review_cont;
	}
	public int getReview_star() {
		return review_star;
	}
	public void setReview_star(int review_star) {
		this.review_star = review_star;
	}
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}
	@Override
	public String toString() {
		return "ReviewVO [review_id=" + review_id + ", review_prd_id=" + review_prd_id + ", review_writer_id="
				+ review_writer_id + ", review_cont=" + review_cont + ", review_star=" + review_star + ", review_date="
				+ review_date + "]";
	}
	
	
	
}
