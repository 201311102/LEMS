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
						<li onclick="location.href='about'" style="cursor: pointer">회사소개</li>
						<li onclick="location.href='board'"
							style="cursor: pointer; color: black; font-weight: bold;">공지사항</li>
						<li onclick="location.href='faq'" style="cursor: pointer">자주
							묻는 질문</li>
						<li onclick="location.href='qna'" style="cursor: pointer">QnA</li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="notice_wrap">
			<h2>공지사항</h2>
			<div class="prdBox">
				<input type="hidden" id="curPage" value="${curPage }" />
				<div>
					<table class="notice">
						<c:forEach begin="0" end="${(fn:length(map.list))}" var="i">
							<c:set var="row" value="${map.list[i]}" />
							<input type="hidden" id="bno" name="bno" value="${row.bno}" />
							<!--	<input type="hidden" id="show" value="${row.show}"/>	 -->
							<c:choose>
								<%-- 검색결과가 있을 때 --%>
								<c:when test="${not empty row}">
									<tr>
										<td class="list2" style="text-align: left;"><a
											href="view?bno=${row.bno}&show=Y">${row.title}</a>
									</tr>
								</c:when>
								<%-- 검색결과가 없을 떄 --%>
								<c:when test="${map.count == 0}">
									<tr style="text-align: center;">
										<td colspan='5' size="30px"><b style="color: black;">'${keyword}'</b>
											<span style="color: gray;">에 대한 검색결과가 없습니다.</span></td>
									</tr>
								</c:when>
							</c:choose>
						</c:forEach>
					</table>
					<br /> <br />

					<!-- 페이지 네비게이션 출력 -->
					<div align="center" class="pccolor">
						<c:if test="${map.pager.curBlock > 1}">
							<a
								href="board?curPage=1
							&searchOption=${searchOption}&keyword=${keyword}
							&search=${search}">[처음]</a>
						</c:if>
						<c:if test="${map.pager.curBlock > 1}">
							<a
								href="board?curPage=${map.pager.prevPage}
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
										href="board?curPage=${num}
							&searchOption=${searchOption}&keyword=${keyword}
							&search=${search}">${num}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<div>
							<!-- 검색 조건 뷰 -->
							<form action="board" class="boardsearch" align="left">
								<div style="float: left">
									<div style="display: flex">
										<select class="selectBox" name="searchOption"
											id="searchOption">
											<option value="ALL"
												<c:out value="${map.searchOption=='ALL'?'selected':''}"/>>제목+내용</option>
											<option value="TITLE"
												<c:out value="${map.searchOption=='TITLE'?'selected':''}"/>>제목</option>
											<option value="CONTENT"
												<c:out value="${map.searchOption=='CONTENT'?'selected':''}"/>>내용</option>
										</select> <input type="text" class="searchTerm1" name="keyword"
											id="keyword" placeholder="검색어 입력" value="${keyword}">
										<input type="hidden" name="search" id="search" value="s" />
										<button class="searchButton" value="조회">
											<img
												src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Search_Icon.svg/1024px-Search_Icon.svg.png">
										</button>
									</div>
								</div>
							</form>

							<div style="float: right;">
								<!-- 검색했을 때 카운트-->
								<c:if test="${map.search eq 's'}">
									<c:choose>
										<c:when test="${map.count == 0 }">
											<span style="font-family: '돋움'; color: gray;"><b
												style="color: black;">${map.count}</b>개의 게시물이 있습니다.&nbsp;</span>
										</c:when>
										<c:otherwise>
											<span style="font-family: '돋움'; color: gray;"><b
												style="color: black;">${map.count}</b>개의 게시물이 있습니다.&nbsp;</span>
										</c:otherwise>
									</c:choose>
								</c:if>

								<!-- 관리자일 때 -->
								<c:if test="${member.admin eq 'Y'}">
									<button class="button" onClick="location.href='write'"
										style="width: 65px; height: 35px; cursor: pointer;">글쓰기</button>
								</c:if>
							</div>
						</div>

						<c:if test="${map.pager.curBlock < map.pager.totBlock}">
							<a
								href="board?curPage=${map.pager.nextPage}
							&searchOption=${searchOption}&keyword=${keyword}
							&search=${search}">[다음]</a>
						</c:if>
						<c:if
							test="${(map.pager.totPage > 5) && 
				(map.pager.totPage != map.pager.curPage)}">
							<a
								href="board?curPage=${map.pager.totPage}
							&searchOption=${searchOption}&keyword=${keyword}
							&search=${search}">[끝]</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ========== -->
</body>
<%@ include file="../include/csinfo.jsp"%>
</html>