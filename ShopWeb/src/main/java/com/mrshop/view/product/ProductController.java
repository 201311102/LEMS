package com.mrshop.view.product;

import java.io.File;
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
import org.springframework.web.multipart.MultipartFile;

import com.mrshop.home.Pager;
import com.mrshop.home.RPager;
import com.mrshop.model.member.MemberVO;
import com.mrshop.model.product.ProductInfoVO;
import com.mrshop.model.product.ProductService;
import com.mrshop.model.review.ReviewService;
import com.mrshop.model.review.ReviewVO;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private ReviewService reviewService;

	@RequestMapping("/productpage")
	public String productPage(ProductInfoVO vo, Model model, HttpSession session) {
		System.out.println("상품상세페이지");
		String prd_id = vo.getPrd_id();
		System.out.println(prd_id);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("product", productService.productDetail(vo));
		
		int cartCheck = 0;
		MemberVO member = (MemberVO) session.getAttribute("member");
		if(member != null) {
			System.out.println("널이 아니에요");
			String member_id = member.getMember_id();
			System.out.println(member_id);
			cartCheck = productService.cartCheck(member_id, prd_id);
			System.out.println("관심목록 체크는: " + cartCheck);
			
		} else {
			System.out.println("널이에요");
			
		}
		map.put("cartCheck", cartCheck);
		
		// 리뷰글 갯수 계산
		int count = reviewService.countReview(prd_id); 
		map.put("count", count);
		if(count != 0) {
			System.out.println(count);
			double avg = reviewService.avgStar(prd_id);
			int cStar5 = reviewService.countStar(prd_id, 5);
			System.out.println("5점은:" + cStar5);
			int cStar4 = reviewService.countStar(prd_id, 4);
			int cStar3 = reviewService.countStar(prd_id, 3);
			int cStar2 = reviewService.countStar(prd_id, 2);
			int cStar1 = reviewService.countStar(prd_id, 1);
			
			double pStar5 = (double)cStar5/(double)count*100;
			System.out.println("5점의 백분율은" + pStar5);
			double pStar4 = (double)cStar4/(double)count*100;
			double pStar3 = (double)cStar3/(double)count*100;
			double pStar2 = (double)cStar2/(double)count*100;
			double pStar1 = (double)cStar1/(double)count*100;
			
			double starP = avg * 20;
			System.out.println("평균 백분율은 " + starP);
			
			List<ReviewVO> list = reviewService.listReview(prd_id, 1, count); // 게시글 목록
			
			map.put("avg", avg);
			map.put("starP", starP);
			map.put("cStar5", cStar5);
			map.put("cStar4", cStar4);
			map.put("cStar3", cStar3);
			map.put("cStar2", cStar2);
			map.put("cStar1", cStar1);
			map.put("pStar5", pStar5);
			map.put("pStar4", pStar4);
			map.put("pStar3", pStar3);
			map.put("pStar2", pStar2);
			map.put("pStar1", pStar1);
			
			map.put("list", list); // map에 자료 저장
			map.put("count", count);
			map.put("prd_id", prd_id);
		}
		
		model.addAttribute("map", map);
		
		return "product/productpage";
	}

	// 품목 리스트 + 페이징 + 검색
	@RequestMapping(value = "/searchPrd", method = RequestMethod.GET)
	public String listPage(Model model, HttpSession session, ProductInfoVO vo,
			@RequestParam(defaultValue = "") String sPrd, 
			@RequestParam(defaultValue = "1") int curPage, 
			@RequestParam(defaultValue = "ASC") String order,
			@RequestParam(defaultValue = "") String sPrdB,
			@RequestParam(defaultValue = "") String sPrdC
			) {
		// 게시글 갯수 계산
		int count = productService.countSearchPrd(sPrd, sPrdB, sPrdC);

		// 페이지 관련 설정
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		session.setAttribute("sPrd", sPrd); // 상품 이름 검색
		session.setAttribute("curPage", curPage);
		
		session.setAttribute("order", order);
		
		session.setAttribute("sPrdB", sPrdB);
		session.setAttribute("sPrdC", sPrdC);
		
		List<ProductInfoVO> list = productService.listSearchPrd(sPrd, start, end, order, sPrdB, sPrdC); // 게시글 목록
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // map에 자료 저장
		map.put("count", count);
		map.put("pager", pager); // 페이지 네버게이션을 위한 변수
		map.put("sPrd", sPrd);
		
		map.put("order", order);
		map.put("sPrdB", sPrdB);
		map.put("sPrdC", sPrdC);
		model.addAttribute("map", map);

		return "product/search";
	}

	// 관리자
	// 상품코드 중복검사
	@ResponseBody
	@RequestMapping(value = "/prdCheckID")
	public int prdCheckID(ProductInfoVO vo) {
		int prdCheckID = productService.prdCheckID(vo);
		return prdCheckID;
	}

	// 상품등록 페이지
	@RequestMapping("/prdinsert")
	public String insertProductView(ProductInfoVO vo) {
		return "admin/insertProduct";
	}

	// (진) 상품등록
		@RequestMapping("/insertProduct")
		public String insertProduct(ProductInfoVO vo) {
			System.out.println("컨트롤러 도착");
			System.out.println(vo.toString());
			String root = "C:/sts-bundle/stswk/ShopWeb/src/main/webapp/";
			String prd_brand = vo.getPrd_brand();
			String prd_coll = vo.getPrd_coll();
			String path = "resources/img/product/" + prd_brand + "/" + prd_coll + "/";
			System.out.println("이미지주소 : " + path);
			String realpath = root + path;
			System.out.println("저장위치 : " + realpath);
			
			File dir = new File(realpath);
			System.out.println("저장위치있는가 : " + dir.isDirectory());
			if (!dir.isDirectory()) {
				dir.mkdirs();
				System.out.println("저장위치만들었는가 : " + dir.isDirectory());
			}
			
			MultipartFile mFile = vo.getUploadFile();
			String fileName = mFile.getOriginalFilename();
			System.out.println("파일네임" + fileName);
			vo.setPrd_img(path + fileName);
			System.out.println(vo.toString());
			try {
				mFile.transferTo(new File(realpath + fileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
			productService.insertProduct(vo);
			return "main";
		}
		
		//상품 업데이트 페이지
		@RequestMapping(value = "/prdupdate")
		public String updateProductView(ProductInfoVO vo, Model model) {
			System.out.println("업데이트 뷰 도착");
			System.out.println(vo.toString());
			model.addAttribute("product", productService.productDetail(vo));
			
			return "admin/updateProduct";
		}
		
		
		//상품 업데이트
		@RequestMapping("/updateProduct")
		public String updateProduct(ProductInfoVO vo) {
			System.out.println("업데이트 도착");
			System.out.println(vo.toString());
			
			MultipartFile mFile = vo.getUploadFile();
			String fileName = mFile.getOriginalFilename();
			System.out.println("비었나:" + fileName.isEmpty());
			
			if(!fileName.isEmpty()) {
				String root = "C:/sts-bundle/stswk/ShopWeb/src/main/webapp/";
				String path = vo.getPrd_img();
				String realpath = root + path;
				File dir = new File(realpath);
				System.out.println("존재하는가" + dir.exists());
				if (dir.exists()) {
					dir.delete();
					System.out.println("삭제했는가 : " + !dir.exists());
				}
				
				String prd_brand = vo.getPrd_brand();
				String prd_coll = vo.getPrd_coll();
				path = "resources/img/product/" + prd_brand + "/" + prd_coll + "/";
				realpath = root + path;
				System.out.println("저장위치 : " + realpath);
				System.out.println("파일네임" + fileName);
				vo.setPrd_img(path + fileName);
				System.out.println(vo.toString());
				try {
					mFile.transferTo(new File(realpath + fileName));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			productService.updateProduct(vo);
			return "main";
		}
		
		//상품 삭제
		@RequestMapping(value = "/deleteProduct", method = RequestMethod.POST)
		public String deleteProduct(ProductInfoVO vo, HttpSession session) {
			System.out.println("삭제도착");
			System.out.println(vo.toString());
			String root = "C:/sts-bundle/stswk/ShopWeb/src/main/webapp/";
			String path = vo.getPrd_img();
			String realpath = root + path;
			File dir = new File(realpath);
			System.out.println("존재하는가" + dir.exists());
			if (dir.exists()) {
				dir.delete();
				System.out.println("삭제했는가 : " + !dir.exists());
			}
			
			productService.deleteProduct(vo);
			return "main";
		}
	

	// 관리자 용 상품 목록
	@RequestMapping(value = "/productList", method = RequestMethod.GET)
	public String productListView(@RequestParam(defaultValue = "1") int curPage, ProductInfoVO vo, Model model) {
		int count = productService.getAdminCountProduct(vo);
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		List<ProductInfoVO> list = productService.getAdminProductList(start, end, vo);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("pager", pager);
		model.addAttribute("map", map);
		return "admin/productList";
	}
	
	
}