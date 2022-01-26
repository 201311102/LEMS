package com.mrshop.model.board;

import java.util.List;

import javax.servlet.http.HttpSession;

public interface QnAService {
	
	void createQnA(QnAVO vo) throws Exception;					// 질문게시글 쓰기 
	void updateQnA(QnAVO vo) throws Exception;					// 질문게시글 수정
	void deleteQnA(QnAVO vo) throws Exception;					// 질문게시글 삭제
	int checkQnA(int qno) throws Exception;						// 질문게시글 삭제 체크, 숨김
	QnAVO readQnA(int qno) throws Exception;					// 질문게시글 읽기
	QnAVO previousQ(int qno) throws Exception;					// 이전글
	QnAVO nextQ(int qno) throws Exception;						// 다음글
	List<QnAVO> listAllQnA(String searchOption,String keyword,int start, int end) throws Exception;	// 질문게시글 목록
	int getCountQnA(String searchOption,String keyword) throws Exception;	// 질문게시글 갯수
	
	void replyQnA(QnAVO vo) throws Exception;					// 답변달기
	void updateReply(QnAVO vo) throws Exception;				// 답변 수정
}
