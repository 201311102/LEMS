<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/menu.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/board.css?">
<script>
	// 게시물 삭제 확인
	function deleteB() {
      var cfrm = confirm("정말 게시글을 삭제하시겠습니까?");
      if(cfrm){
         alert("삭제가 완료되었습니다.");
         location.href='delete?bno='+${board.bno};
      }else{
         alert("게시글 삭제를 취소하셨습니다.");
      }
   }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<body>
	<script>
		$("#list_btn").click(
				function() {
					self.location = "board?"
							+ "searchOption=${searchOption}&keyword=${keyword}"
							+ "&search=${search}&curPage=${curPage}";
				});
	</script>
	<div class="mypageContainer">
		<div class="navarea">
			<nav>
				<h2>고객센터</h2>
				<div>
					<ul>
						<li onclick="location.href='about'" style="cursor: pointer;">회사소개</li>
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

				<hr>
				<div class="notice_head">
					<span>${board.regdate}</span>
					<p style="font-size: 20px; font-weight: bold;">${board.title}</p>
					<br>
				</div>
				<div class="notice_content">${board.content}</div>
				<br /> <br />
				<div>
					<div class="btnbtn" align="left">
						<c:if test="${map.previousB != null}">
							<button class="button"
								onClick="location.href='view?bno=${map.previousB.bno}&show=Y'">이전글</button>
						</c:if>
					</div>
					<div class="btnbtn" align="center">
						<!-- 관리자만 공지 -->
						<c:if test="${member.admin eq 'Y'}">
							<a href="updateWrite"><button class="button">수정</button></a>&nbsp;
			<a onClick="deleteB()"><button class="button">삭제</button></a>&nbsp;
		</c:if>
						<button class="button" id="list_btn"
							onClick="location.href='board'">목록</button>
					</div>


					<div class="btnbtn" align="right">
						<c:if test="${map.nextB != null}">
							<button class="button"
								onClick="location.href='view?bno=${map.nextB.bno}&show=Y'">다음글</button>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../include/csinfo.jsp"%>
</body>
</html>