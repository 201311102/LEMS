package com.mrshop.view.member;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mrshop.home.Pager;
import com.mrshop.model.member.MemberService;
import com.mrshop.model.member.MemberVO;
import com.mrshop.model.payment.PaymentVO;
import com.mrshop.model.review.ReviewService;
import com.mrshop.model.review.ReviewVO;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private ReviewService reviewService;

	@RequestMapping("/main")
	public String main() { return "main"; }

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signUpView(MemberVO vo) { return "member/signup"; }

	@RequestMapping("/forgotPW")
	public String forgotPWView(MemberVO vo) { return "member/forgotPW"; }

	// 회원 주문내역
	@ResponseBody
	@RequestMapping("/mypL")
	public String mypage1(MemberVO vo, HttpSession session, Model model, @RequestParam(defaultValue = "1") int myp) {
		// 주문 테이블 갯수 계산
		int count = memberService.getCountOrder(vo);

		session.setAttribute("myp", myp);
		session.setAttribute("member_id", vo.getMember_id());
		
		// 페이지 관련 설정
		Pager pager = new Pager(count, myp);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		List<PaymentVO> list = memberService.getOrderList(vo, start, end);

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mypL", list); // map에 자료 저장
		map.put("count", count);
		map.put("pager", pager); // 페이지 네버게이션을 위한 변수
		session.setAttribute("map", map);
		return "member/mypage";
	}
	
	//후기쓰기
		@RequestMapping(value="/writeReview")
		public String writeReview(ReviewVO vo) throws Exception {
			System.out.println(vo.toString());
			reviewService.writeReview(vo);
			int review_id = vo.getReview_id();
			String setRe = "Y";
			reviewService.setPaymentRe(review_id, setRe);
			return "member/mypage";
		}
		
		//후기삭제
		@RequestMapping(value="/deleteReview")
		public String deleteReview(ReviewVO vo) throws Exception {
			System.out.println(vo.toString());
			reviewService.deleteReview(vo);
			int review_id = vo.getReview_id();
			String setRe = "N";
			reviewService.setPaymentRe(review_id, setRe);
			
			return "member/mypage";	
		}
	
	

	// 회원 주문내역 뷰 (페이징 처리)
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypageView(MemberVO vo, HttpSession session, Model model, @RequestParam(defaultValue = "1") int myp) {
		int count = memberService.getCountOrder(vo);
		Pager pager = new Pager(count, myp);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		List<PaymentVO> list = memberService.getOrderList(vo, start, end);

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mypL", list); // map에 자료 저장
		map.put("count", count);
		map.put("pager", pager); // 페이지 네버게이션을 위한 변수
		session.setAttribute("map", map);
		return "member/mypage";
	}

	// 마이페이지-비밀번호 view
	@RequestMapping(value = "/mypage2", method = RequestMethod.GET)
	public String mypageView2(MemberVO vo) {
		return "member/mypage2";
	}

	// 마이페이지-비밀번호 확인 처리
	@RequestMapping(value = "/mypage2", method = RequestMethod.POST)
	public String mypage2(MemberVO vo, HttpSession session) {
		memberService.login(vo);
		MemberVO member = memberService.getMember(vo);
		System.out.println(member.toString());
		session.setAttribute("member", member);
		return "member/mypage3";
	}

	// 마이페이지-회원정보수정 view
	@RequestMapping(value = "/mypage3", method = RequestMethod.GET)
	public String mypageView3(MemberVO vo) {
		return "member/mypage3";
	}

	// 마이페이지-회원정보수정 처리
	@RequestMapping(value = "/mypage3", method = RequestMethod.POST)
	public String mypage3(MemberVO vo, HttpSession session) {
		MemberVO logged = (MemberVO) session.getAttribute("member");
		System.out.println("로그인세션은" + logged.toString());
		System.out.println("회원정보수정처리:" + vo.toString());
		memberService.updateMember(vo);
		session.setAttribute("member", memberService.getMember(logged));
		return "member/mypage";
		
	}
	
	@RequestMapping(value = "/deleteMember", method = RequestMethod.POST)
	public String deleteMember(MemberVO vo, HttpSession session) {
		memberService.deleteMember(vo);
		MemberVO logged = (MemberVO) session.getAttribute("member");
		System.out.println(logged.getMember_id() + " " + logged.getAdmin());
		if(logged.getAdmin().equals("Y")) {
			return "admin/memberList";
		} else {
			session.invalidate();
			return "main";
		}
		
	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "member/login";
	}

	// 아이디 중복검사
	@ResponseBody
	@RequestMapping(value = "/checkID")
	public int checkID(MemberVO vo) {
		int checkID = memberService.checkID(vo);
		return checkID;
	}

	@ResponseBody
	@RequestMapping(value = "/checkMember")
	public int checkMember(MemberVO vo) {
		int checkMember = memberService.checkMember(vo);
		return checkMember;
	}

	// 회원가입
	@RequestMapping("/join")
	public String signUp(MemberVO vo) {
		System.out.println("회원가입중" + vo.toString());
		System.out.println("가입 성공....");
		memberService.insertMember(vo);
		return "main";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginView(MemberVO vo) {
		return "member/login";
	}

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session) {
		MemberVO member = memberService.login(vo);
		if (member != null) {
			session.setAttribute("member", member);
			return "main";
		} else {
			return "member/login";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/forgotPWChkm")
	public int forgotPWChkm(MemberVO vo) {
		int forgotPWChkm = memberService.forgotPWChkMember(vo);
		return forgotPWChkm;
	}
	
	@RequestMapping(value="/forgotPW", method = RequestMethod.POST)
	public String forgotPW(MemberVO vo) {
		memberService.forgotPWUpdate(vo);
		return "";
	}
	
	
	@RequestMapping("/memberList")
	public String memberList(
			@RequestParam(defaultValue = "1") int curPage, HttpSession session, Model model) {
		System.out.println(session.getAttribute("member"));
//		session.setAttribute("member", session.getAttribute("member"));
		int count = memberService.getCountMember(); // 서비스에서 count메소드 찾기 혹은 만들기
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		List<MemberVO> list = memberService.getMemberList(start, end);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("pager", pager);
		model.addAttribute("map", map);
		System.out.println(session.getAttribute("member"));
		//
		return "admin/memberList";
	}
	
	@RequestMapping("/memberView")
	public String memberView(MemberVO vo, Model model) {
		System.out.println(vo.getMember_id());
		int count = memberService.getCountOrder(vo);

		List<PaymentVO> list = memberService.getOrderList(vo, 1, count);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("member", memberService.getMember(vo));
		map.put("mypL", list); // map에 자료 저장
		map.put("count", count);
		model.addAttribute("map", map);
		
		return "admin/memberView";
	}
	
	/*@RequestMapping("/memberUpdate")
	public String memberUpdate(MemberVO vo, Model model) {
		System.out.println("회원수정:" + vo.getMember_id());
		MemberVO member = memberService.getMember(vo);
		System.out.println(member.toString());
		model.addAttribute("member", member);
		return "admin/memberUpdate";
	}*/
}
