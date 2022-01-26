package com.mrshop.model.board.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mrshop.model.board.QnAVO;


@Repository
public class QnADAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	// 게시글 쓰기
	public void createQnA(QnAVO vo) {
		mybatis.insert("QnADAO.createQnA", vo);
	}

	// 게시글 수정
	public void updateQnA(QnAVO vo) {
		mybatis.update("QnADAO.updateQnA", vo);
	}

	// 게시글 삭제
	public void deleteQnA(QnAVO vo) {
		mybatis.update("QnADAO.deleteQnA", vo);
	}
	
	// 게시글 삭제 체크
	public int checkQnA(int qno) throws Exception {
		return mybatis.selectOne("QnADAO.checkQnA", qno);
	}

	// 게시글 읽기
	public QnAVO readQnA(int qno) {
		return (QnAVO) mybatis.selectOne("QnADAO.readQnA", qno);
	}
	
	// 이전글
	public QnAVO previousQ(int qno) {
		return (QnAVO) mybatis.selectOne("QnADAO.previousQ", qno);
	}

	// 다음글
	public QnAVO nextQ(int qno) {
		return (QnAVO) mybatis.selectOne("QnADAO.nextQ", qno);
	}
	
	// 게시물 목록
	public List<QnAVO> listAllQnA(String searchOption, String keyword, int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);
		return mybatis.selectList("QnADAO.listAllQnA", map);
	}

	// 게시글 갯수
	public int getCountQnA(String searchOption, String keyword) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return mybatis.selectOne("QnADAO.getCountQnA", map);
	}
	
	// 게시글 답변
	void replyQnA(QnAVO vo) throws Exception{
		mybatis.update("QnADAO.replyQnA", vo);
	}
	
	// 게시글 답변 수정
	public void updateReply(QnAVO vo) {
		mybatis.update("QnADAO.updateReply", vo);
	}

}
