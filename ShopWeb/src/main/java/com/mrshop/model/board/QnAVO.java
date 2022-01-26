package com.mrshop.model.board;

import java.sql.Date;

public class QnAVO {
	private int qno;					// 게시글 번호
	private String qtitle;				// 게시글 제목
	private String qcontent;			// 게시글 내용
	private String writer;				// 질문자
	private String isre;				// 답변여부
	private String recontent;			// 답변 내용
	private Date regdate;				// java.util.Date
	private Date redate;				// 답변 일시
	private String show;				// 화면 표시 여부
	
	
	public int getQno() {
		return qno;
	}


	public void setQno(int qno) {
		this.qno = qno;
	}


	public String getQtitle() {
		return qtitle;
	}


	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}


	public String getQcontent() {
		return qcontent;
	}


	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}


	public String getWriter() {
		return writer;
	}


	public void setWriter(String writer) {
		this.writer = writer;
	}


	public String getIsre() {
		return isre;
	}


	public void setIsre(String isre) {
		this.isre = isre;
	}


	public String getRecontent() {
		return recontent;
	}


	public void setRecontent(String recontent) {
		this.recontent = recontent;
	}


	public Date getRegdate() {
		return regdate;
	}


	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}


	public Date getRedate() {
		return redate;
	}


	public void setRedate(Date redate) {
		this.redate = redate;
	}


	public String getShow() {
		return show;
	}


	public void setShow(String show) {
		this.show = show;
	}


	@Override
	public String toString() {
		return "QnAVO [qno=" + qno + ", qtitle=" + qtitle + ", qcontent=" + qcontent + ", writer=" + writer + ", isre="
				+ isre + ", recontent=" + recontent + ", regdate=" + regdate + ", redate=" + redate + ", show=" + show
				+ "]";
	}
	
	

}
