<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<%@ page import="java.util.Date"%>
<c:set var="tomorrow"
	value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000)%>" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="resources/js/cart.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="resources/js/product.js"
	charset="UTF-8"></script>
<link rel="stylesheet" type="text/css"
	href="resources/css/productpage.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
	function list(page) {
		var prd_id = $("#prd_id").val();
		location.href = "productpage?prd_id=" + prd_id + "&curPage=" + page;
	}

	function test() {
		var member_id = $("#member_id").val();
		var prd_id = $("#prd_id").val();
		var payment_size = $("#payment_size").val();
		alert(member_id + " " + prd_id + " " + payment_size);
	}

	function buyProduct() {
		var member_id = $("#member_id").val();
		var member_admin = $("#member_admin").val();
		var prd_id = $("#prd_id").val();
		var payment_size = $("#payment_size").val();

		if (member_admin == "Y") {
			alert("관리자 권한으로는 이용하실 수 없습니다.");
		} else if (!member_id) {
			alert("비회원은 이용하실 수 없습니다.");
		} else if (payment_size == "") {
			alert("사이즈를 선택해주세요");
		} else {
			$.ajax({
				type : "POST",
				url : "payment",
				data : {
					"member_id" : member_id,
					"prd_id" : prd_id,
					"payment_size" : payment_size
				},
				success : function(data) {
					console.log(data);
					window.location.href = "payment";
				},
				error : function(data) {
					console.log(data);
				}
			});
		}
	}

	function update() {
		var prd_id = $("#prd_id").val();
		window.location.href = "prdupdate?prd_id=" + prd_id;
	}
</script>
<style>
:root { --star_width: ${map.starP}%;}
</style>

