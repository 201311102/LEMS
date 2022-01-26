<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="resources/js/mypage.js" charset="UTF-8"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="resources/css/mypage.css">
</head>
<%@ include file="../include/menu.jsp"%>
<body>
	<div class="mypageContainer">
		<div class="navarea">
			<nav>
				<h2>마이 페이지</h2>
				<div>
					<strong>쇼핑 정보</strong>
					<ul>
						<li><a
							style="color: black; font-weight: 900; font-size: 16px;" href="#">구매
								내역</a></li>
						<li onclick="productCart()" style="cursor: pointer">관심 상품</li>
					</ul>
				</div>
				<div>
					<strong>내 정보</strong>
					<ul>
						<li onClick="location.href='mypage2'" style="cursor: pointer">회원정보관리</li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="mypageContent">
			<h2 style="margin-top: 0px;">구매 내역</h2>

			<c:forEach begin="0" end="${(fn:length(map.mypL))}" var="i">
				<c:set var="row" value="${map.mypL[i]}" />
				<c:choose>
					<%-- 검색결과가 있을 때 --%>
					<c:when test="${not empty row}">
						<div class="dateAndID">
							<span>${row.payment_date}</span> <span>주문번호
								${row.payment_id}</span>
						</div>
						<div class="prdBox">
							<div class="linkPrd"
								onClick="location.href='productpage?prd_id=${row.prd_id}'"
								style="cursor: pointer">
								<table id="oSW">
									<tr>
										<td>
											<div class="imgBox">
												<img src="${row.prd_img}" alt="non image">
											</div>
										</td>
										<td>
											<div class="prdInfoBox">
												<div class="prdModel">
													<span class="prdModel"> ${row.prd_id}</span>
												</div>
												<div class="prdName">${row.prd_name}</div>
												<div class="prdSize">
													size:<span>${row.payment_size}</span>
												</div>

											</div>
										</td>
										<td><div class="prdPrice">
												<span> <fmt:formatNumber value="${row.prd_price}"
														pattern="#,###" />&nbsp;원
												</span>
											</div></td>
										<td><c:choose>
												<c:when test="${row.payment_delivery == 'N'}">
													<span class="delivery" style="color: gray;">배송중</span></td>
										</c:when>
										<c:when test="${row.payment_delivery == 'Y'}">
											<span class="delivery"
												style="color: black; font-weight: bold;">배송완료</span>
											</td>
										</c:when>
										</c:choose>
										</td>
										<td>
											<div style="width: 180px;">
												<input class="review inputButtonStyle" type="button"
													value="리뷰쓰기"
													<c:if test="${row.payment_re =='Y' || row.payment_delivery == 'N'}"> style="display:none;" </c:if>>
												<input class=" delete inputButtonStyle" type="button"
													value="리뷰삭제"
													<c:if test="${row.payment_re =='N' || row.payment_delivery == 'N' }"> style="display:none;" </c:if>>
											</div>
										</td>
									</tr>
								</table>
							</div>
							<div id="review-drop" class="review-dropdown">
								<table>
									<tr>
										<th>별점</th>
										<td><input type="hidden" name="review_id" id="review_id"
											value="${row.payment_id}"> <input type="hidden"
											name="review_writer_id" id="review_writer_id"
											value="${member.member_id}"> <input type="hidden"
											name="review_prd_id" id="review_prd_id" value="${row.prd_id}">
											<select name="review_star" id="review_star">
												<option value="">선택</option>
												<option value="1">★</option>
												<option value="2">★★</option>
												<option value="3">★★★</option>
												<option value="4">★★★★</option>
												<option value="5">★★★★★</option>
										</select></td>
									</tr>
									<tr>
										<th style="height: 230px; border-top: none;">리뷰작성</th>
										<td style="border-top: none;"><div class="reviewArea">
												<textarea name="review_cont" id="review_cont" cols="100"
													rows="10" placeholder="최대 200자" maxlength="200"></textarea>
											</div></td>
									</tr>
									<tr>
										<td style="border: none; text-align: center;" colspan="2"><input
											class="register" type="button" value="등록하기">
									</tr>
								</table>
							</div>
						</div>
					</c:when>
					<%-- 검색결과가 없을 떄 --%>
					<c:when test="${map.count == 0}">
						<div style="text-align: center;">
							<p colspan='6'>
								<b>주문내역이 없습니다. 
							</p>
						</div>
					</c:when>
				</c:choose>
			</c:forEach>

			<!-- 페이지 네비게이션 출력 -->
			<div align="center">
				<c:if test="${map.pager.curBlock > 1}">
					<a href="mypL?myp=1&member_id=${member_id}">[처음]</a>
				</c:if>
				<c:if test="${map.pager.curBlock > 1}">
					<a href="mypL?myp=${map.pager.prevPage}&member_id=${member_id}">[이전]</a>
				</c:if>
				<c:forEach var="num" begin="${map.pager.blockBegin}"
					end="${map.pager.blockEnd}">
					<c:choose>
						<c:when test="${num == map.pager.curPage}">
							<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
							<span style="color:color; font-weight:bold">${num}</span>
						</c:when>
						<c:otherwise>
							<a href="mypage?member_id=${member_id}&myp=${num}">${num}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${map.pager.curBlock < map.pager.totBlock}">
					<a href="mypL?myp=${map.pager.nextPage}&member_id=${member_id}">[다음]</a>
				</c:if>
				<c:if
					test="${(map.pager.totPage > 5) && (map.pager.totPage != map.pager.curPage)}">
					<a href="mypL?myp=${map.pager.totPage}&member_id=${member_id}">[끝]</a>
				</c:if>
			</div>
		</div>

	</div>
	</div>
	</div>
	<script>
		for (let i = 0; i < document.getElementsByClassName("review").length; i++) {

			document.getElementsByClassName("review")[i]
					.addEventListener(
							"click",
							function() {
								event.stopPropagation();
								document
										.getElementsByClassName("review-dropdown")[i].classList
										.toggle("show");
							})
		}

		for (let i = 0; i < document.getElementsByClassName("delete").length; i++) {

			document.getElementsByClassName("delete")[i].addEventListener(
					"click", function() {
						event.stopPropagation();
					})
		}

		for (let i = 0; i < document.getElementsByClassName("register").length; i++) {
			document.getElementsByClassName("register")[i]
					.addEventListener(
							"click",
							function() {
								const parent = this.closest(".prdBox");
								const review_id = parent
										.querySelectorAll("#review_id")[0].value;
								const review_writer_id = parent
										.querySelectorAll("#review_writer_id")[0].value;
								const review_prd_id = parent
										.querySelectorAll("#review_prd_id")[0].value;
								const review_star = parent
										.querySelectorAll("#review_star")[0].value;
								const review_cont = parent
										.querySelectorAll("#review_cont")[0].value;
								/* alert("review_id:" + review_id + " review_writer_id:" + review_writer_id + " review_prd_id:" + review_prd_id + " review_star:" + review_star + " review_cont:" + review_cont); */

								if (review_id == "" || review_writer_id == ""
										|| review_prd_id == "") {
									alert("로그인을 확인해주세요");
									window.location.href = "login";
								} else if (review_star == ""
										|| review_cont == "") {
									alert("후기내용과 별점을 작성해주세요");
								} else {
									$
											.ajax({
												type : "POST",
												url : "writeReview",
												data : {
													"review_id" : review_id,
													"review_prd_id" : review_prd_id,
													"review_writer_id" : review_writer_id,
													"review_star" : review_star,
													"review_cont" : review_cont
												},
												success : function(data) {
													alert("후기를 등록했습니다.")
													location.reload();
												},
												error : function(data) {
													alert("에러");
												}
											});
								}

							})
		}
		for (let i = 0; i < document.getElementsByClassName("delete").length; i++) {
			document.getElementsByClassName("delete")[i]
					.addEventListener(
							"click",
							function() {
								const parent = this.closest(".prdBox");
								const review_id = parent
										.querySelectorAll("#review_id")[0].value;
								const review_writer_id = parent
										.querySelectorAll("#review_writer_id")[0].value;
								const review_prd_id = parent
										.querySelectorAll("#review_prd_id")[0].value;
								/* alert("review_id:" + review_id); */

								if (review_id == "" || review_writer_id == ""
										|| review_prd_id == "") {
									alert("로그인을 확인해주세요");
									window.location.href = "login";
								} else {
									var cfrm = confirm("정말 삭제 하시겠습니까?");
									if (cfrm) {
										$.ajax({
											type : "POST",
											url : "deleteReview",
											data : {
												"review_id" : review_id,
											},
											success : function(data) {
												alert("삭제되었습니다.");
												location.reload();
											},
											error : function(data) {
												alert("에러");
											}
										});
									}
								}
							})
		}
	</script>
</body>
<%@ include file="../include/csinfo.jsp"%>
</html>
