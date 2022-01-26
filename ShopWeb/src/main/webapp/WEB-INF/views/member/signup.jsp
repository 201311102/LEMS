<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="resources/js/signup.js" charset="UTF-8"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/signup.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
</head>
<%@ include file="../include/menu.jsp"%>
<body>
	<section>
		<h1 style="text-align: center; padding: 3%; font-size: 2em;">회원가입</h1>
		<div class="joinContainer">
			<div class="join_area">
				<form name="f1rm" id="f1rm">

					<table align="center">
						<tr>
							<td>
								<div class="input_box">
									<label id="idchk" class="input_title">아이디*</label><br> <input
										type="text" id="member_id" class="inputStyle" onFocus="" /> <input
										class="inputButtonStyle " style="margin-left: -74px;"
										type="button" onClick="idChk()" style="cursor: pointer"
										value="중복확인" /><br>
								</div>
						</tr>
						<tr>
							<td>
								<div class="input_box">
									<label class="input_title">비밀번호*</label><br> <input
										type="password" id="member_pwd" class="inputStyle"
										maxlength="20" />
								</div>
							</td>
						<tr>
						<tr>
							<td>
								<div class="input_box">
									<label id="checkPasswd" class="input_title">비밀번호 확인*</label><br>
									<input type="password" id="chk_member_pwd" class="inputStyle"
										maxlength="20" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="input_box">
									<label id="chkname" class="input_title">이름*</label><br> <input
										class="inputStyle" type="text" id="member_name">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="input_box">
									<label class="input_title">이메일(선택)</label><br>
									<div class="infobox">
										<input type="text" id="email_id" style="height: 36px;">
										@ <input type="text" id="email_addr" style="height: 36px;"
											disabled> <select id="email_select">
											<option value="" selected>::선택하세요::</option>
											<option value="naver.com">naver.com</option>
											<option value="gmail.com">gmail.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="nate.com">nate.com</option>
											<option value="1">직접입력</option>
										</select>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="input_box">
									<label class="input_title">연락처*</label><br>
									<div class="infobox">
										<select id="NUMst"">
											<option value="" selected>::선택::</option>
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
										</select> - <input type="text" id="NUMnd" maxlength="4"
											style="height: 36px;" value="" /> - <input type="text"
											id="NUMrd" maxlength="4" style="height: 36px;" value="" />
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="input_box">
									<label class="input_title">우편번호*</label><br> <input
										type="text" name="member_zipcode" id="member_zipcode"
										class="inputStyle" readonly size="10"
										placeholder="우편번호를 검색하세요"> <input
										class="inputButtonStyle" style="margin-left: -104px;"
										type="button" onclick="searchPost()" style="cursor: pointer"
										value="우편번호 찾기"><br>
									<br>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="input_box">
									<label class="input_title">주소*</label><br> <input
										type="text" name="member_faddr" id="member_faddr"
										class="inputStyle" size="60" readonly>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="input_box">
									<label class="input_title">상세주소*</label><br> <input
										type="text" name="member_laddr" id="member_laddr"
										class="inputStyle" size="60" placeholder="건물, 아파트, 동/호 입력">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="btn_box">
									<input type="button" onclick="doSignup()"
										style="cursor: pointer" value="회원가입" />
								</div>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>

	</section>

</body>
<%@ include file="../include/csinfo.jsp"%>
</html>