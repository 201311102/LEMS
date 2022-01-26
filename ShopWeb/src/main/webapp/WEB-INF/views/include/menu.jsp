<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="resources/js/login.js" charset="UTF-8"></script>
<link rel="stylesheet" type="text/css" href="resources/css/header.css" />
<script>
	// 마이페이지 클릭 이벤트
	function mypBtn() {
		var member_id = $("#member_id").val();
		var myp = $("#myp").val();
		$.ajax({
			type : "GET",
			url : "mypL",
			data : {
				"member_id" : member_id,
				"myp" : myp
			},
			success : function(data) {
				window.location.href = "mypage?member_id=" + member_id
						+ "&myp=" + myp;
			}
		});
	}
</script>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LEMS</title>
</head>

<section
	style="position: fixed; width: 1920px; top: 0; left: 0; right: 0; z-index: 1000; background-color: #fff; height: 169px;">
	<!-- <hr style="clear: both;">-->
	<header>
		<a href="main"><img class="logo" src="resources/img/로고.png">
		</a>
		<div class="wrap">
			<div class="search" id="search">
				<input type="text" class="searchTerm" name="sPrd" id="sPrd"
					placeholder="검색어 입력"
					onkeypress="if(event.keyCode == 13) {searchPrd(); return;}">
				<button type="button" class="searchButton" id="searchBtn"
					onclick="searchPrd()" style="cursor: pointer">
					<img
						src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Search_Icon.svg/1024px-Search_Icon.svg.png">
				</button>
			</div>
		</div>
		<script>
			function searchPrd() {
				var sea = $("#sPrd").val();
				self.location = "searchPrd?sPrd=" + sea;
			}

			function searchAll() {
				self.location = "searchPrd?sPrd=";
			}
		</script>
		</div>
		<form name="frm" id="frm" style="width: 600px; text-align: right;">
			<nav>
				<input type="hidden" id="myp" value="${myp}" />
				<c:choose>
					<c:when test="${member.admin eq 'Y'}">
						<ul class="nav_links">
							<li onclick="searchAll()" style="cursor: pointer">전체상품</li>
							<li onclick="location.href='about'" style="cursor: pointer">고객센터</li>
							<li onclick="location.href='delivery'" style="cursor: pointer">관리자
								페이지</li>
							<li onclick="location.href='logout'" style="cursor: pointer">관리자
								로그아웃</li>
							<br>
							<p style="font-size: 12px;">
								<span style="color: gray;">${member.member_id}</span>님 환영합니다.
							</p>

						</ul>
					</c:when>
					<c:when test="${member.member_id == null}">
						<ul class="nav_links">
							<li onclick="searchAll()" style="cursor: pointer">전체상품</li>
							<li onclick="location.href='about'" style="cursor: pointer">고객센터</li>
							<li onclick="location.href='signup'" style="cursor: pointer">회원가입</li>
							<li onclick="location.href='login'" style="cursor: pointer">로그인</li>
							<br>
							<p style="font-size: 12px">&nbsp;</p>
						</ul>
					</c:when>
					<c:otherwise>
						<input type="hidden" id="member_id" name="member_id"
							value="${member.member_id}" />
						<ul class="nav_links">
							<li onclick="searchAll()" style="cursor: pointer">전체상품</li>
							<li onclick="location.href='about'" style="cursor: pointer">고객센터</li>
							<li onClick="mypBtn()"
								style="cursor: pointer; margin-right: 20px;">마이페이지</li>
							<li onclick="location.href='logout'"
								style="cursor: pointer; margin-right: 0px;">로그아웃</li>
							<br>
							<p style="font-size: 12px;">
								<span style="color: gray;">${member.member_id}</span>님 환영합니다.
							</p>
						</ul>
					</c:otherwise>
				</c:choose>
			</nav>
		</form>
	</header>
	<div style="clear: both;"></div>

	<div id="nav">
		<ul>
			<li><div onclick="location.href='searchPrd?sPrdB=Adidas'">Adidas</div>
				<ul>
					<li
						onclick="location.href='searchPrd?sPrdB=Adidas&sPrdC=Yeezy 500'">Yeezy
						500</li>
					<li
						onclick="location.href='searchPrd?sPrdB=Adidas&sPrdC=Yeezy Boost350'">Yeezy
						Boost350</li>
					<li
						onclick="location.href='searchPrd?sPrdB=Adidas&sPrdC=Yeezy Boost700'">Yeezy
						Boost700</li>
					<li
						onclick="location.href='searchPrd?sPrdB=Adidas&sPrdC=Yeezy Foam RNNR'">Yeezy
						Foam RNNR</li>
				</ul></li>
			<li><div onclick="location.href='searchPrd?sPrdB=Balenciaga'">Balenciaga</div>
				<ul>
					<li
						onclick="location.href='searchPrd?sPrdB=Balenciaga&sPrdC=Speed Trainer'">Speed
						Trainer</li>
					<li
						onclick="location.href='searchPrd?sPrdB=Balenciaga&sPrdC=Track Sneaker'">Track
						Sneaker</li>
					<li
						onclick="location.href='searchPrd?sPrdB=Balenciaga&sPrdC=Triple S'">Triple
						S</li>
				</ul></li>
			<li><div
					onclick="location.href='searchPrd?sPrdB=Maison Margiela'">Maison
					Margiela</div>
				<ul>
					<li
						onclick="location.href='searchPrd?sPrdB=Maison Margiela&sPrdC=Replica'">Replica</li>
					<li
						onclick="location.href='searchPrd?sPrdB=Maison Margiela&sPrdC=Tabi'">Tabi</li>
				</ul></li>
			<li><div onclick="location.href='searchPrd?sPrdB=New Balance'">New
					Balance</div>
				<ul>
					<li
						onclick="location.href='searchPrd?sPrdB=New Balance&sPrdC=New Balance 327'">New
						Balance 327</li>
					<li
						onclick="location.href='searchPrd?sPrdB=New Balance&sPrdC=New Balance 992'">New
						Balance 992</li>
					<li
						onclick="location.href='searchPrd?sPrdB=New Balance&sPrdC=New Balance 993'">New
						Balance 993</li>
				</ul></li>
			<li><div onclick="location.href='searchPrd?sPrdB=Nike'">Nike</div>
				<ul>
					<li onclick="location.href='searchPrd?sPrdB=Nike&sPrdC=Jordan1'">Jordan1</li>
					<li
						onclick="location.href='searchPrd?sPrdB=Nike&sPrdC=Peaceminusone'">Peaceminusone</li>
					<li onclick="location.href='searchPrd?sPrdB=Nike&sPrdC=Sacai'">Sacai</li>
				</ul></li>
		</ul>
	</div>
	<hr style="border: 1px solid black;">
</section>