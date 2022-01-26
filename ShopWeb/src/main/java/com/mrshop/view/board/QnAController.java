package com.mrshop.view.board;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mrshop.home.Pager;
import com.mrshop.model.board.QnAService;
import com.mrshop.model.board.QnAVO;
import com.mrshop.model.member.MemberVO;

@Controller
@SessionAttributes("qna")
public class QnAController {

	@Autowired
	private QnAService qnaService;

	// 게시글 등록 뷰
	@RequestMapping("/writeQnA")
	public String write(QnAVO vo) throws Exception {
		return "board/writeQnA";
	}

	// 게시글 등록
	@RequestMapping(value = "/createQnA", method = RequestMethod.POST)
	public String createQnA(QnAVO vo) throws Exception {
		qnaService.createQnA(vo);
		return "board/qna";
	}

	// 게시글 수정 뷰
	@RequestMapping("/updateWriteQnA")
	public String updateWriteQnA(QnAVO vo) throws Exception {
		return "board/updateWriteQnA";
	}

	// 게시글 수정
	@RequestMapping(value = "/updateQnA", method = RequestMethod.POST)
	public String updateQnA(QnAVO vo) throws Exception {
		qnaService.updateQnA(vo);
		return "board/qna";
		// return "redirect:/board";
	}
	
	// 게시글 답변 뷰
	@RequestMapping("/replyWriteQnA")
	public String reply(QnAVO vo) throws Exception {
		return "board/replyWriteQnA";
	}

	// 게시글 답변
	@RequestMapping(value = "/replyQnA", method = RequestMethod.POST)
	public String replyQnA(QnAVO vo) throws Exception {
		qnaService.replyQnA(vo);
		return "board/qna";
		// return "redirect:/board";
	}
	
	// 게시글 답변 수정 뷰
	@RequestMapping("/updateReplyQnA")
	public String updateReplyQnA(QnAVO vo) throws Exception {
		return "board/updateReplyQnA";
	}
	
	// 답변 수정
	@RequestMapping(value = "/updateReply", method = RequestMethod.POST)
	public String updateReply(QnAVO vo) throws Exception {
		qnaService.updateReply(vo);
		return "board/qna";
		// return "redirect:/board";
	}

	// 게시글 삭제
	@RequestMapping("/deleteQnA")
	public String deleteQnA(QnAVO vo) throws Exception {
		qnaService.deleteQnA(vo); // 삭제 처리
		return "board/qna";
	}

	// 게시글 목록 + 검색 + 페이징
	@RequestMapping("/qna")
	public String listAllQnA(Model model, HttpSession session,
			@RequestParam(defaultValue = "ALL") String searchOption, 
			@RequestParam(defaultValue = "") String keyword,
			@RequestParam(defaultValue = "") String search, 
			@RequestParam(defaultValue = "1") int curPage)
			throws Exception {

		// 게시글 갯수 계산
		int count = qnaService.getCountQnA(searchOption, keyword);

		session.setAttribute("searchOption", searchOption);
		session.setAttribute("keyword", keyword);
		session.setAttribute("search", search);
		session.setAttribute("curPage", curPage);

		// 페이지 관련 설정
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		List<QnAVO> list = qnaService.listAllQnA(searchOption, keyword, start, end); // 게시글 목록

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // map에 자료 저장
		map.put("count", count);
		map.put("pager", pager); // 페이지 네버게이션을 위한 변수
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("search", search);
		model.addAttribute("map", map);

		return "board/qna";
	}
	
	// 게시글 상세보기
	@RequestMapping("/viewQnA")
	public String readBoard(@RequestParam("qno") int qno, 
							@RequestParam("show") String show, Model model, HttpSession session, 
							@RequestParam(defaultValue = "TITLE") String searchOption,
							@RequestParam(defaultValue = "") String keyword, 
							@RequestParam(defaultValue = "") String search,
							@RequestParam(defaultValue = "1") int curPage) throws Exception {

		/* 게시글 예외처리 */
		// 삭제된 게시글울 읽으려고 하는 경우
		int checkQnA = qnaService.checkQnA(qno);

		if (checkQnA == 0 && show.equals("N")) {
			return "board/checkDel";
		}

		// 존재하지 않는 게시글에 접근하려는 경우
		else if (checkQnA == 0 && show.equals("Y")) {
			return "board/checkNone";

		} else if (checkQnA == 1 && show.equals("N")) {
			return "board/checkNone";
		}
		

		model.addAttribute("qna", qnaService.readQnA(qno)); // 게시글 읽기

		// 세션 저장
		searchOption = (String) session.getAttribute("searchOption");
		session.setAttribute("searchOption", searchOption);

		keyword = (String) session.getAttribute("keyword");
		session.setAttribute("keyword", keyword);

		search = (String) session.getAttribute("search");
		session.setAttribute("search", search);

//		curPage = (int) session.getAttribute("curPage");
		curPage = (Integer) session.getAttribute("curPage");
		session.setAttribute("curPage", curPage);

		QnAVO plist = qnaService.previousQ(qno);
		QnAVO nlist = qnaService.nextQ(qno);

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("previousQ", plist);
		map.put("nextQ", nlist);
		model.addAttribute("map", map);

		return "board/viewQnA";
	}
}