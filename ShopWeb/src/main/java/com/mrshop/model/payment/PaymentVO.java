package com.mrshop.model.payment;

import java.sql.Date;

public class PaymentVO {
	private int payment_id;
	private String member_id;
	private String prd_id;
	private String member_zipcode;
	private String member_faddr;
	private String member_laddr;
	private String member_phone;
	private String credit_number;
	private Date payment_date;

	private String prd_img;
	private String prd_name;
	private int prd_price;
	private int payment_size;
	private String payment_re;
	
	private String payment_reciever;
	private String payment_delivery;


	@Override
	public String toString() {
		return "PaymentVO [payment_id=" + payment_id + ", member_id=" + member_id + ", prd_id=" + prd_id
				+ ", member_zipcode=" + member_zipcode + ", member_faddr=" + member_faddr + ", member_laddr="
				+ member_laddr + ", member_phone=" + member_phone + ", credit_number=" + credit_number
				+ ", payment_date=" + payment_date + ", prd_img=" + prd_img + ", prd_name=" + prd_name + ", prd_price="
				+ prd_price + ", payment_size=" + payment_size + ", payment_re=" + payment_re + ", payment_reciever="
				+ payment_reciever + ", payment_delivery=" + payment_delivery + ", payment_msg=" + payment_msg
				+ ", getPayment_reciever()=" + getPayment_reciever() + ", getPayment_delivery()="
				+ getPayment_delivery() + ", getPayment_size()=" + getPayment_size() + ", getPayment_re()="
				+ getPayment_re() + ", getPayment_msg()=" + getPayment_msg() + ", getPayment_id()=" + getPayment_id()
				+ ", getMember_id()=" + getMember_id() + ", getPrd_id()=" + getPrd_id() + ", getMember_zipcode()="
				+ getMember_zipcode() + ", getMember_faddr()=" + getMember_faddr() + ", getMember_laddr()="
				+ getMember_laddr() + ", getMember_phone()=" + getMember_phone() + ", getCredit_number()="
				+ getCredit_number() + ", getPayment_date()=" + getPayment_date() + ", getPrd_img()=" + getPrd_img()
				+ ", getPrd_name()=" + getPrd_name() + ", getPrd_price()=" + getPrd_price() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	public String getPayment_reciever() {
		return payment_reciever;
	}

	public void setPayment_reciever(String payment_reciever) {
		this.payment_reciever = payment_reciever;
	}

	public String getPayment_delivery() {
		return payment_delivery;
	}

	public void setPayment_delivery(String payment_delivery) {
		this.payment_delivery = payment_delivery;
	}

	public int getPayment_size() {
		return payment_size;
	}

	public void setPayment_size(int payment_size) {
		this.payment_size = payment_size;
	}

	public String getPayment_re() {
		return payment_re;
	}

	public void setPayment_re(String payment_re) {
		this.payment_re = payment_re;
	}

	public String getPayment_msg() {
		return payment_msg;
	}

	public void setPayment_msg(String payment_msg) {
		this.payment_msg = payment_msg;
	}

	private String payment_msg;

	public int getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
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


	public String getMember_zipcode() {
		return member_zipcode;
	}

	public void setMember_zipcode(String member_zipcode) {
		this.member_zipcode = member_zipcode;
	}

	public String getMember_faddr() {
		return member_faddr;
	}

	public void setMember_faddr(String member_faddr) {
		this.member_faddr = member_faddr;
	}

	public String getMember_laddr() {
		return member_laddr;
	}

	public void setMember_laddr(String member_laddr) {
		this.member_laddr = member_laddr;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public String getCredit_number() {
		return credit_number;
	}

	public void setCredit_number(String credit_number) {
		this.credit_number = credit_number;
	}

	public Date getPayment_date() {
		return payment_date;
	}

	public void setPayment_date(Date payment_date) {
		this.payment_date = payment_date;
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

}