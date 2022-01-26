<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/menu.jsp"%>
	<head>
		<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
		<script src="resources/js/mypage.js" charset="UTF-8"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<link rel="stylesheet" type="text/css" href="resources/css/mypage3.css?">
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
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
					<li onClick="location.href='mypage2'"><a style="color:black; font-weight:900;" href="#">회원정보관리</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<div class="mypageContent">
		
				<div class="joinContainer">
				<h2 align="center">회원 정보 수정</h2>
					<div class="join_area">
						<form name="f1rm" id="f1rm">
							
							<table align="center">
								<tr>
									<td>
										<div class="input_box">
											<label id="idchk" class="input_title">아이디</label><br> 
											<input type="text" id="member_id" class="inputStyle" value="${member.member_id}" disabled />
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="input_box">
											<label class="input_title">변경할 비밀번호</label><br> <input
												type="password" id="member_pwd" class="inputStyle"
												maxlength="20" />
										</div>
									</td>
								<tr>
								<tr>
									<td>
										<div class="input_box">
											<label id="checkPasswd" class="input_title">비밀번호 확인</label><br>
											<input type="password" id="chk_member_pwd" class="inputStyle"
												maxlength="20" />
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="input_box">
											<label id="chkname" class="input_title">이름</label><br> 
											<input class="inputStyle" type="text" id="member_name" value="${member.member_name}" disabled>
										</div>
									</td>
								</tr>

								<tr>
									<td>
								
										<div class="input_box">
											<label class="input_title">이메일(선택)</label><br>
											<c:set var="m_email" value="${member.member_email}" />
											<c:set var="memail" value="${fn:split(m_email, '@') }" />
											<div class="infobox">
											 <input type="text" id="email_id"  value="${memail[0] }">@ 
											 <input type="text"  id="email_addr"  value="${memail[1] }" disabled>
											 	 <select id="email_select">
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
											<label class="input_title">연락처(선택)</label><br> 
											<c:set var="m_phone" value="${member.member_phone}" />
											<c:set var="mphone" value="${fn:split(m_phone, '-') }" />
											<div class="infobox">
											<select id="NUMst" >
												<option value="${mphone[0]}" selected>${mphone[0]}</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
											</select> -
											 <input type="text" id="NUMnd" class="input" maxlength="4"
												value="${mphone[1]}"/> -
											 <input type="text" id="NUMrd"
												class="input" maxlength="4"  value="${mphone[2]}"/>
										</div>
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="input_box">
											<label class="input_title">우편번호</label><br> 
											<input
												type="text" name="member_zipcode" id="member_zipcode" class="inputStyle" readonly size="10"
												value="${member.member_zipcode}"> 
											<input
												class="inputButtonStyle" style="margin-left: -104px;"
												type="button" onclick="searchPost()" style="cursor: pointer" value="우편번호 찾기">
											<br>
											<br>
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="input_box">
											<label class="input_title">주소</label><br> <input
												type="text" name="member_faddr" id="member_faddr"
												class="inputStyle" size="60"  value="${member.member_faddr}"readonly>
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="input_box">
											<label class="input_title">상세주소</label><br> <input
												type="text" name="member_laddr" id="member_laddr"
												class="inputStyle" size="60" value="${member.member_laddr}">
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="btn_box" style="text-align:center;">
											<input type="button" onclick="myinfoUp()" style="cursor: pointer" value="수정" />
											<input type="button" onclick="deleteMember()" style="cursor: pointer; margin:0 20px;" value="탈퇴" />
											<input type="button" onClick="location.href='mypage2'" style="cursor: pointer;" value="취소" />
											
										</div>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
	<%@ include file="../include/csinfo.jsp"%>
</html>