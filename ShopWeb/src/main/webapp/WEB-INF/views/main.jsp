<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="include/menu.jsp"%>
<link rel="stylesheet" type="text/css" href="resources/css/main.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
	$(function() {
		$('.slider').bxSlider({
			auto : true,
			touchEnabled : (navigator.maxTouchPoints > 0),
		});
	});
	function searchAll() {
		self.location = "searchPrd?sPrd=";
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<html>
<body>


	<div class="bannerContent">
		<div class="slider">
			<div onClick="location.href='about'" style="cursor: pointer">
				<img src="resources/img/메인베너1.jpg">
			</div>
			<div>
				<img onclick="searchAll()" style="cursor: pointer"
					src="resources/img/메인베너2.jpg">
			</div>
			<div>
				<img onClick="location.href='productpage?prd_id=NJ009'"
					style="cursor: pointer" src="resources/img/메인베너3.jpg">
			</div>
			<div>
				<img onClick="location.href='productpage?prd_id=NJ010'"
					style="cursor: pointer" src="resources/img/메인베너4.jpg">
			</div>
		</div>
	</div>
	<div class="mainContent">
		<p class="newItem">New In</p>
		<p class="newItemKor">신규 등록 상품</p>

		<div class="prdContent">
			<div class="prd" onClick="location.href='productpage?prd_id=NP004'"
				style="cursor: pointer">
				<div class="prdimg">
					<img
						src="resources/img/product/Nike/Peaceminusone/나이키 x 피스마이너스원 퀀도1 화이트.png">
				</div>
				<p class="prdbrand">Nike</p>
				<p class="prdname">나이키 x 피스마이너스원 퀀도1 화이트</p>
				<p class="prdprice">403,000원</p>
			</div>

			<div class="prd" onClick="location.href='productpage?prd_id=NS002'"
				style="cursor: pointer">
				<div class="prdimg">
					<img
						src="resources/img/product/Nike/Sacai/나이키 x 사카이 x 언더커버 LD와플 미드나잇 스프루스 유니버시티 레드.png">
				</div>
				<p class="prdbrand">Nike</p>
				<p class="prdname">나이키 x 사카이 x 언더커버 LD와플 미드나잇 스프루스 유니버시티 레드</p>
				<p class="prdprice">315,000원</p>
			</div>

			<div class="prd" onClick="location.href='productpage?prd_id=MMR008'"
				style="cursor: pointer">
				<div class="prdimg">
					<img
						src="resources/img/product/Maison Margiela/Replica/메종 마르지엘라 카프스킨 레플리카 스니커즈.png">
				</div>
				<p class="prdbrand">Maison Margiela</p>
				<p class="prdname">메종 마르지엘라 카프스킨 레플리카 스니커즈</p>
				<p class="prdprice">463,000원</p>
			</div>

			<div class="prd" onClick="location.href='productpage?prd_id=BST002'"
				style="cursor: pointer">
				<div class="prdimg">
					<img
						src="resources/img/product/Balenciaga/Speed Trainer/발렌시아가 스피드 트레이너 블랙 2021.png">
				</div>
				<p class="prdbrand">Balenciaga</p>
				<p class="prdname">발렌시아가 스피드 트레이너 블랙 2021</p>
				<p class="prdprice">620,000원</p>
			</div>

			<div class="prd" onClick="location.href='productpage?prd_id=AY001'"
				style="cursor: pointer">
				<div class="prdimg">
					<img
						src="resources/img/product/Adidas/Yeezy 500/아디다스 이지 500 본 화이트.png">
				</div>
				<p class="prdbrand">Adidas</p>
				<p class="prdname">아디다스 이지 500 본 화이트</p>
				<p class="prdprice">440,000원</p>
			</div>

			<div class="prd"
				onClick="location.href='productpage?prd_id=AYFRNNR008'"
				style="cursor: pointer">
				<div class="prdimg">
					<img
						src="resources/img/product/Adidas/Yeezy Foam RNNR/아디다스 이지 폼 러너 오커.png">
				</div>
				<p class="prdbrand">Adidas</p>
				<p class="prdname">아디다스 이지 폼 러너 오커</p>
				<p class="prdprice">200,000원</p>
			</div>

			<div class="prd" onClick="location.href='productpage?prd_id=NJ008'"
				style="cursor: pointer">
				<div class="prdimg">
					<img
						src="resources/img/product/Nike/Jordan1/조던 1 로우 화이트 울프 그레이.png">
				</div>
				<p class="prdbrand">Nike</p>
				<p class="prdname">조던 1 로우 화이트 울프 그레이</p>
				<p class="prdprice">378,000원</p>
			</div>

			<div class="prd" onClick="location.href='productpage?prd_id=NJ003'"
				style="cursor: pointer">
				<div class="prdimg">
					<img
						src="resources/img/product/Nike/Jordan1/조던 1 레트로 하이 OG 유니버시티 블루.png">
				</div>
				<p class="prdbrand">Nike</p>
				<p class="prdname">조던 1 레트로 하이 OG 유니버시티 블루</p>
				<p class="prdprice">425,000원</p>
			</div>
			<p class="newItem">Most Popular</p>
			<p class="newItemKor">인기 상품</p>

			<div class="prdContent">
				<div class="prd" onClick="location.href='productpage?prd_id=NJ001'"
					style="cursor: pointer">
					<div class="prdimg">
						<img
							src="resources/img/product/Nike/Jordan1/조던 1 레트로 하이 OG 블랙 모카.png">
					</div>
					<p class="prdbrand">Nike</p>
					<p class="prdname">조던 1 레트로 하이 OG 블랙 모카</p>
					<p class="prdprice">721,000원</p>
				</div>

				<div class="prd" onClick="location.href='productpage?prd_id=NS008'"
					style="cursor: pointer">
					<div class="prdimg">
						<img
							src="resources/img/product/Nike/Sacai/나이키 x 사카이 베이퍼와플 블랙 화이트.png">
					</div>
					<p class="prdbrand">Nike</p>
					<p class="prdname">나이키 x 사카이 베이퍼와플 블랙 화이트</p>
					<p class="prdprice">1,550,000원</p>
				</div>

				<div class="prd" onClick="location.href='productpage?prd_id=NP001'"
					style="cursor: pointer">
					<div class="prdimg">
						<img
							src="resources/img/product/Nike/Peaceminusone/나이키 x 피스마이너스원 에어포스 1 로우 파라노이즈 - 한국 한정.png">
					</div>
					<p class="prdbrand">Nike</p>
					<p class="prdname">나이키 x 피스마이너스원 에어포스 1 로우 파라노이즈 - 한국 한정</p>
					<p class="prdprice">2,450,000원</p>
				</div>

				<div class="prd" onClick="location.href='productpage?prd_id=NJ004'"
					style="cursor: pointer">
					<div class="prdimg">
						<img
							src="resources/img/product/Nike/Jordan1/조던 1 레트로 하이 OG 페이턴트 브레드.png">
					</div>
					<p class="prdbrand">Nike</p>
					<p class="prdname">조던 1 레트로 하이 OG 페이턴트 브레드</p>
					<p class="prdprice">314,000원</p>
				</div>

				<div class="prd" onClick="location.href='productpage?prd_id=NJ007'"
					style="cursor: pointer">
					<div class="prdimg">
						<img
							src="resources/img/product/Nike/Jordan1/조던 1 로우 블랙 파티클 그레이.png">
					</div>
					<p class="prdbrand">Nike</p>
					<p class="prdname">조던 1 로우 블랙 파티클 그레이</p>
					<p class="prdprice">305,000원</p>
				</div>

				<div class="prd" onClick="location.href='productpage?prd_id=BST005'"
					style="cursor: pointer">
					<div class="prdimg">
						<img
							src="resources/img/product/Balenciaga/Speed Trainer/발렌시아가 스피드 트레이너 블랙 화이트 2021.png">
					</div>
					<p class="prdbrand">Balenciaga</p>
					<p class="prdname">발렌시아가 스피드 트레이너 블랙 화이트 2021</p>
					<p class="prdprice">723,000원</p>
				</div>

				<div class="prd"
					onClick="location.href='productpage?prd_id=AYB350003'"
					style="cursor: pointer">
					<div class="prdimg">
						<img
							src="resources/img/product/Adidas/Yeezy Boost350/아디다스 이지 부스트 350 V2 벨루가 - 리플렉티브.png">
					</div>
					<p class="prdbrand">Adidas</p>
					<p class="prdname">아디다스 이지 부스트 350 V2 벨루가 - 리플렉티브</p>
					<p class="prdprice">421,000원</p>
				</div>

				<div class="prd" onClick="location.href='productpage?prd_id=NS006'"
					style="cursor: pointer">
					<div class="prdimg">
						<img
							src="resources/img/product/Nike/Sacai/나이키 x 사카이 x 프라그먼트 LD와플 라이트 스모크 그레이.png">
					</div>
					<p class="prdbrand">Nike</p>
					<p class="prdname">나이키 x 사카이 x 프라그먼트 LD와플 라이트 스모크 그레이</p>
					<p class="prdprice">627,000원</p>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="include/csinfo.jsp"%>
</body>
</html>