package com.mrshop.view.cart;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mrshop.home.Pager;
import com.mrshop.model.cart.ProductCartService;
import com.mrshop.model.cart.ProductCartVO;
import com.mrshop.model.payment.PaymentService;
import com.mrshop.model.payment.PaymentVO;

@Controller
public class ProductCartController {
	@Autowired
	private ProductCartService productCartService;
	@Autowired
	private PaymentService paymentService;

	// 장바구니 담기
	@RequestMapping("/insertCart")
	public String insertCart(ProductCartVO vo) {
		productCartService.insertProductCart(vo);
		return "product/category";
	}
	
	// 결제
	@RequestMapping(value="/payment", method=RequestMethod.GET)
	public String paymentView(ProductCartVO vo) {
		return "member/payment";
	}

	@RequestMapping(value="/payment", method=RequestMethod.POST)
	public String payment(PaymentVO vo, HttpSession session, Model model) {
		System.out.println("페이먼트 도착");
		System.out.println(vo.getPayment_size());
		int payment_size =vo.getPayment_size();
		List<PaymentVO> list = paymentService.getPaymentProduct(vo);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("payment_size", payment_size);
//		model.addAttribute("map", map);
		session.setAttribute("map", map);
		
		return "member/payment";
	}
	
	// 결제목록 갱신
	@RequestMapping(value="/decopay")
	public String insertPayment(PaymentVO vo) {
			paymentService.insertPayment(vo);
			paymentService.deleteCartPayment(vo);
			String size = "size" + vo.getPayment_size();
			String prd_id = vo.getPrd_id();
			System.out.println(size);
			paymentService.reduceProduct(prd_id, size);
		return "main";
	}
	
	// 장바구니 전체 비우기
	@RequestMapping("/clearCart")
	public String deleteProductCart(ProductCartVO vo) {
		productCartService.deleteProductCart(vo);
		return "member/cart";
	}
	
	// 장바구니 물품 삭제
	@RequestMapping("/delCart")
	public String deleteCart(ProductCartVO vo) {
		productCartService.deleteCart(vo);
		return "member/cart";
	}

	// 장바구니
	@RequestMapping("/productCart")
	public String cartList(ProductCartVO vo, Model model) {
		model.addAttribute("cartPrd", productCartService.getProductCartList(vo));
		return "member/cart";
	}
	
	@RequestMapping("/delivery")
	public String delivery(PaymentVO vo, Model model, @RequestParam(defaultValue = "1") int curPage) {
		int count = paymentService.countDelevery();
//		System.out.println(count);
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<PaymentVO> list = paymentService.deliveryPayment(start, end);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // map에 자료 저장
		map.put("count", count);
		map.put("pager", pager); // 페이지 네버게이션을 위한 변수
		model.addAttribute("map", map);
		
		return "admin/delivery";
	}
	
	@RequestMapping("/doDelivery")
	public String doDelivery(PaymentVO vo) {
		System.out.println("출고처리도착");
		System.out.println(vo.getPayment_id());
		
		paymentService.doDelivery(vo);
		
		return "admin/delivery";
	}
}
