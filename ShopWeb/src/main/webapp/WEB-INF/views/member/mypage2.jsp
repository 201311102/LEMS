<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/menu.jsp"%>
<head>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="resources/css/mypage2.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<script>
	// 마이페이지2 비밀번호 확인
	function mypg2() {
		var member_id = $("#member_id").val();
		var member_pwd = $("#member_pwd").val();
		var mypPwd = $("#member_pwd").val();

		if (!member_id || !mypPwd) {
			alert("패스워드를 입력해주세요.");
		} else {
			$.ajax({
				type : "POST",
				url : "checkMember",
				data : {
					"member_id" : member_id,
					"member_pwd" : member_pwd
				},
				success : function(data) {
					if (data != 0) {
						$.ajax({
							type : "POST",
							url : "mypage2",
							data : {
								"member_id" : member_id,
								"member_pwd" : member_pwd
							},
							success : function() {
								window.location.href = "mypage3";
							}
						});
					} else {
						alert("패스워드를 확인해주세요.")
					}
				},
				error : function(data) {
					console.log(data);
				}
			});
		}
	}
</script>
</head>
<body>
	<div class="mypageContainer">
		<div class="navarea">
			<nav>
				<h2>마이 페이지</h2>
				<div>
					<strong>쇼핑 정보</strong>
					<ul>
						<li onClick="mypBtn()" style="cursor: pointer">구매 내역</li>
						<li onclick="productCart()" style="cursor: pointer">관심 상품</li>
					</ul>
				</div>
				<div>
					<strong>내 정보</strong>
					<ul>
						<li onClick="location.href='mypage2'"><a
							style="color: black; font-weight: 900;" href="#">회원정보관리</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="mypageContent">
			<h2>회원 정보 수정</h2>
			<section>
				<div class="loginContainer">
					<div class="login_area">
						<form id="myInfo">
							<div id="login-form">
								<div class="input_box">
									<label class="input_title">비밀번호</label><br> 
									<input class="inputStyle" type="password"  name="member_pwd" id="member_pwd" placeholder="Password" onkeypress="if(event.keyCode == 13) {mypg2();}"><br>
								</div>
								<div class="btn_box">
									<input type="button" value="확인" onClick="mypg2()" />
									<footer class="clearfix"></footer>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- end login-form -->
			</section>
		</div>
	</div>
</div>
</div>
</body>
<%@ include file="../include/csinfo.jsp"%>
</html>