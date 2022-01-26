<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="now" class="java.util.Date" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/menu.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/board.css">
<html>
<body>
	<div class="mypageContainer">
		<div class="navarea">
			<nav>
				<h2>고객센터</h2>
				<div>
					<ul>
						<li onclick="location.href='about'"
							style="cursor: pointer color: black; font-weight: bold;">회사소개</li>
						<li onclick="location.href='board'" style="cursor: pointer">공지사항</li>
						<li onclick="location.href='faq'" style="cursor: pointer">자주
							묻는 질문</li>
						<li onclick="location.href='qna'" style="cursor: pointer">QnA</li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="notice_wrap">
			<h2>회사소개</h2>
			<div class="introduction1">
				<img class="introImg1" src="resources/img/introduction1.png">
				<div class="introContent1">
					<p style="font-weight: bold; font-size: 40px;">LEMS</p>
					<p>
							</strong>"LEMS"</strong>는 
							</strong>"Limited Edition Mans Shoes"</strong>의약자로<br> 
							MZ세대를 중심으로 확산되고 있는 "리셀"이라는 새<br>
							로운 소비 트렌드를 캐치해 한정판 남성용스니커즈<br>
							거래서비스를 제공합니다.<br><br>
							 </strong>"LEMS"</strong>는
							철저한 검수를 통한 안전 거래 시스템부터<br>
							 발매 정보, 사용자들의 리뷰까지 이제 소비를 넘어<br>
							  문화를 선도하는 플랫폼으로 성장하고 있습니다.
					</p>
				</div>
			</div>

			<div class="introduction2">
				<img class="introImg2" src="resources/img/introduction2.png">
				<div class="introContent2">
					<p style="font-weight: bold; font-size: 40px;">SERVICE</p>
					<p>	
						모든 상품은 검수센터에서 전문 검수팀이 다양한<br> 
						방법으로 철저한 검수를 진행합니다.<br>
						 검수에 합격한 상품만 구매자에게 배송합니다.<br><br>
						<strong>"LEMS"</strong>는 단순한  플랫폼에서 벗어나 리셀 <br>
						  시장을 즐기는 고객들이  상품과 콘텐츠를<br>
						   기반으로 상호 소통할 수 있는  플랫폼을  지향<br>
						 합니다. 매니아 뿐만 아니라 누구나 쉽게 거래<br>
						  하고 함께 즐길 수 있도록 치열하게 고민하고<br>
						    빠르게 실행합니다.
					</p>
				</div>
			</div>
		</div>
		<!-- ========== -->
	</div>
</body>
<%@ include file="../include/csinfo.jsp"%>
</html>