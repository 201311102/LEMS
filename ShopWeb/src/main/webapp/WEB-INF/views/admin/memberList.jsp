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
						<li onclick="location.href='delivery'" style="cursor: pointer;">배송관리</li>
						<li onclick="location.href='memberList'"
							style="cursor: pointer; color: black; font-weight: 900;">회원관리</li>
						<li onclick="location.href='prdinsert'" style="cursor: pointer;">상품등록</li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="mypageContent">
			<div class="notice_wrap">
				<h2>회원관리</h2>
				<div class="prdBox">
					<input type="hidden" id="curPage" value="${curPage }" />
					<div>
						<table class="memlist">
							<tr>
								<th>회원번호</th>
								<th>아이디</th>
								<th>이름</th>
								<th>전화번호</th>
								<th>이메일</th>
								<th>주소</th>
								<th>가입일</th>
								<th></th>
							</tr>
							<c:forEach begin="0" end="${(fn:length(map.list))}" var="i">
								<c:set var="client" value="${map.list[i]}" />
								<c:if test="${(not empty client) && (client.admin eq 'N')}">
									<tr>
										<td class="list2" id="client_seq">${client.member_seq}</td>
										<td class="list2" id="client_id">${client.member_id}</td>
										<td class="list2" id="client_name">${client.member_name}</td>
										<c:choose>
											<c:when test="${client.member_phone == '--'}">
												<td class="list2" id="client_phone"></td>
											</c:when>
											<c:otherwise>
												<td class="list2" id="client_phone">${client.member_phone}</td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${client.member_email == '@'}">
												<td class="list2" id="client_email"></td>
											</c:when>
											<c:otherwise>
												<td class="list2" id="client_email">${client.member_email}</td>
											</c:otherwise>
										</c:choose>
										<td class="list2" id="client_faddr">${client.member_faddr}&nbsp;${client.member_laddr}</td>
										<td class="list2" id="client_date">${client.member_date}</td>
										<td><button class="ButtonStyle2"
												onClick="location.href='memberView?member_id=${client.member_id}'"
												style="cursor: pointer">상세보기</button></td>
									</tr>
								</c:if>
							</c:forEach>
						</table>
						<br /> <br />

						<!-- 페이지 네비게이션 출력 -->
						<div align="center" class="pccolor">
							<c:if test="${map.pager.curBlock > 1}">
								<a href="memberList?curPage=1">[처음]</a>
							</c:if>
							<c:if test="${map.pager.curBlock > 1}">
								<a href="memberList?curPage=${map.pager.prevPage}
							">[이전]</a>
							</c:if>

							<c:forEach var="num" begin="${map.pager.blockBegin}"
								end="${map.pager.blockEnd}">
								<c:choose>
									<c:when test="${num == map.pager.curPage}">
										<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
										<span style="color: black;">${num}</span>
									</c:when>

									<c:otherwise>
										<a href="memberList?curPage=${num}
							">${num}</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<div>
								<c:if test="${map.pager.curBlock < map.pager.totBlock}">
									<a href="memberList?curPage=${map.pager.nextPage}
							">[다음]</a>
								</c:if>
								<c:if
									test="${(map.pager.totPage > 5) && 
				(map.pager.totPage != map.pager.curPage)}">
									<a href="memberList?curPage=${map.pager.totPage}
							">[끝]</a>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ========== -->
</body>
<%@ include file="../include/csinfo.jsp"%>
</html>