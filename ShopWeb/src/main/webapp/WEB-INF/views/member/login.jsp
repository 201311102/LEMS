<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/menu.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<script type="text/javascript" src="resources/js/login.js"
	charset="UTF-8"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="resources/css/login.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<html>
<body>
	<h1 style="text-align: center; padding: 3%; font-size: 2em;">로그인</h1>
	<section>
		<div class="loginContainer">
			<div class="login_area">
				<div class="logo">
					<img width="100" src="resources/img/로고.png">
				</div>
				<form name="f0rm" id="f0rm">
					<div id="login-form">

						<div class="input_box">
							<label class="input_title">아이디</label> <input class="inputStyle"
								type="text" name="member_id" id="member_id" placeholder="ID"
								onkeypress="if(event.keyCode == 13) {memberCheck();}">
						</div>
						<div class="input_box">
							<label class="input_title">비밀번호</label><br> <input
								class="inputStyle" type="password" name="member_pwd"
								id="member_pwd" placeholder="Password"
								onkeypress="if(event.keyCode == 13) {memberCheck();}"><br>
						</div>
						<div class="btn_box">
							<input type="button" value="로그인" onclick="memberCheck()"
								style="cursor: pointer" />
						</div>
						<div class="look_box">
							<a style="margin-right: 20px;" href='signup'">회원가입</a><a
								href="forgotPW" style="cursor: pointer">비밀번호 찾기</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
</body>
<%@ include file="../include/csinfo.jsp"%>
</html>
