<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/menu.jsp"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/payment.css">
<body>
	<h1 style="text-align:center; padding: 3%;">배송/결제</h1>
	<div class="paymentBody">
		<div class="container prd">
			<div class="prdBox">
				<h3>상품정보</h3>
				<table id="oSW">
					<c:forEach items="${map.list}" var="pay">
						<input type="hidden" id="prd_id" value="${pay.prd_id}" />
						<tr>
							<td rowspan="3">
								<div class="imgBox">
									<img src="${pay.prd_img}" width="100px" height="100px">
								</div>
							</td>
							<td class="prdModel">${pay.prd_id}</td>
						</tr>
						<tr>
							<td class="prdName">${pay.prd_name}</td>
						</tr>
						<tr class="prdSize">
							<td>사이즈 : ${map.payment_size}</td>
						</tr>
						<c:set var="total" value="${pay.prd_price}" />
						
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="container memberInfo">
			<div class="memberInfoBody">
				<h3>주문자정보</h3>
				<table>
					<tr>
						<th>주문자명</th>
						<td><label id="member_name" size="20">${member.member_name}</label>
							<input type="hidden" id="hidden_member_name"
							value="${member.member_name}"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td>
							<div>
								<label id="member_zipcode" size="10">(${member.member_zipcode})</label>
								<input type="hidden" id="hidden_member_zipcode"
									value="${member.member_zipcode}"> <label
									id="member_faddr" size="60">${member.member_faddr}</label> <input
									type="hidden" id="hidden_member_faddr" 
									value="${member.member_faddr}"> <label
									id="member_laddr" size="60">${member.member_laddr}</label> <input
									type="hidden" id="hidden_member_laddr"
									value="${member.member_laddr}">
							</div>
						</td>
					</tr>

					<tr>
						<th>연락처</th>
						<td><label id="member_phone" " size="16">${member.member_phone}</label>
							<input type="hidden" id="hidden_member_phone"
							value="${member.member_phone}"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><label id="member_email" size="30">${member.member_email}</label>
							<input type="hidden" id="hidden_member_email"
							value="${member.member_email}"></td>
					</tr>
				</table>
			</div>
		</div>

		<div class="container deliveryInfo">
			<div class="deliveryInfoBody">
				<h3>배송 정보</h3>
				<table>
					<tr>
						<th>배송지 선택</th>
						<td><label><input style="margin-left: 0;"
								type="radio" name="choice" id="sameaddr" value="sameaddr"
								checked />주문자 정보 동일</label> <label><input type="radio"
								name="choice" id="newaddr" value="newaddr" style="margin-left:20px;"/>새로운 배송지</label></td>
					</tr>
					<tr>
						<th>받는 분</th>
						<td><input class="input" type="text" name="sn_member_name"
							size="20" placeholder="받는사람" value="${member.member_name}" style="margin-top:8px;"
							readonly /></td>
					</tr>
					<tr>
						<th>주소</th>
						<td>
							<div>
								<input type="text" name="sn_member_zipcode" class="input"
									placeholder="우편번호" value="${member.member_zipcode}" readonly>
								<input type="button" class="inputButtonStyle" name="nn_searchPost" onclick="searchPost()"
									value="우편번호 찾기" style="visibility: hidden"><br> 
								<input style="width:70%;"
									type="text" name="sn_member_faddr" class="input"
									placeholder="우편주소" value="${member.member_faddr}" readonly>
								<input style="width:70%;"  
									type="text" name="sn_member_laddr" id="member_laddr"
									class="input" placeholder="상세주소" value="${member.member_laddr}"
									readonly>
							</div>
						</td>
					</tr>
					<tr>
						<th>연락처</th>
						<td><input type="text" name="sn_member_phone" class="input"
							size="16" placeholder="전화번호" value="${member.member_phone}"
							readonly /></td>
					</tr>
					<tr>
						<th>배송 메세지</th>
						<td><textarea id="texta" name="sn_payment_msg" rows="3"
								cols="60" maxlength="10" placeholder="배송시 요청메시지 입력(10자 내)"></textarea>
						</td>
					</tr>
				</table>
			</div>
		</div>

		<div class="container creditInfo">
			<div>
				<h3>결제 수단</h3>
				<div id="pay">
					<input type="radio" name="chk_info" value="card" checked style="margin-left:0;"/>카드 결제 <input
						type="radio" name="chk_info" value="transfer" disabled />계좌 이체 <input
						type="radio" name="chk_info" value="deposit" disabled />무통장 입금
					<div id="creditPay">
						카드번호 <input style="margin-left:10px;" type="text" id="credit1" maxlength="4" size="4"
							onkeypress="onlyNumber()" /> - <input type="password"
							id="credit2" maxlength="4" size="4" onkeypress="onlyNumber()" />
						- <input type="text" id="credit3" maxlength="4" size="4"
							onkeypress="onlyNumber()" /> - <input type="password"
							id="credit4" maxlength="4" size="4" onkeypress="onlyNumber()" />
					</div>
				</div>
			</div>
		</div>

		<div class="container paymentPrice">
			<div class="paymentPriceInfo">
				<table>
					<tr>
						<th height="50" width="140" align="center">총 결제 금액</th>
						<td height="50" width="500" align="center"><fmt:formatNumber
								value="${total}" pattern="#,###" />원</td>
					</tr>
					<tr>
						<th colspan="2"><input type="button" onClick="termChk()" value="결제하기" /></th>
						<!-- <th colspan="2"><input type="button" onClick="test()" value="테스팅" /></th> -->
					</tr>
				</table>
			</div>
		</div>

		<script>
		$(document).ready(function() {	// 최상단 체크박스 클릭
			$("input[type=radio][name=choice]").change(function() {
				if(this.value == "sameaddr") {
					$("input[name=sn_member_name]").val($("#hidden_member_name").val());
					$("input[name=sn_member_name]").attr("readonly", true);
					$("input[name=sn_member_zipcode]").val($("#hidden_member_zipcode").val());
					$("input[name=sn_member_zipcode]").attr("readonly", true);
					$("input[name=sn_member_faddr]").val($("#hidden_member_faddr").val());
					$("input[name=sn_member_faddr]").attr("readonly", true);
					$("input[name=sn_member_laddr]").val($("#hidden_member_laddr").val());
					$("input[name=sn_member_laddr]").attr("readonly", true);
					$("input[name=sn_member_phone]").val($("#hidden_member_phone").val());
					$("input[name=sn_member_phone]").attr("readonly", true);
					$("input[name=nn_searchPost]").css("visibility", "hidden");
				} else if (this.value == "newaddr") {
					$("input[name=sn_member_name]").val("");
					$("input[name=sn_member_name]").attr("readonly", false);
					$("input[name=sn_member_zipcode]").val("");
					$("input[name=sn_member_zipcode]").attr("readonly", true);
					$("input[name=sn_member_faddr]").val("");
					$("input[name=sn_member_faddr]").attr("readonly", true);
					$("input[name=sn_member_laddr]").val("");
					$("input[name=sn_member_laddr]").attr("readonly", false);
					$("input[name=sn_member_phone]").val("");
					$("input[name=sn_member_phone]").attr("readonly", false);
					$("input[name=nn_searchPost]").css("visibility", "visible");
				}
			});
		})
		
		function test(){
			var payment_size = ${map.payment_size};
			alert(payment_size);
		}
		
		function termChk() {
			var member_id = $("#member_id").val();
			var payment_reciever = $("input[name=sn_member_name]").val();
			var member_zipcode = $("input[name=sn_member_zipcode]").val();
			var member_faddr = $("input[name=sn_member_faddr]").val();
			var member_laddr = $("input[name=sn_member_laddr]").val();
			var member_phone = $("input[name=sn_member_phone]").val();
			var credit_number = $("#credit1").val()+"-"+$("#credit2").val()+"-"+$("#credit3").val()+"-"+$("#credit4").val();
			var payment_size = ${map.payment_size};
			
			var payment_msg = $("textarea[name=sn_payment_msg]").val();
			var prd_price = ${total};
			var prd_id = $("#prd_id").val();
			
			if ($("#credit1").val() == "" || $("#credit2").val() == "" || $("#credit3").val() == "" || $("#credit4").val() == "") {
					alert("카드번호를 입력해주세요");
			} else if (member_phone == ""){
				alert("연락처를 입력해주세요");
			} else if (member_zipcode == "" || member_faddr == ""){
				alert("주소를 입력해주세요");
			}else{
				var cfrm = confirm("결제를 진행 하시겠습니까?");
				if(cfrm){
					$.ajax({
						type : "POST",
						url : "decopay",
						data : {
							"member_id" : member_id,
							"prd_id" : prd_id,
							"member_zipcode" : member_zipcode,
							"member_faddr" : member_faddr,
							"member_laddr" : member_laddr,
							"member_phone" : member_phone,
							"credit_number" : credit_number,
							"payment_msg" : payment_msg,
							"prd_price" : prd_price,
							"payment_size" : payment_size,
							"payment_reciever" : payment_reciever
						}, success : function() {
							alert("결제가 완료되었습니다.");
							window.location.href = "main";
						}
					});
				}else{
					alert("결제를 취소하셨습니다.");
				}
			}
		}
		
		// 카드번호 숫자입력
		function onlyNumber(){
			if((event.keyCode<48)||(event.keyCode>57)) {
				event.returnValue=false;
			}
		}
		
		function searchPost() {
			new daum.Postcode({
				oncomplete : function(data) {
					var fullAddr = '';
					var extraAddr = '';

					if (data.userSelectedType == 'R') {
						fullAddr = data.roadAddress;
					} else {
						fullAddr = data.jibunAddress;
					}
					if (data.userSelectedType == 'R') {
						if (data.bname !== '') {
							extraAddr += data.bname;
						}
						if (data.buildingName !== '') {
							extraAddr += (extraAddr !== '' ? ', ' + data.buildingName
									: data.buildingName);
						}
						fullAddr += (extraAddr !== '' ? '(' + extraAddr + ')' : '');
					}
					$("input[name=sn_member_zipcode]").val(data.zonecode);
					console.log($("input[name=sn_member_zipcode]").val());
					// document.getElementById('sn_member_zipcode').value = data.zonecode;
					$("input[name=sn_member_faddr]").val(fullAddr);
					// document.getElementById('sn_member_faddr').value = fullAddr;
					$("input[name=sn_member_laddr]").focus();
					// document.getElementById('sn_member_laddr').focus();
				}
			}).open();
		}
	</script>
	</div>
</body>
<%@ include file="../include/csinfo.jsp"%>
</html>