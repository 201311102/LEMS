<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="now" class="java.util.Date" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/menu.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/memberList.css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="resources/js/mypage.js" charset="UTF-8"></script>
<script>
	function updateMember() {
		var member_id = $("#member_id").val();
		var member_pwd = $("#member_pwd").val();
		var member_email = $("#email_id").val() + "@" + $("#email_addr").val();
		var member_phone = $("#NUMst").val() + "-" + $("#NUMnd").val() + "-"
				+ $("#NUMrd").val();
		var member_zipcode = $("#member_zipcode").val();
		var member_faddr = $("#member_faddr").val();
		var member_laddr = $("#member_laddr").val();
		
		var cfrm = confirm("수정 하시겠습니까?");
		if (cfrm) {
		$.ajax({
			type : "POST",
			url : "mypage3",
			data : {
				"member_id" : member_id,
				"member_pwd" : member_pwd,
				"member_email" : member_email,
				"member_phone" : member_phone,
				"member_zipcode" : member_zipcode,
				"member_faddr" : member_faddr,
				"member_laddr" : member_laddr
			},
			success : function(data) {
				alert("수정이 완료되었습니다.");
				console.log(member_id);
				location.reload();
			},
			error : function(data) {
				console.log(member_id);
			}
		});
		}
	}

	function deleteMemberAdmin() {
		var member_id = $("#member_id").val();

		var cfrm = confirm("정말 탈퇴시키겠습니까?");
		if (cfrm) {
			$.ajax({
				type : "POST",
				url : "deleteMember",
				data : {
					"member_id" : member_id
				},
				success : function(data) {
					console.log(member_id);
					alert("탈퇴되었습니다.");
					window.location.href = "memberList";
				},
				error : function(data) {
					console.log(member_id);
				}
			});
		}
	}
</script>
<html>
<body>
	<div class="mypageContainer">
		<div class="navarea">
			<nav>
				<h2>관리자 페이지</h2>
				<div>
					<ul>
						<li onclick="location.href='delivery'" style="cursor: pointer;">배송관리</li>
						<li onclick="location.href='memberList'"
							style="cursor: pointer; color: black; font-weight: 900;">회원관리</li>
						<li onclick="location.href='prdinsert'" style="cursor: pointer;">상품등록</li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="mypageContent">
			<div class="notice_wrap">
				<h2>회원관리</h2>
				<div class="prdBox">
					<div>
						<table class="memlist2">
							<c:set var="member" value="${map.member}" />
							<tr>
								<th>회원번호</th>
								<td class="list2">${member.member_seq}</td>
							</tr>
							<tr>
								<th>아이디</th>
								<td class="list2">${member.member_id}</td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td class="list2"><input type="password" id="member_pwd"
									maxlength="20" value=""/></td>
							</tr>
							<tr>
								<th>이름</th>
								<td class="list2">${member.member_name}</td>
							</tr>
							<tr>
								<th>연락처</th>
								<td class="list2"><c:set var="m_phone"
										value="${member.member_phone}" /> <c:set var="mphone"
										value="${fn:split(m_phone, '-') }" /> 
										<select id="NUMst" style="width:78px;">
										<option value="${mphone[0]}" selected>${mphone[0]}</option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
								</select> - <input type="text" id="NUMnd" class="input" maxlength="4"
									value="${mphone[1]}" /> - <input type="text" id="NUMrd"
									class="input" maxlength="4" value="${mphone[2]}" /></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td class="list2"><c:set var="m_email"
										value="${member.member_email}" /> <c:set var="memail"
										value="${fn:split(m_email, '@') }" /> <input type="text"
									id="email_id" value="${memail[0] }"> @ <input
									type="text" id="email_addr" value="${memail[1] }" disabled>
									<select id="email_select">
										<option value="" selected>::선택하세요::</option>
										<option value="naver.com">naver.com</option>
										<option value="gmail.com">gmail.com</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="nate.com">nate.com</option>
										<option value="1">직접입력</option>
								</select></td>
							</tr>
							<tr>
								<th>우편번호</th>
								<td><input type="text"  name="member_zipcode"
									id="member_zipcode" readonly size="10"
									value="${member.member_zipcode}"> &nbsp;&nbsp;&nbsp; <input
									type="button" class="ButtonStyle2" onclick="searchPost()" style="cursor: pointer"
									value="우편번호 찾기"></td>
							</tr>
							<tr>
								<th>주소</th>
								<td><input type="text" name="member_faddr"
									id="member_faddr" size="60" value="${member.member_faddr}"
									readonly></td>
							</tr>
							<tr>
								<th>상세주소</th>
								<td><input type="text" name="member_laddr"
									id="member_laddr" size="60" value="${member.member_laddr}">
								</td>
							</tr>
							<tr>
								<th>가입일</th>
								<td class="list2">${member.member_date}</td>
							</tr>
							<tr>
								<th>결제내역</th>
								<td>
									<div style="width: 100%; height: 200px; overflow: auto">
										<table class="memview">
											<tr>
												<th>구매번호</th>
												<th>상품번호</th>
												<th>구매날짜</th>
												<th>상품명</th>
												<th>구매금액</th>
											</tr>
											<c:forEach begin="0" end="${(fn:length(map.mypL))}" var="i">
												<c:set var="row" value="${map.mypL[i]}" />
												<c:choose>
													<%-- 검색결과가 있을 때 --%>
													<c:when test="${not empty row}">
														<tr>
															<td>${row.payment_id}</td>
															<td>${row.prd_id}</td>
															<td>${row.payment_date}</td>
															<td>${row.prd_name}</td>
															<td><fmt:formatNumber value="${row.prd_price}"
																	pattern="#,###,###" /></td>
														</tr>
													</c:when>
													<%-- 검색결과가 없을 떄 --%>
													<c:when test="${map.count == 0}">
														<tr>
															<td colspan='5'>주문내역이 없습니다.</td>
														</tr>
													</c:when>
												</c:choose>
											</c:forEach>
										</table>
									</div>
							</tr>
						</table>
						<br />
						<div align="center">
							<input type="hidden" id="member_id" name="member_id"
								value="${member.member_id}" />
							<button class="ButtonStyle" onclick="updateMember()"
								style="cursor: pointer;">수정</button>
							<button class="ButtonStyle" onclick="deleteMemberAdmin()"
								style="cursor: pointer;">회원탈퇴</button>
							<button class="ButtonStyle" onclick="location.href='memberList'"
								style="cursor: pointer;">목록</button>
							<!-- <button class="ButtonStyle" style="cursor: pointer;">삭제</button> -->
						</div>
						<br /> <br />
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ========== -->
</body>
<%@ include file="../include/csinfo.jsp"%>
</html>