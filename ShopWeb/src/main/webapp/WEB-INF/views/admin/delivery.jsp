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
<link rel="stylesheet" type="text/css"
	href="resources/css/memberList.css">
<html>
<body>
	<div class="mypageContainer">
		<div class="navarea">
			<nav>
				<h2>관리자 페이지</h2>
				<div>
					<ul>
						<li onclick="location.href='delivery'"
							style="cursor: pointer; color: black; font-weight: 900;">배송관리</li>
						<li onclick="location.href='memberList'" style="cursor: pointer;">회원관리</li>
						<li onclick="location.href='prdinsert'" style="cursor: pointer;">상품등록</li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="mypageContent">
			<div class="notice_wrap">
				<h2>배송관리</h2>
				<div class="prdBox">
					<input type="hidden" id="curPage" value="${map.curPage }" />
					<div>
						<table class="memlist">
							<tr>
								<th>주문번호</th>
								<th>이미지</th>
								<th>상품</th>
								<th>주문일자</th>
								<th>주문자</th>
								<th>연락처</th>
								<th>주소</th>
								<th>결제금액</th>
								<th>배송상태</th>
							</tr>
							<c:forEach begin="0" end="${(fn:length(map.list))}" var="i">
								<c:set var="row" value="${map.list[i]}" />
								<c:if test="${not empty row}">
									<tr class="delivBox">
										<td class="list2">${row.payment_id}</td>
										<td class="list2" style="padding: 0;">
											<div class="imgBox">
												<img src="${row.prd_img}" alt="non image">
											</div>
										</td>
										<td class="list2" style="text-align: left; width: 250px;">${row.prd_id}<br>${row.prd_name}<br>size:${row.payment_size}
										</td>
										<td class="list2">${row.payment_date}</td>
										<td class="list2">${row.payment_reciever}</td>
										<td class="list2">${row.member_phone}</td>
										<td class="list2" style="width: 300px;">${row.member_faddr}&nbsp;${row.member_laddr}</td>
										<td class="list2"><fmt:formatNumber
												value="${row.prd_price}" pattern="#,###,###" /></td>
										<td><input type="hidden" id="payment_id"
											name="payment_id" value="${row.payment_id}"> <input
											class="ButtonStyle2" type="button" id="doDelivery"
											name="doDelivery" value="출고처리"></td>
									</tr>
								</c:if>
							</c:forEach>
						</table>
						<br /> <br />

						<!-- 페이지 네비게이션 출력 -->
						<div align="center" class="pccolor">
							<c:if test="${map.pager.curBlock > 1}">
								<a
									href="delivery?curPage=1
							&searchOption=${searchOption}&keyword=${keyword}
							&search=${search}">[처음]</a>
							</c:if>
							<c:if test="${map.pager.curBlock > 1}">
								<a
									href="delivery?curPage=${map.pager.prevPage}
							&searchOption=${searchOption}&keyword=${keyword}
							&search=${search}">[이전]</a>
							</c:if>

							<c:forEach var="num" begin="${map.pager.blockBegin}"
								end="${map.pager.blockEnd}">
								<c:choose>
									<c:when test="${num == map.pager.curPage}">
										<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
										<span style="color: black;">${num}</span>
									</c:when>

									<c:otherwise>
										<a
											href="delivery?curPage=${num}
							&searchOption=${searchOption}&keyword=${keyword}
							&search=${search}">${num}</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<div></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ========== -->
	<script>
		for (let i = 0; i < document.getElementsByClassName("ButtonStyle2").length; i++) {
			document.getElementsByClassName("ButtonStyle2")[i]
					.addEventListener("click", function() {
						const parent = this.closest(".delivBox");
						const payment_id = parent
								.querySelectorAll("#payment_id")[0].value;
						/* alert("payment_id:" + payment_id); */
						/* alert("테스팅"); */
						$.ajax({
							type : "POST",
							url : "doDelivery",
							data : {
								"payment_id" : payment_id
							},
							success : function(data) {
								alert("출고되었습니다.");
								location.reload();
							},
							error : function(data) {
								console.log(payment_id);
							}
						});

					})
		}
	</script>
</body>
<%@ include file="../include/csinfo.jsp"%>
</html>