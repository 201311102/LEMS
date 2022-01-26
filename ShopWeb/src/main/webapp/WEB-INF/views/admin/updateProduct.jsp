<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/menu.jsp"%>
<head>
<link rel="stylesheet" type="text/css"
	href="resources/css/updateProduct.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="resources/js/product.js" charset="UTF-8"></script>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<h1 style="text-align: center; padding: 3%; font-size: 2em;">상품관리</h1>
	<section>
		<div class="inprContainer">
			<div class="inprContent">
				<form id="fileForm" action="insertProduct" method="POST"
					enctype="multipart/form-data">
					<table align="center">
						<input type="hidden" name="prd_orid" id="prd_orid" value="${product.prd_id}" />
						<tr>
							<td>
								<div class="input_box">
									<label class="input_title">브랜드 </label><br> <select
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
										type="hidden" name="prd_id" id="prd_id"
										value="${product.prd_id}"> <input class="inputStyle"
										type="text" value="${product.prd_id}" disabled="disabled" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="input_box">
									<label class="input_title">품명</label><br> <input
										class="inputStyle" type="text" name="prd_name" id="prd_name"
										value="${product.prd_name}" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="input_box">
									<label class="input_title">가격</label><br> <input
										class="inputStyle" type="number" name="prd_price"
										id="prd_price" min="0" value="${product.prd_price}" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="input_box">
									<label class="input_title">모델명</label><br> <input
										class="inputStyle" type="text" name="prd_mdlno" id="prd_mdlno"
										value="${product.prd_mdlno}" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="input_box">
									<label class="input_title">출시일</label><br> <input
										class="inputStyle" type="text" name="prd_lncd" id="prd_lncd"
										value="${product.prd_lncd}" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="input_box">
									<label class="input_title">컬러</label><br> <input
										class="inputStyle" type="text" name="prd_color" id="prd_color"
										value="${product.prd_color}" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="input_box">
									<label class="input_title">발매가</label><br> <input
										class="inputStyle" type="number" name="prd_lncp" id="prd_lncp"
										min="0" value="${product.prd_lncp}" />
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
												name="size250" id="size250" min="0"
												value="${product.size250}" /></td>
											<td><input class="inputStyle2" type="number"
												name="size255" id="size255" min="0"
												value="${product.size255}" /></td>
											<td><input class="inputStyle2" type="number"
												name="size260" id="size260" min="0"
												value="${product.size260}" /></td>
											<td><input class="inputStyle2" type="number"
												name="size265" id="size265" min="0"
												value="${product.size265}" /></td>
											<td><input class="inputStyle2" type="number"
												name="size270" id="size270" min="0"
												value="${product.size270}" /></td>
											<td><input class="inputStyle2" type="number"
												name="size275" id="size275" min="0"
												value="${product.size275}" /></td>
											<td><input class="inputStyle2" type="number"
												name="size280" id="size280" min="0"
												value="${product.size280}" /></td>
											<td><input class="inputStyle2" type="number"
												name="size285" id="size285" min="0"
												value="${product.size285}" /></td>
											<td><input class="inputStyle2" type="number"
												name="size290" id="size290" min="0"
												value="${product.size290}" /></td>
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
										id="uploadFile" /> <input type="hidden" id="prd_img"
										name="prd_img" value="${product.prd_img }" />
									<div class="img_wrap" style="height: 100">
										<img id="img" src="${product.prd_img }"
											style="width: 100px; margin-left: 175px;" />
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<div align="center" class="btn_box" style="margin-top: 50px;">
									<input type="button" value="상품수정" onclick="doUpdateProduct()"
										style="cursor: pointer" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
										type="button" value="상품삭제" onclick="doDeleteProduct()"
										style="cursor: pointer" />
									<!-- <input type="button" value="인풋테스팅" onclick="test()" /> -->
								</div>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<script type="text/javascript">
			var sel_file;

			$(document).ready(function() {
				$("#uploadFile").on("change", handleImgFileSelect);

				$("#prd_brand option").each(function() {
					if ($(this).val() == "${product.prd_brand}") {
						$(this).attr("selected", "selected"); // attr적용안될경우 prop으로 
						categoryChange(this);

						$("#prd_coll option").each(function() {
							if ($(this).val() == "${product.prd_coll}") {
								$(this).attr("selected", "selected"); // attr적용안될경우 prop으로 
							}
						});
					}
				});
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


			function doUpdateProduct() {
				var prd_brand = $("#prd_brand").val();
				var prd_coll = $("#prd_coll").val();
				var prd_id = $("#prd_id").val();
				var prd_name = $("input[name=prd_name]").val();
				var prd_price = $("#prd_price").val();
				var prd_mdlno = $("#prd_mdlno").val();
				var prd_lncd = $("#prd_lncd").val();
				var prd_color = $("#prd_color").val();
				var prd_lncp = $("#prd_lncp").val();
				var prd_img = $("#prd_img").val();
				var size250 = $("#size250").val();
				var size255 = $("#size255").val();
				var size260 = $("#size260").val();
				var size265 = $("#size265").val();
				var size270 = $("#size270").val();
				var size275 = $("#size275").val();
				var size280 = $("#size280").val();
				var size285 = $("#size285").val();
				var size290 = $("#size290").val();


				if (prd_brand == "") {
					alert("브랜드를 선택해 주세요");
				} else if (prd_coll == "") {
					alert("컬렉션을 선택해 주세요");
				} else if (prd_id == "") {
					alert("품번을 입력해 주세요");
				} else if (prd_name == "") {
					alert("품명을 입력해 주세요");
				} else if (prd_price == "") {
					alert("가격을 입력해 주세요");
				} else {
					var formData = new FormData($("#fileForm")[0]);
					$.ajax({
						url : "updateProduct",
						type : "POST",
						processData : false,
						contentType : false,
						data : formData,
						success : function(response) {
							alert("성공하였습니다.");
							console.log(response);
							window.location.href = "productpage?prd_id="
									+ prd_id;
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

				var prd_img = $("#prd_img").val();
				var prd_orid = $("#prd_orid").val();
				alert(uploadFile);

			}

			function doDeleteProduct() {
				var prd_id = $("#prd_id").val();
				var prd_img = $("#prd_img").val();

				var cfrm = confirm("정말 삭제 하시겠습니까?");
				if (cfrm) {
					$.ajax({
						type : "POST",
						url : "deleteProduct",
						data : {
							"prd_id" : prd_id,
							"prd_img" : prd_img
						},
						success : function(data) {
							alert("삭제되었습니다.");
							window.location.href = "main";
						},
						error : function(data) {
							console.log(prd_id);
						}
					});
				}
			}
		</script>
	</section>
</body>
<%@ include file="../include/csinfo.jsp"%>
</html>