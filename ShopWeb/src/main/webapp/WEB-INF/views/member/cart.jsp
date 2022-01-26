<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/js/cart.js" charset="UTF-8"></script>
<script type="text/javascript" src="resources/js/product.js" charset="UTF-8"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="resources/js/cart.js" charset="UTF-8"></script>
<link rel="stylesheet" type="text/css" href="resources/css/cart.css?after">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<html>
	<%@ include file="../include/menu.jsp" %>
	<body>
		<div class="mypageContainer">
		<div class="navarea">
			<nav>
				<h2>마이 페이지</h2>
				<div>
					<strong>쇼핑 정보</strong>
					<ul>
						<li onClick="mypBtn()" style="cursor: pointer">구매 내역</li>
						<li><a style="color:black; font-weight:900;" href="#">관심 상품</a></li>
				</div>
				<div>
					<strong>내 정보</strong>
					<ul>
						<li onClick="location.href='mypage2'" style="cursor: pointer">회원정보관리</li>
				</div>
			</nav>
		</div>
		<div class="mypageContent">
			<h2>관심 상품</h2>
			<c:if test="${(fn:length(cartPrd)) eq 0}">
				<div align="center" style="padding: 3%;"><strong>관심상품이 없습니다.</strong></div>
			</c:if> 
			
			<c:forEach items="${cartPrd}" var="cartprd">
			<div class="prdBox">
				<table class="info">	
							
				<tr>
					<th rowspan="3">
						<a  onClick="location.href='productpage?prd_id=${cartprd.prd_id}'" style="cursor: pointer">
						<div class="imgBox">
							<img src="${cartprd.prd_img}" alt="non image" width="100px" height="100px">
						</div>
						</a>
					</th>
					<%-- <td class="prdModel"><a  onClick="location.href='productpage?prd_id=${cartprd.prd_id}'" style="cursor: pointer">${cartprd.prd_id}</a></td> --%>
				</tr>
				<tr>
					<td>
						<a class="prdBrand" onClick="location.href='productpage?prd_id=${cartprd.prd_id}'" style="cursor: pointer">${cartprd.prd_brand}</a><br>
						<a class="prdColl" onClick="location.href='productpage?prd_id=${cartprd.prd_id}'" style="cursor: pointer">${cartprd.prd_coll}</a>
					</td>
				</tr>
				<tr>
					<td class="prdName"><a  onClick="location.href='productpage?prd_id=${cartprd.prd_id}'" style="cursor: pointer">${cartprd.prd_name}</a></td>
				</tr>
				</table>		
				<div class="buydeletebutton">
						<button class="inputButtonStyle" id="delCart" style="cursor: pointer" onClick="delCart('${cartprd.prd_id}', '${member.member_id}')" >삭제</button>
						<input type="hidden" id="prd_id" value="${cartprd.prd_id}" />					
				</div>				
				<hr>
				</div>
					</c:forEach>
				
				<div class="cartClear">
					
					<input type="button" name="cartClear" style="cursor: pointer" id="cartClear" onclick="cartClear()" value="상품 비우기" />
					
				</div>
			</div>
		</div>		
	</body>
	<%@ include file="../include/csinfo.jsp" %>
</html>