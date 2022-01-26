<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="resources/js/login.js"
	charset="UTF-8"></script>
<link rel="stylesheet" type="text/css" href="resources/css/forgotPW.css">
<html>
<%@ include file="../include/menu.jsp"%>
<body>
	<form action="javascript:window.close();">
		<section>
			<div>
				<div id="login-form">
					<h1>임시비밀번호 발급</h1>
					<fieldset>
						<input type="text" name="member_id" id="member_id"
							placeholder="ID"> <input type="text" name="member_name"
							id="member_name" placeholder="이름"> <input type="button"
							onclick="forgotPW()" value="비밀번호 발급">
					</fieldset>
				</div>
			</div>
			<!-- end login-form -->
		</section>
	</form>
</body>
<%@ include file="../include/csinfo.jsp"%>
</html>