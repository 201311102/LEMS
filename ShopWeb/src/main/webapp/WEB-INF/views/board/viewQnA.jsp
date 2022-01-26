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
	function deleteQ() {
		var qno = $("#qno").val();
		/* alert(qno); */
		var cfrm = confirm("정말 삭제하시겠습니까?");
		if (cfrm) {
			$.ajax({
				type : "POST",
				url : "deleteQnA",
				data : {
					"qno" : qno
				},
				success : function(data) {
					alert("삭제가 완료되었습니다.");
					window.location.href = "qna";
				},
				error : function(data) {
					alert("에러");
				}
			});
		} else {
			alert("삭제를 취소하셨습니다.");
		}
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<body>
	<script>
		$("#list_btn").click(
				function() {
					self.location = "qna?"
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
						<li onclick="location.href='board'" style="cursor: pointer;">공지사항</li>
						<li onclick="location.href='faq'" style="cursor: pointer">자주
							묻는 질문</li>
						<li onclick="location.href='qna'"
							style="cursor: pointer color: black; font-weight: bold;">QnA</li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="notice_wrap">
			<h2>QnA</h2>
			<div class="prdBox">

				<hr>
				<div class="notice_head">
					<input type="hidden" name="qno" id="qno" value="${qna.qno}" />
					<span>${qna.regdate}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span>${qna.writer}</span>
					<p style="font-size: 20px; font-weight: bold;">${qna.qtitle}</p>
					<br>
				</div>
				<div class="notice_content">${qna.qcontent}</div>

				<c:if test="${qna.isre eq 'Y'}">
					<br>
					<hr>
					<br>
					<div class="notice_head">
						<span>${qna.redate}</span>
					</div>
					<div class="notice_content">${qna.recontent}</div>
				</c:if>

				<br />
				<br />
				<div>
					<div class="btnbtn" align="left">
						<c:if test="${map.previousQ != null}">
							<button class="button"
								onClick="location.href='viewQnA?qno=${map.previousQ.qno}&show=Y'">이전글</button>
						</c:if>
					</div>
					<div class="btnbtn" align="center">
						<!-- 관리자만 공지 -->
						<c:if test="${member.admin eq 'Y'}">
							<c:if test="${qna.isre eq 'N'}">
								<a href="replyWriteQnA"><button class="button">답변</button></a>&nbsp; <!-- 답변기능 -->
							</c:if>
							<c:if test="${qna.isre eq 'Y'}">
								<a href="updateReplyQnA"><button class="button">답변수정</button></a>&nbsp;
			</c:if>
							<a onClick="deleteQ()"><button class="button">삭제</button></a>&nbsp;
		</c:if>
						<!-- 본인만 수정,삭제 버튼 표시 -->
						<c:if test="${member.member_id == qna.writer}">
							<c:if test="${qna.isre eq 'N'}">
								<a href="updateWriteQnA"><button class="button">수정</button></a>&nbsp;
			</c:if>
							
							<a onClick="deleteQ()"><button class="button">삭제</button></a>&nbsp;
		</c:if>
						<button class="button" id="list_btn" onClick="location.href='qna'">목록</button>
					</div>


					<div class="btnbtn" align="right">
						<c:if test="${map.nextQ != null}">
							<button class="button"
								onClick="location.href='viewQnA?qno=${map.nextQ.qno}&show=Y'">다음글</button>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../include/csinfo.jsp"%>
</body>
</html>