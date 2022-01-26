<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<link rel="stylesheet" type="text/css" href="resources/css/board.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<%@ include file="../include/menu.jsp"%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	function replyQ() {
		var qno = $("#qno").val();
		var recontent = $("#recontent").val();
		var recontentLength = recontent.length;

		if (recontent == "") {
			alert("답변 내용을 입력해 주세요!!.");
			return false;
		} else {
			var cfrm = confirm("정말 수정 하시겠습니까?");
			if (cfrm) {
				$.ajax({
					type : "POST",
					url : "replyQnA",
					data : {
						"qno" : qno,
						"recontent" : recontent
					},
					success : function() {
						alert("게시글 수정을 완료했습니다.");
						window.location.href = "qna";
					}
				});
			} else {
				alert("수정을 취소하셨습니다.");
			}
		}
	}

	//키보드로 글자수 입력 받았을 때 글자카운트 스크립트
	$(document).ready(function() {
		/* 키보드 이벤트 활용 */
		$('#recontent').keyup(function() {
			// 남은 글자수를 구한다.
			var recontentLength = $(this).val().length; //현재 글자수
			var remain = 1000 - recontentLength;

			// 문서 객체에 남은 글자수 표시
			$('#recontentCount').html(remain);

			if (remain >= 0) {
				$('#recontentCount').css('color', 'green');
			} else {
				$('#recontentCount').css('color', 'red');
			}

			if (remain < 0) {
				alert("내용은 한글기준 1000자 까지만 쓸 수 있습니다.");
			}
		})

	})
</script>
<script src="resources/ckeditor/ckeditor.js"></script>
<html>
<body>
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
					<input type="hidden" name="qno" id="qno" value="${qna.qno}" /> <span>${qna.regdate}</span>
					<p>
						<input type="text" name="qtitle" id="qtitle" size="70%"
							maxlength="70" placeholder="제목을 입력하세요." value="${qna.qtitle}"
							disabled="disabled" /> <span id="qtitleCount"
							style="color: green;">50</span><span>/50</span>
					</p>
				</div>
				<div class="notice_content">
					<p>
						<textarea name="qcontent" id="qcontent"
							style="width: 100%; height: 500px;" placeholder="내용을 입력하세요."
							disabled="disabled">${qna.qcontent}</textarea>
						<span id="qcontentCount" style="color: green;">1000</span><span>/1000</span>
					</p>
				</div>

				<br>
				<hr>
				<br>

				<div class="notice_content">
					<p>
						<textarea name="recontent" id="recontent"
							style="width: 100%; height: 500px;" placeholder="답변을 입력하세요."></textarea>
						<span id="recontentCount" style="color: green;">1000</span><span>/1000</span>
					</p>
				</div>

				<br />
				<br />

				<div align="center">
					<button class="button" onclick="replyQ()" value="저장">저장</button>
					<button class="button" onclick="location.href='qna'">목록</button>
				</div>
			</div>
		</div>
	</div>
	<script>
		function test() {
			var qno = $("#qno").val();
			var recontent = $("#recontent").val();
			var recontentLength = recontent.length;

			alert(qno + recontent);
		}
	</script>
	<%@ include file="../include/csinfo.jsp"%>
</body>
</html>