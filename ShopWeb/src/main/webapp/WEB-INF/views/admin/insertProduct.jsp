<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/menu.jsp"%>
<head>
<link rel="stylesheet" type="text/css"
	href="resources/css/insertProduct.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="resources/js/product.js" charset="UTF-8"></script>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="mypageContainer">
		<div class="navarea">
			<nav>
				<h2>관리자 페이지</h2>
				<div>
					<ul>
						<li onclick="location.href='delivery'" style="cursor: pointer;">배송관리</li>
						<li onclick="location.href='memberList'" style="cursor: pointer;">회원관리</li>
						<li onclick="location.href='prdinsert'"
							style="cursor: pointer; color: black; font-weight: 900;">상품등록</li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="mypageContent">

			<div class="inprContainer">
				<h2 align="center">상품 등록</h2>
				<div class="inprContent">
					<form id="fileForm" action="insertProduct" method="POST"
						enctype="multipart/form-data">
						<table align="center">
							<tr>
								<td>
									<div class="input_box">
										<label class="input_title">브랜드</label><br> <select
											class="select_box" name="prd_brand" id="prd_brand"
											onchange="categoryChange(this)">
											<option value="">ALL</option>
											<option value="Adidas">Adidas</option>
											<option value="Balenciaga">Balenciaga</option>
											<option value="Maison Margiela">Maison Margiela</option>
											<option value="New Balance">New Balance</option>
											<option value="Nike">Nike</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="input_box">
										<label class="input_title">컬랙션</label><br> <select
											class="select_box" name="prd_coll" id="prd_coll"
											class="collection">
											<option value="">ALL</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="input_box">
										<label class="input_title">품번</label><br> <input
											class="inputStyle" type="text" name="prd_id" id="prd_id"
											value="" /> <input class="inputButtonStyle "
											style="margin-left: -74px;" type="button"
											onclick="prdidChk()" style="cursor: pointer" value="중복확인" /><br>
										<!-- <input class="inputButtonStyle type="button" value="중복 확인" onclick="prdidChk()"><br/> -->
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="input_box">
										<label class="input_title">품명</label><br> <input
											class="inputStyle" type="text" name="prd_name" id="prd_name"
											value="" />
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="input_box">
										<label class="input_title">가격</label><br> <input
											class="inputStyle" type="number" name="prd_price"
											id="prd_price" min="0" value="0" />
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="input_box">
										<label class="input_title">모델명</label><br> <input
											class="inputStyle" type="text" name="prd_mdlno"
											id="prd_mdlno" value="" />
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="input_box">
										<label class="input_title">출시일</label><br> <input
											class="inputStyle" type="text" name="prd_lncd" id="prd_lncd"
											value="" />
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="input_box">
										<label class="input_title">컬러</label><br> <input
											class="inputStyle" type="text" name="prd_color"
											id="prd_color" value="" />
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="input_box">
										<label class="input_title">발매가</label><br> <input
											class="inputStyle" type="number" name="prd_lncp"
											id="prd_lncp" min="0" value="0" />
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="input_box">
										<label class="input_title">재고</label><br>
										<table class="stock" style="border-collapse: collapse">
											<tr>
												<th>250</th>
												<th>255</th>
												<th>260</th>
												<th>265</th>
												<th>270</th>
												<th>275</th>
												<th>280</th>
												<th>285</th>
												<th>290</th>
											</tr>
											<tr>
												<td><input class="inputStyle2" type="number"
													name="size250" id="size250" min="0" value="0" /></td>
												<td><input class="inputStyle2" type="number"
													name="size255" id="size255" min="0" value="0" /></td>
												<td><input class="inputStyle2" type="number"
													name="size260" id="size260" min="0" value="0" /></td>
												<td><input class="inputStyle2" type="number"
													name="size265" id="size265" min="0" value="0" /></td>
												<td><input class="inputStyle2" type="number"
													name="size270" id="size270" min="0" value="0" /></td>
												<td><input class="inputStyle2" type="number"
													name="size275" id="size275" min="0" value="0" /></td>
												<td><input class="inputStyle2" type="number"
													name="size280" id="size280" min="0" value="0" /></td>
												<td><input class="inputStyle2" type="number"
													name="size285" id="size285" min="0" value="0" /></td>
												<td><input class="inputStyle2" type="number"
													name="size290" id="size290" min="0" value="0" /></td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="input_box">
										<label class="input_title">이미지</label><br> <input
											class="inputStyle" type="file" name="uploadFile"
											id="uploadFile" />
										<div class="img_wrap" style="height: 100">
											<img id="img" style="width: 100px; margin-left: 175px;" />
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="btn_box" style="margin-top: 50px;">
										<input type="button" value="상품등록" onclick="doInsertProduct()"
											style="cursor: pointer" />
										<!-- <input type="button" value="인풋테스팅" onclick="test()" /> -->
									</div>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var sel_file;
		var checkPID = false;

		$(document).ready(function() {
			$("#uploadFile").on("change", handleImgFileSelect);
		});

		function handleImgFileSelect(e) {
			var files = e.target.files;
			var filesArr = Array.prototype.slice.call(files);

			var reg = /(.*?)\/(jpg|jpeg|png|bmp)$/;

			filesArr.forEach(function(f) {
				if (!f.type.match(reg)) {
					alert("확장자는 이미지 확장자만 가능합니다.");
					return;
				}

				sel_file = f;

				var reader = new FileReader();
				reader.onload = function(e) {
					$("#img").attr("src", e.target.result);
				}
				reader.readAsDataURL(f);
			});
		}

		function prdidChk() {
			var prd_id = $("#prd_id").val();
			if (!prd_id) {
				alert("품번을 입력해주세요.");
			} else {
				$.ajax({
					type : "POST",
					url : "prdCheckID",
					data : {
						"prd_id" : prd_id
					},
					dataType : "JSON",
					success : function(data) {
						if (data == 0) {
							alert("사용가능한 아이디입니다.");
							checkPID = true;
						} else if (data != 0) {
							alert("이미 존재하는 아이디입니다.");
							checkPID = false;
						} else {
							alert("error");
						}
					},
					error : function(error) {
						alert(prd_id);
					}
				});
			}
		}

		function doInsertProduct() {
			var prd_brand = $("#prd_brand").val();
			var prd_coll = $("#prd_coll").val();
			var prd_id = $("#prd_id").val();
			var prd_name = $("input[name=prd_name]").val();
			var prd_price = $("#prd_price").val();
			var prd_mdlno = $("#prd_mdlno").val();
			var prd_lncd = $("#prd_lncd").val();
			var prd_color = $("#prd_color").val();
			var prd_lncp = $("#prd_lncp").val();
			var uploadFile = $("#uploadFile").val();

			var size250 = $("#size250").val();
			var size255 = $("#size255").val();
			var size260 = $("#size260").val();
			var size265 = $("#size265").val();
			var size270 = $("#size270").val();
			var size275 = $("#size275").val();
			var size280 = $("#size280").val();
			var size285 = $("#size285").val();
			var size290 = $("#size290").val();

			//	 alert("브랜드는" + prd_brand + "컬렉션은" + prd_coll + "품번은" + prd_id + "품명은" + prd_name + "가격은" + prd_price); 

			if (prd_brand == "") {
				alert("브랜드를 선택해 주세요");
			} else if (prd_coll == "") {
				alert("컬렉션을 선택해 주세요");
			} else if (prd_id == "") {
				alert("품번을 입력해 주세요");
			} else if (checkPID == false) {
				alert("중복검사를 해주세요");
			} else if (prd_name == "") {
				alert("품명을 입력해 주세요");
			} else if (prd_price == "") {
				alert("가격을 입력해 주세요");
			} else if (uploadFile == "") {
				alert("이미지를 등록해 주세요");
			} else {
				var formData = new FormData($("#fileForm")[0]);
				$.ajax({
					url : "insertProduct",
					type : "POST",
					processData : false,
					contentType : false,
					data : formData,
					success : function(response) {
						alert("성공하였습니다.");
						console.log(response);
						window.location.href = "prdinsert";
					},
					error : function(jqXHR) {
						alert(jqXHR.responseText);
					}
				});
			}
		}
		function categoryChange(e) {
			var good_a = [ "Yeezy 500", "Yeezy Boost350", "Yeezy Boost700",
					"Yeezy Foam RNNR" ];
			var good_b = [ "Speed Trainer", "Track Sneaker", "Triple S" ];
			var good_c = [ "Replica", "Tabi" ];
			var good_d = [ "New Balance 327", "New Balance 992",
					"New Balance 993" ];
			var good_e = [ "Jordan1", "Peaceminusone", "Sacai" ];
			var target = document.getElementById("prd_coll");
			if (e.value == "Adidas")
				var d = good_a;
			else if (e.value == "Balenciaga")
				var d = good_b;
			else if (e.value == "Maison Margiela")
				var d = good_c;
			else if (e.value == "New Balance")
				var d = good_d;
			else if (e.value == "Nike")
				var d = good_e;

			target.options.length = 1;

			for (x in d) {
				var opt = document.createElement("option");
				opt.value = d[x];
				opt.innerHTML = d[x];
				target.appendChild(opt);
			}
		}

		function test() {
			var prd_brand = $("#prd_brand").val();
			var prd_coll = $("#prd_coll").val();
			var prd_id = $("#prd_id").val();
			var prd_name = $("input[name=prd_name]").val();
			var prd_price = $("#prd_price").val();
			var prd_mdlno = $("#prd_mdlno").val();
			var prd_lncd = $("#prd_lncd").val();
			var prd_color = $("#prd_color").val();
			var prd_lncp = $("#prd_lncp").val();
			var uploadFile = $("#uploadFile").val();
			var size250 = $("#size250").val();
			var size255 = $("#size255").val();
			var size260 = $("#size260").val();
			var size265 = $("#size265").val();
			var size270 = $("#size270").val();
			var size275 = $("#size275").val();
			var size280 = $("#size280").val();
			var size285 = $("#size285").val();
			var size290 = $("#size290").val();

			alert("250=" + size250 + " 255=" + size255 + " 260=" + size260
					+ " 265=" + size265 + " 270=" + size270 + " 275=" + size275
					+ " 280=" + size280 + " 285=" + size285 + " 290=" + size290);

			var formData = new FormData($("#fileForm")[0]);
			$.ajax({
				url : "insertProduct",
				type : "POST",
				processData : false,
				contentType : false,
				data : formData,
				success : function(response) {
					alert("성공하였습니다.");
					console.log(response);
					window.location.href = "prdinsert";
				},
				error : function(jqXHR) {
					alert(jqXHR.responseText);
				}
			});
		}
	</script>
</body>
<%@ include file="../include/csinfo.jsp"%>
</html>