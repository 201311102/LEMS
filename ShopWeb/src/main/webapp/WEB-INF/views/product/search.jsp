<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/menu.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/css/productList.css">
<script>
$(document).ready(function() {
    $("#brand option").each(function(){
        if($(this).val()=="${map.sPrdB}"){
          $(this).attr("selected","selected"); // attr적용안될경우 prop으로 
          categoryChange(this);
          
          $("#good option").each(function(){
              if($(this).val()=="${map.sPrdC}"){
                $(this).attr("selected","selected"); // attr적용안될경우 prop으로 
              }
            });
        }
      });
});

			function list(sPrd, page, order, sPrdB, sPrdC) {
				location.href = "searchPrd?sPrd=" + sPrd + "&curPage=" + page + "&order=" + order
						+ "&sPrdB=" + sPrdB + "&sPrdC=" + sPrdC;
				/* alert(order); */
			}
			function iSearchPrd(page, order) {
				 var isPrd = $("#isPrd").val();
				 var brand = $("#brand").val();
				 var coll = $("#good").val();
				 
				location.href = "searchPrd?sPrd=" + isPrd + "&curPage=" + page + "&order=" + order
						+ "&sPrdB=" + brand + "&sPrdC=" + coll;
				/* alert(order); */
			}
			function categoryChange(e) {
				  var good_a = ["Yeezy 500", "Yeezy Boost350", "Yeezy Boost700", "Yeezy Foam RNNR"];
				  var good_b = ["Speed Trainer", "Track Sneaker", "Triple S"];
				  var good_c = ["Replica", "Tabi"];
				  var good_d = ["New Balance 327", "New Balance 992", "New Balance 993"];
				  var good_e = ["Jordan1", "Peaceminusone", "Sacai"];
				  var target = document.getElementById("good");
				  if(e.value == "Adidas") var d = good_a;
				  else if(e.value == "Balenciaga") var d = good_b;
				  else if(e.value == "Maison Margiela") var d = good_c;
				  else if(e.value == "New Balance") var d = good_d;
				  else if(e.value == "Nike") var d = good_e;
				 
				  target.options.length = 1;
				 
				  for (x in d) {
				    var opt = document.createElement("option");
				    opt.value = d[x];
				    opt.innerHTML = d[x];
				    target.appendChild(opt);
				  } 
			}
 
			
</script>
<html>
<body>
	<div id="listBody">
		<div class="ranking">
			<a href="#" id="order" value="DESC"
				onClick="list('${map.sPrd}', '1', 'DESC', '${map.sPrdB}', '${map.sPrdC}')"
				<c:if test="${map.order == 'DESC'}">style="font-weight: bold; text-decoration: underline; color: black;"</c:if>>높은가격순</a>&nbsp;&nbsp;&nbsp;
			<a href="#" id="order" value="ASC"
				onClick="list('${map.sPrd}', '1', 'ASC', '${map.sPrdB}', '${map.sPrdC}')"
				<c:if test="${map.order == 'ASC'}">style="font-weight: bold; text-decoration: underline; color: black;"</c:if>>낮은가격순</a>
		</div>

		<div id="prdList">
			<div class="prdContent">

				<div class="selectBox">
					<select name="brand" id="brand" onchange="categoryChange(this)">
						<option value="">ALL</option>
						<option value="Adidas">Adidas</option>
						<option value="Balenciaga">Balenciaga</option>
						<option value="Maison Margiela">Maison Margiela</option>
						<option value="New Balance">New Balance</option>
						<option value="Nike">Nike</option>
					</select> <br> <select id="good" class="collection" name="collection">
						<option value="">ALL</option>
					</select>

					<div class="innerSearch" id="innerSearch">
						<input type="text" class="isPrd" name="isPrd" id="isPrd"
							placeholder="검색어 입력"
							onkeypress="if(window.event.keyCode == 13) {iSearchPrd('1','${map.order}')}">
						<button type="button" class="innerSearchButton"
							id="innerSearchBtn" onclick="iSearchPrd('1', '${map.order}')"
							style="cursor: pointer">
							<img
								src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Search_Icon.svg/1024px-Search_Icon.svg.png">
						</button>
					</div>
				</div>
			</div>
			<div class="prdBody">
				<c:if test="${(fn:length(map.list)) eq 0}">
					<p style="font-weight: bold; text-align: center;">상품내역이 없습니다.
				</c:if>
				<c:forEach begin="0" end="${(fn:length(map.list) + 3) / 4 - 1}"
					var="row">
					<c:forEach begin="0" end="3" var="col">
						<c:set var="item" value="${map.list[row * 4 + col]}" />
						<c:if test="${not empty item}">

							<div class="prd"
								onClick="location.href='productpage?prd_id=${item.prd_id}'"
								style="cursor: pointer">
								<div class="prdimg">
									<img src="${item.prd_img}">
								</div>
								<p class="prdbrand">${item.prd_brand}</p>
								<p class="prdname">${item.prd_name}</p>
								<p class="prdprice">
									<fmt:formatNumber value="${item.prd_price}" pattern="#,###,###" />
									원
								</p>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
			</div>
		</div>
		<div class="paging">
			<c:if test="${(fn:length(map.list)) ne 1}">
				<c:if test="${map.pager.curBlock > 1}">
					<a href="#"
						onClick="list('${map.sPrd}', '1', '${map.order}' '${map.sPrdB}', '${map.sPrdC}')"><<</a>
				</c:if>
				<c:if test="${map.pager.curBlock > 1}">
					<a href="#"
						onClick="list('${map.sPrd}', '${map.pager.prevPage}', '${map.order}', '${map.sPrdB}', '${map.sPrdC}')"><</a>
				</c:if>
				<c:forEach var="num" begin="${map.pager.blockBegin}"
					end="${map.pager.blockEnd}">

					<c:choose>
						<c:when test="${num == map.pager.curPage}">
							<span style="color: black;">${num}</span>
						</c:when>
						<c:otherwise>
							<a href="#"
								onClick="list('${map.sPrd}', '${num}', '${map.order}', '${map.sPrdB}', '${map.sPrdC}')">${num}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${map.pager.curBlock < map.pager.totBlock}">
					<a href="#"
						onClick="list('${map.sPrd}', '${map.pager.nextPage}', '${map.order}', '${map.sPrdB}', '${map.sPrdC}')">></a>
				</c:if>
				<c:if test="${map.pager.curBlock < map.pager.totPage}">
					<a href="#"
						onClick="list('${map.sPrd}', '${map.pager.totPage}', '${map.order}', '${map.sPrdB}', '${map.sPrdC}')">>></a>
				</c:if>
			</c:if>

		</div>
	</div>
</body>
<%@ include file="../include/csinfo.jsp"%>
</html>
