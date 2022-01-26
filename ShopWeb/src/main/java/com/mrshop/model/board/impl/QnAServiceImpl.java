package com.mrshop.model.board.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mrshop.model.board.QnAService;
import com.mrshop.model.board.QnAVO;


@Service("QnAService")
public class QnAServiceImpl implements QnAService{

	@Autowired
	private QnADAO qnaDAO;

	// 게시글 쓰기
	public void createQnA(QnAVO vo) throws Exception {
		qnaDAO.createQnA(vo);
	}

	// 게시글 수정
	public void updateQnA(QnAVO vo) throws Exception {
		qnaDAO.updateQnA(vo);
	}

	// 게시글 삭제
	public void deleteQnA(QnAVO vo) throws Exception {
		qnaDAO.deleteQnA(vo);
	}
	
	// 게시글 삭제 체크
	public int checkQnA(int qno) throws Exception {
		return qnaDAO.checkQnA(qno);
	}

	// 게시글 읽기
	public QnAVO readQnA(int qno) throws Exception {
		return qnaDAO.readQnA(qno);
	}
	
	// 게시글 목록
	public List<QnAVO> listAllQnA(String searchOption, String keyword, int start, int end)
			throws Exception {
		return qnaDAO.listAllQnA(searchOption, keyword, start, end);
	}
	
	// 이전글
	public QnAVO previousQ(int qno) throws Exception {
		return qnaDAO.previousQ(qno);
	}
	
	// 다음글
	public QnAVO nextQ(int qno) throws Exception {
		return qnaDAO.nextQ(qno);
	}
	
	// 게시글 갯수
	public int getCountQnA(String searchOption, String keyword) throws Exception {
		return qnaDAO.getCountQnA(searchOption, keyword);
	}
	
	//답변등록
	public void replyQnA(QnAVO vo) throws Exception{
		qnaDAO.replyQnA(vo);
	}
	
	// 답변 수정
	public void updateReply(QnAVO vo) throws Exception {
		qnaDAO.updateReply(vo);
	}

}