<html>
<%@ include file="../include/menu.jsp"%>
<body>
	<div class="productdetail">
		<div class="productLeft">
			<img src="${map.product.prd_img}">
		</div>
		<div class="productRight">
			<div class="titlebox">
				<a align="left" class="p1"
					href="searchPrd?sPrd=&curPage=1&order=ASC&sPrdB=${map.product.prd_brand}">${map.product.prd_brand}</a><br>
				<p align="left">
					<a class="p2"
						href="searchPrd?sPrd=&curPage=1&order=ASC&sPrdB=${map.product.prd_brand}&sPrdC=${map.product.prd_coll}">${map.product.prd_coll}</a>
				</p>
				<p align="left" class="p3">${map.product.prd_name}</p>
			</div>
			<div class="size">
				<div style="float: left;">
					<p class="p4">사이즈</p>
				</div>

				<div style="float: right;">
					<select name="payment_size" id="payment_size"
						onchange="categoryChange(this)">
						<option value="">SIZE</option>
						<option value="250"
							<c:if test="${map.product.size250 == 0 }"> disabled</c:if>>250
							<c:if test="${map.product.size250 == 0 }"> - 품절</c:if></option>
						<option value="255"
							<c:if test="${map.product.size255 == 0 }"> disabled</c:if>>255
							<c:if test="${map.product.size255 == 0 }"> - 품절</c:if></option>
						<option value="260"
							<c:if test="${map.product.size260 == 0 }"> disabled</c:if>>260
							<c:if test="${map.product.size260 == 0 }"> - 품절</c:if></option>
						<option value="265"
							<c:if test="${map.product.size265 == 0 }"> disabled</c:if>>265
							<c:if test="${map.product.size265 == 0 }"> - 품절</c:if></option>
						<option value="270"
							<c:if test="${map.product.size270 == 0 }"> disabled</c:if>>270
							<c:if test="${map.product.size270 == 0 }"> - 품절</c:if></option>
						<option value="275"
							<c:if test="${map.product.size275 == 0 }"> disabled</c:if>>275
							<c:if test="${map.product.size275 == 0 }"> - 품절</c:if></option>
						<option value="280"
							<c:if test="${map.product.size280 == 0 }"> disabled</c:if>>280
							<c:if test="${map.product.size280 == 0 }"> - 품절</c:if></option>
						<option value="285"
							<c:if test="${map.product.size285 == 0 }"> disabled</c:if>>285
							<c:if test="${map.product.size285 == 0 }"> - 품절</c:if></option>
						<option value="290"
							<c:if test="${map.product.size290 == 0 }"> disabled</c:if>>290
							<c:if test="${map.product.size290 == 0 }"> - 품절</c:if></option>
					</select>
				</div>
				<div style="clear: both;"></div>
			</div>
			<div style="clear: both;"></div>
			<div class="price">
				<div style="float: left;">
					<p class="p4">판매가</p>
				</div>
				<div style="float: right;">
					<p align="left" class="p5">
						<fmt:formatNumber value="${map.product.prd_price}"
							pattern="#,###,###" />
						원
					</p>
				</div>
				<div style="clear: both;"></div>
			</div>
			<div class="btnbtn">
				<c:choose>
					<c:when test="${member.admin eq 'Y'}">
						<input class="w-btn-outline w-btn-black" style="width: 100%"
							type="button" onclick="update()" value="상품관리" />
					</c:when>
					<c:when test="${member.member_id == null}">
						<input class="w-btn-outline w-btn-black" type="button" name="buy"
							id="buy" onclick="buyProduct()" value="구매하기" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="w-btn-outline w-btn-gray-outline" type="button"
							name="cart" id="cart" onclick="insertCart()" value="관심목록추가" />
					</c:when>
					<c:otherwise>
						<input type="hidden" id="member_id" name="member_id"
							value="${member.member_id}" />
						<input class="w-btn-outline w-btn-black" type="button" name="buy"
							id="buy" onclick="buyProduct()" value="구매하기" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<c:choose>
							<c:when test="${map.cartCheck eq 0 }">
								<input class="w-btn-outline w-btn-gray-outline" type="button"
									name="cart" id="cart" onclick="insertCart()" value="관심목록추가" />
							</c:when>
							<c:otherwise>
								<input class="w-btn-outline w-btn-gray-outline" type="button"
									name="cart" id="cart"
									onclick="delCart('${map.product.prd_id}', '${member.member_id}')"
									value="관심목록삭제" />
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
			</div>
			<%-- <p align="left">상품코드: ${map.product.prd_id}</p>
					<p align="left">제조사: ${map.product.prd_brand}</p>
					<p align="left">컬렉션: ${map.product.prd_coll}</p> --%>
			<!-- 상품 정보 표 -->
			<div class="productInfo">
				<p class="p4">상품 정보</p>
				<table class="type11">
					<thead>
						<tr>
							<th style="width: 100px;">모델번호</th>
							<th style="width: 100px;">출시일</th>
							<th style="width: 200px;">컬러</th>
							<th style="width: 100px;">발매가</th>
						</tr>
					</thead>
					<tbody>
						<tr style="background: #fafafa;">
							<td>${map.product.prd_mdlno}</td>
							<td>${map.product.prd_lncd}</td>
							<td>${map.product.prd_color}</td>
							<td><c:choose>
									<c:when test="${map.product.prd_lncp == 0}">
										<p align="center">-</p>
									</c:when>
									<c:otherwise>
										<fmt:formatNumber value="${map.product.prd_lncp}"
											pattern="#,###,###" />
									</c:otherwise>
								</c:choose></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="deliverinfo">
				<p class="p4">배송 정보</p>
				<div style="margin-top: 20px;">
					<div class="imgbox">
						<img src="resources/img/배송박스.png" style="width: 50px;">
					</div>
					<div>
						<p>
							<span style="font-weight: bold">배송비</span> 무료<br> 검수 후 배송 <span
								style="color: #297DCB"> <fmt:formatDate
									value="${tomorrow}" type="DATE" pattern="MM/dd(E)" /> 도착 예정
							</span>
						</p>
					</div>
				</div>
			</div>
			<input type="hidden" name="prd_img" id="prd_img"
				value="${map.product.prd_img}" /> <input type="hidden"
				name="member_id" id="member_id" value="${member.member_id}" /> <input
				type="hidden" name="prd_id" id="prd_id"
				value="${map.product.prd_id}" />
		</div>
	</div>
	<div class="danger">
		<p class="p5">Review</p>
		<hr style="border: 2px solid black;">
		<!-- 리뷰없을경우 -->
		<c:if test="${map.count eq 0}">
			<table
				style="width: 50%; text-align: center; margin: 10px 0px; font-size: 20px;">
				<tr>
					<td colspan="4" style="padding-top: 30px;">0 / 5</td>
					<!-- 평점 그래프 -->
					<ul class="sf_score_stars" style="width: 50%;">
						<li class="sf_score_stars_5">
							<div
								class="sf_score_star_text pin_custom_font_color tr_review_score_5"
								style="width: 55px;">★★★★★</div>
							<div filter-score="5"
								class="sf_score_bar review_button_type custom_background"
								style="box-shadow: none; opacity: 1;">
								<div class="sf_score_bar_gage pin_custom_background_color"
									style="width: 0%; align: right;"></div>
							</div>
							<div class="sf_score_stars_avg tr_notranslate">0</div>
						</li>
						<li class="sf_score_stars_4 review_main_score">
							<div
								class="sf_score_star_text pin_custom_font_color tr_review_score_4"
								style="width: 55px;">★★★★</div>
							<div filter-score="4"
								class="sf_score_bar review_button_type custom_background"
								style="box-shadow: none; opacity: 1;">
								<div class="sf_score_bar_gage pin_custom_background_color"
									style="width: 0%; align: right;"></div>
							</div>
							<div class="sf_score_stars_avg tr_notranslate">0</div>
						</li>
						<li class="sf_score_stars_3">
							<div
								class="sf_score_star_text pin_custom_font_color tr_review_score_3"
								style="width: 55px;">★★★</div>
							<div filter-score="3"
								class="sf_score_bar review_button_type custom_background"
								style="box-shadow: none; opacity: 1;">
								<div class="sf_score_bar_gage pin_custom_background_color"
									style="width: 0%; align: right;"></div>
							</div>
							<div class="sf_score_stars_avg tr_notranslate">0</div>
						</li>
						<li class="sf_score_stars_2">
							<div
								class="sf_score_star_text pin_custom_font_color tr_review_score_2"
								style="width: 55px;">★★</div>
							<div filter-score="2"
								class="sf_score_bar review_button_type custom_background"
								style="box-shadow: none; opacity: 1;">
								<div class="sf_score_bar_gage pin_custom_background_color"
									style="width: 0%; align: right;"></div>
							</div>
							<div class="sf_score_stars_avg tr_notranslate">0</div>
						</li>
						<li class="sf_score_stars_1">
							<div
								class="sf_score_star_text pin_custom_font_color tr_review_score_1"
								style="width: 55px;">★</div>
							<div filter-score="1"
								class="sf_score_bar review_button_type custom_background"
								style="box-shadow: none; opacity: 1;">
								<div class="sf_score_bar_gage pin_custom_background_color"
									style="width: 0%; align: right;"></div>
								<!-- 그래프 수치 -->
							</div>
							<div class="sf_score_stars_avg tr_notranslate">0</div> <!-- 숫자카운트 -->
						</li>
					</ul>

				</tr>
				<tr>
					<td>
						<!-- 병균별표 -->
						<div>
							<span class="stars-container stars-zero">★★★★★</span>
						</div>
					</td>
					<!-- 병균별표 -->
				</tr>

				<table class="review">
					<tbody>
						<tr>
							<td colspan="5">작성된 후기가 없습니다.</td>
						</tr>
					</tbody>
				</table>
				</div>
				<div class="paging"></div>
			</table>
		</c:if>
		<!-- 리뷰없을경우 -->


		<!-- 리뷰있을경우 -->
		<c:if test="${map.count ne 0}">
			<table
				style="width: 50%; text-align: center; margin: 10px 0px; font-size: 20px;">
				<tr>
					<td colspan="4" style="padding-top: 30px;"><fmt:formatNumber
							value="${map.avg }" pattern=".0" /> / 5</td>
					<!-- 평점 그래프 -->
					<ul class="sf_score_stars" style="width: 50%;">
						<li class="sf_score_stars_5">
							<div
								class="sf_score_star_text pin_custom_font_color tr_review_score_5"
								style="width: 55px;">★★★★★</div>
							<div filter-score="5"
								class="sf_score_bar review_button_type custom_background"
								style="box-shadow: none; opacity: 1;">
								<div class="sf_score_bar_gage pin_custom_background_color"
									style="width: ${map.pStar5}%;  align: right;"></div>
							</div>
							<div class="sf_score_stars_avg tr_notranslate">${map.cStar5}</div>
						</li>
						<li class="sf_score_stars_4 review_main_score">
							<div
								class="sf_score_star_text pin_custom_font_color tr_review_score_4"
								style="width: 55px;">★★★★</div>
							<div filter-score="4"
								class="sf_score_bar review_button_type custom_background"
								style="box-shadow: none; opacity: 1;">
								<div class="sf_score_bar_gage pin_custom_background_color"
									style="width: ${map.pStar4}%;  align: right;"></div>
							</div>
							<div class="sf_score_stars_avg tr_notranslate">${map.cStar4}</div>
						</li>
						<li class="sf_score_stars_3">
							<div
								class="sf_score_star_text pin_custom_font_color tr_review_score_3"
								style="width: 55px;">★★★</div>
							<div filter-score="3"
								class="sf_score_bar review_button_type custom_background"
								style="box-shadow: none; opacity: 1;">
								<div class="sf_score_bar_gage pin_custom_background_color"
									style="width: ${map.pStar3}%; align: right;"></div>
							</div>
							<div class="sf_score_stars_avg tr_notranslate">${map.cStar3}</div>
						</li>
						<li class="sf_score_stars_2">
							<div
								class="sf_score_star_text pin_custom_font_color tr_review_score_2"
								style="width: 55px;">★★</div>
							<div filter-score="2"
								class="sf_score_bar review_button_type custom_background"
								style="box-shadow: none; opacity: 1;">
								<div class="sf_score_bar_gage pin_custom_background_color"
									style="width: ${map.pStar2}%; align: right;"></div>
							</div>
							<div class="sf_score_stars_avg tr_notranslate">${map.cStar2}</div>
						</li>
						<li class="sf_score_stars_1">
							<div
								class="sf_score_star_text pin_custom_font_color tr_review_score_1"
								style="width: 55px;">★</div>
							<div filter-score="1"
								class="sf_score_bar review_button_type custom_background"
								style="box-shadow: none; opacity: 1;">
								<div class="sf_score_bar_gage pin_custom_background_color"
									style="width: ${map.pStar1}%; align: right;"></div>
								<!-- 그래프 수치 -->
							</div>
							<div class="sf_score_stars_avg tr_notranslate">${map.cStar1}</div>
							<!-- 숫자카운트 -->
						</li>
					</ul>

				</tr>
				<tr>
					<td>
						<!-- 병균별표 -->
						<div>
							<span class="stars-container stars">★★★★★</span>
						</div>
					</td>
					<!-- 병균별표 -->
				</tr>
			</table>
			<div style="width: 100%; height: 500px; overflow: auto;">
				<table class="review">
					<thead>
						<tr>
							<th class="th-1">No</th>
							<th class="th-2">후기내용</th>
							<th class="th-3">작성자</th>
							<th class="th-4">작성일</th>
							<th class="th-5">평점</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach begin="0" end="${fn:length(map.list)}" var="row">
							<tr style="background: #fafafa;">
								<c:set var="item" value="${map.list[row]}" />
								<c:if test="${not empty item}">
									<td>${row + 1 }</td>
									<td class="td-1">${item.review_cont}</td>
									<td>${item.review_writer_id}</td>
									<td>${item.review_date}</td>
									<td><c:if test="${item.review_star == 1 }">★</c:if> <c:if
											test="${item.review_star == 2 }">★★</c:if> <c:if
											test="${item.review_star == 3 }">★★★</c:if> <c:if
											test="${item.review_star == 4 }">★★★★</c:if> <c:if
											test="${item.review_star == 5 }">★★★★★</c:if></td>
								</c:if>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			</table>
		</c:if>
		<!-- 리뷰있을경우 -->
	</div>


</body>
<%@ include file="../include/csinfo.jsp"%>
</html>