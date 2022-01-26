<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<%@ include file="../include/menu.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<link rel="stylesheet" type="text/css" href="resources/css/board.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	function createB() {
		var title = $("#title").val();
		var content = $("#content").val();
		var titleLength = title.length;
		var contentLength = content.length;

		if (!title) {
			alert("제목을 입력하세요.");
		} else if (titleLength > 50) {
			alert("제목이 너무 깁니다.");
		} else if (content == "") {
			alert("글내용을 입력해 주세요!!.");
			return false;
		} else {
			var cfrm = confirm("지금 게시글 등록을 하시겠습니까?");
			if (cfrm) {
				$.ajax({
					type : "POST",
					url : "createBoard",
					data : {
						"title" : title,
						"content" : content
					},
					success : function() {
						alert("등록이 완료되었습니다.");
						window.location.href = "board";
					}
				});
			} else {
				alert("등록을 취소하셨습니다.");
			}
		}
	}

	// 키보드로 글자수 입력 받았을 때 글자카운트 스크립트
	$(document).ready(function() {

		$('#title').keyup(function() {
			// 남은 글자수를 구한다.
			var titleLength = $(this).val().length; //현재 글자수
			var remain = 50 - titleLength;

			// 문서 객체에 남은 글자수 표시
			$('#titleCount').html(remain);

			if (remain >= 0) {
				$('#titleCount').css('color', 'green');
			} else {
				$('#titleCount').css('color', 'red');
			}

			if (remain < 0) {
				alert("제목은 한글기준 50자 까지만 쓸 수 있습니다.");
			}
		})

		$('#content').keyup(function() {
			// 남은 글자수를 구한다.
			var contentLength = $(this).val().length; //현재 글자수
			var remain = 1000 - contentLength;

			// 문서 객체에 남은 글자수 표시
			$('#contentCount').html(remain);

			if (remain >= 0) {
				$('#contentCount').css('color', 'green');
			} else {
				$('#contentCount').css('color', 'red');
			}

			if (remain < 0) {
				alert("내용은 한글기준 1000자 까지만 쓸 수 있습니다.");
			}
		})
	})
</script>
<html>
<body>
	<div class="mypageContainer">
		<div class="navarea">
			<nav>
				<h2>고객센터</h2>
				<div>
					<ul>
						<li onclick="location.href='about'"style="cursor: pointer">회사소개</li>
						<li onclick="location.href='board'" style="cursor: pointer; color: black; font-weight: bold;">공지사항</li>
						<li onclick="location.href='faq'"style="cursor: pointer;">자주묻는 질문</li>
						<li onclick="location.href='qna'" style="cursor: pointer">QnA</li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="notice_wrap">
			<h2>공지사항</h2>
			<div class="prdBox">
				<div class="notice_head">
					<span>${board.regdate}</span>
					<p>
						<input type="text" name="title" id="title" maxlength="70"
							size="70%" placeholder="제목을 입력하세요." /> <span id="titleCount"
							style="color: green;">50</span><span>/50</span>
					</p>
				</div>
				<div class="notice_content">
					<p>
						<textarea name="content" id="content"
							style="width: 100%; height: 500px;" placeholder="내용을 입력하세요."></textarea>
						<span id="contentCount" style="color: green;">1000</span><span>/1000</span>
					</p>
				</div>
				<br />
				<br />
				<div align="center">
					<button class="button" onClick="createB()" value="작성하기">작성</button>
					<button class="button" onclick="location.href='board'">목록</button>
				</div>
			</div>
		</div>
	</div>
	<script>
		function test() {
			var title = $("#title").val();
			var content = $("#content").val();
			var titleLength = title.length;
			var contentLength = content.length;

			alert(title + " " + content + " " + titleLength + " "
					+ contentLength);
		}
	</script>
	<%@ include file="../include/csinfo.jsp"%>
</body>
</html>