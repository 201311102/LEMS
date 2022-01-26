var checkID = false;
var checkPWD = false;
var checkNAME = false;

$(document).ready(function() {
	$("#checkPasswd").keyup(function() {
		$("#checkPasswd").text("");
	});

	$("#chk_member_pwd").keyup(function() {
		var checkText = $("#checkPasswd");
		if ($("#member_pwd").val() == "" || $("#chk_member_pwd").val() == "") {
			checkText.css("color", "red");
			checkText.text("필수정보입니다.");
			checkPWD = false;
		} else if ($("#member_pwd").val() != $("#chk_member_pwd").val()) {
			checkPWD = false;
			checkText.text("패스워드가 동일하지 않습니다.");
			checkText.css("color", "red");
		} else {
			checkPWD = true;
			checkText.text("패스워드가 동일합니다.");
			checkText.css("color", "green");
		}
	});

	$("#email_select").change(function() {
		if ($("#email_select").val() == "1") {
			$("#email_addr").val("");
			$("#email_addr").prop("disabled", false);
		} else if ($("#email_select").val() == "") {
			$("#email_addr").val("");
			$("#email_addr").prop("disabled", true);
		} else {
			$("#email_addr").val($("#email_select").val());
			$("#email_addr").prop("disabled", true);
		}
	});

	$("#member_name").blur(function() {
		checkName();
	});
})

function doSignup() {
	var member_id = $("#member_id").val();
	var member_pwd = $("#member_pwd").val();
	var member_name = $("#member_name").val();
	var member_email = $("#email_id").val() + "@" + $("#email_addr").val();
	var member_phone = $("#NUMst").val() + "-" + $("#NUMnd").val() + "-"
			+ $("#NUMrd").val();
	var phone1 = $("#NUMst").val();
	var phone2 = $("#NUMnd").val();
	var phone3 = $("#NUMrd").val();
	var member_zipcode = $("#member_zipcode").val();
	var member_faddr = $("#member_faddr").val();
	var member_laddr = $("#member_laddr").val();
	if (checkID == false) {
		console.log("아이디 중복검사 안함");
	}
	if (checkPWD == false) {
		console.log("비밀번호 다름");
	}
	if (checkNAME == false) {
		console.log("이름이 비어있음");
	}
	if (checkID == false) {
		alert("아이디 중복검사를 해주세요.");
	} else if (checkPWD == false) {
		alert("비밀번호가 다릅니다.");
	} else if (checkNAME == false) {
		alert("이름을 입력해주세요");
	} else if (phone1 == "" || phone2 == "" || phone3 == "") {
		alert("연락처를 입력해주세요");
	} else if (member_zipcode == "" || member_faddr == "" || member_laddr == "") {
		alert("주소를 입력해주세요");
	} else {
		$.ajax({
			type : "POST",
			url : "join",
			data : {
				"member_id" : member_id,
				"member_pwd" : member_pwd,
				"member_name" : member_name,
				"member_email" : member_email,
				"member_phone" : member_phone,
				"member_zipcode" : member_zipcode,
				"member_faddr" : member_faddr,
				"member_laddr" : member_laddr
			},
			success : function(data) {
				alert("회원가입에 성공했습니다.")
				window.location.href = "login";
			},
			error : function(data) {
				console.log(member_id);
				console.log(myp);
			}
		});
	}
}

function idChk() {
	var member_id = $("#member_id").val();
	var oMsg = $("#idchk");
	if (!member_id) {
		alert("아이디를 입력해주세요.");
	} else {
		$.ajax({
			type : "POST",
			url : "checkID",
			data : {
				"member_id" : member_id
			},
			success : function(data) {
				if (data == 0) {
					$("#member_id").attr("disabled", true);
					oMsg.css("color", "green");
					oMsg.text("사용 가능한 아이디입니다.");
					checkID = true;
				} else if (data != 0) {
					$("#idchk").css("color", "red");
					$("#idchk").text("이미 존재하는 아이디입니다.");
					checkID = false;
				} else {
					console.log('ERROR');
				}
			},
			error : function(error) {
				alert(member_id);
			}
		});
	}
}

function checkName() {
	var oMsg = $("#chkname");
	var nonchar = /[^가-힣a-zA-Z0-9]/gi;

	var name = $("#member_name").val();
	if (name == "") {
		oMsg.css("color", "red");
		oMsg.text("필수정보입니다.");
		return false;
	}

	if (name != "" && nonchar.test(name)) {
		oMsg.css("color", "red");
		oMsg.text("한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)");
		return false;
	}
	checkNAME = true;
	oMsg.text("유효한 이름입니다.");
	oMsg.css("color", "green");
	return true;
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
			document.getElementById('member_zipcode').value = data.zonecode;
			document.getElementById('member_faddr').value = fullAddr;
			document.getElementById('member_laddr').focus();
		}
	}).open();
}