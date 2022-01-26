<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<%@ include file="../include/menu.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<link rel="stylesheet" type="text/css" href="resources/css/board.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	function createQ() {
		var writer = $("#writer").val(); //멤버아이디 넣기
		var qtitle = $("#qtitle").val();
		var qcontent = $("#qcontent").val();
		var qtitleLength = qtitle.length;
		var qcontentLength = qcontent.length;

		if (!qtitle) {
			alert("제목을 입력하세요.");
		} else if (qtitleLength > 50) {
			alert("제목이 너무 깁니다.");
		} else if (qcontent == "") {
			alert("글내용을 입력해 주세요!!.");
			return false;
		} else {
			var cfrm = confirm("지금 질문글을 등록을 하시겠습니까?");
			if (cfrm) {
				$.ajax({
					type : "POST",
					url : "createQnA",
					data : {
						"writer" : writer,
						"qtitle" : qtitle,
						"qcontent" : qcontent
					},
					success : function() {
						alert("등록이 완료되었습니다.");
						window.location.href = "qna";
					}
				});
			} else {
				alert("등록을 취소하셨습니다.");
			}
		}
	}

	// 키보드로 글자수 입력 받았을 때 글자카운트 스크립트
	$(document).ready(function() {

		$('#qtitle').keyup(function() {
			// 남은 글자수를 구한다.
			var qtitleLength = $(this).val().length; //현재 글자수
			var remain = 50 - qtitleLength;

			// 문서 객체에 남은 글자수 표시
			$('#qtitleCount').html(remain);

			if (remain >= 0) {
				$('q#titleCount').css('color', 'green');
			} else {
				$('#qtitleCount').css('color', 'red');
			}

			if (remain < 0) {
				alert("제목은 한글기준 50자 까지만 쓸 수 있습니다.");
			}
		})

		$('#qcontent').keyup(function() {
			// 남은 글자수를 구한다.
			var qcontentLength = $(this).val().length; //현재 글자수
			var remain = 1000 - qcontentLength;

			// 문서 객체에 남은 글자수 표시
			$('#qcontentCount').html(remain);

			if (remain >= 0) {
				$('#qcontentCount').css('color', 'green');
			} else {
				$('#qcontentCount').css('color', 'red');
			}

			if (remain < 0) {
				alert("내용은 한글기준 1000자 까지만 쓸 수 있습니다.");
			}
		})
	})
</script>
<html>
<body>
	<input type="hidden" name="writer" id="writer"
		value="${member.member_id}" />
	<div class="mypageContainer">
		<div class="navarea">
			<nav>
				<h2>고객센터</h2>
				<div>
					<ul>
						<li onclick="location.href='about'"style="cursor: pointer">회사소개</li>
						<li onclick="location.href='board'" style="cursor: pointer; ">공지사항</li>
						<li onclick="location.href='faq'"style="cursor: pointer;">자주묻는 질문</li>
						<li onclick="location.href='qna'" style="cursor: pointer; color: black; font-weight: bold;">QnA</li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="notice_wrap">
			<h2>QnA</h2>
			<div class="prdBox">
				<div class="notice_head">
					<%-- <span>${board.regdate}</span> <!-- 수정할부분 --> --%>
					<jsp:useBean id="today" class="java.util.Date" />
					<span><fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></span>
					<p>
						<input type="text" name="qtitle" id="qtitle" maxlength="70"
							size="70%" placeholder="제목을 입력하세요." /> <span id="qtitleCount"
							style="color: green;">50</span><span>/50</span>
					</p>
				</div>
				<div class="notice_content">
					<p>
						<textarea name="qcontent" id="qcontent"
							style="width: 100%; height: 500px;" placeholder="내용을 입력하세요."></textarea>
						<span id="qcontentCount" style="color: green;">1000</span><span>/1000</span>
					</p>
				</div>
				<br />
				<br />
				<div align="center">
					<button class="button" onClick="createQ()" value="작성하기">작성</button>
					<button class="button" onclick="location.href='qna'">목록</button>
				</div>
			</div>
		</div>
	</div>
	<script>
		function test() {
			var qtitle = $("#qtitle").val();
			var qcontent = $("#qcontent").val();
			var qtitleLength = title.length;
			var qcontentLength = content.length;

			alert(qtitle + " " + qcontent + " " + qtitleLength + " "
					+ qcontentLength);
		}
	</script>
	<%@ include file="../include/csinfo.jsp"%>
</body>
</html>