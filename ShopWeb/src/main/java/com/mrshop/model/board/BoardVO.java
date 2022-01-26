package com.mrshop.model.board;

import java.sql.Date;

public class BoardVO {
	private int bno;					// 게시글 번호
	private String title;				// 게시글 제목
	private String content;				// 게시글 내용			
	private Date regdate;				// java.util.Date
	private String show;				// 화면 표시 여부

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getShow() {
		return show;
	}

	public void setShow(String show) {
		this.show = show;
	}

	@Override
	public String toString() {
		return "BoardDTO [bno=" + bno + ", title=" + title + ", content=" + content + ", regdate=" + regdate + ", show=" + show + "]";
	}
}
