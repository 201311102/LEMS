/**
 * 로그인
 */
function memberCheck() {
	var member_id = $("#member_id").val();
	var member_pwd = $("#member_pwd").val();
	if (!member_id || !member_pwd) {
		alert("아이디 혹은 패스워드를 입력해주세요.");
	} else {
		$.ajax({
			type : "POST",
			url : "checkMember",
			data : {
				"member_id" : member_id,
				"member_pwd" : member_pwd
			},
			success : function(data) {
				if (data != 0) {
					$.ajax({
						type : "POST",
						url : "login",
						data : {
							"member_id" : member_id,
							"member_pwd" : member_pwd
						},
						success : function() {
							window.location.href = "main";
						}
					});
				} else {
					alert("아이디 혹은 패스워드를 확인해주세요.");
				}
			},
			error : function(data) {
				console.log(data);
			}
		});
	}
}

function productCart() {
	var member_id = $("#member_id").val();
	document.frm.method = "POST";
	document.frm.action = "productCart";
	document.frm.submit();
}

function forgotPWView() {
	window.location.href = "forgotPW";
}

function forgotPW() {
	var member_id = $("#member_id").val();
	var member_name = $("#member_name").val();
	$.ajax({
		type : "POST",
		url : "forgotPWChkm",
		data : {
			"member_id" : member_id,
			"member_name" : member_name
		},
		success : function(data) {
			if (data != 0) {
				$.ajax({
					type : "POST",
					url : "forgotPW",
					data : {
						"member_id" : member_id,
						"member_name" : member_name
					},
					success : function() {
						alert("임시 비밀번호가 발급되었습니다. 회원정보를 수정해 주십시오.");
						window.location.href = "login";
					}
				});
			} else {
				alert("존재하는 회원이 없습니다.");
			}
		}
	});
}

function logout() {
	$.ajax({
		type : "GET",
		url : "logout",
		data : {},
		success : function(data) {
			swal("로그아웃", "완료", "success");
			location.href = "main";
		}
	});
}