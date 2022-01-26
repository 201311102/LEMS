var checkPWD = false;
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

})

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
			document.getElementById('member_laddr').value = '';
		}
	}).open();
}

// 회원정보 수정
function myinfoUp() {
	var member_id = $("#member_id").val();
	var member_pwd = $("#member_pwd").val();
	var member_email = $("#email_id").val() + "@" + $("#email_addr").val();
	var member_phone = $("#NUMst").val() + "-" + $("#NUMnd").val() + "-"
			+ $("#NUMrd").val();
	var member_zipcode = $("#member_zipcode").val();
	var member_faddr = $("#member_faddr").val();
	var member_laddr = $("#member_laddr").val();
	var myp = $("#myp").val();
	if (checkPWD == false) {
		console.log("비밀번호 다름");
	}
	if (checkPWD == false) {
		alert("필수항목이 비어있습니다. 입력해주세요.");
	} else {
		var cfrm = confirm("정말 수정 하시겠습니까?");
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
					"member_laddr" : member_laddr,
					"myp" : myp
				},
				success : function(data) {
					alert("수정되었습니다.");
					console.log(member_id);
					console.log(myp);
					/*window.location.href = "mypage?member_id=" + member_id
							+ "&myp=" + myp;*/
					location.reload();
				},
				error : function(data) {
					console.log(member_id);
					console.log(myp);
				}
			});
		}
	}
}

function deleteMember() {
	var member_id = $("#member_id").val();

	var cfrm = confirm("정말 탈퇴 하시겠습니까??");
	if (cfrm) {
		$.ajax({
			type : "POST",
			url : "deleteMember",
			data : {
				"member_id" : member_id
			},
			success : function(data) {
				console.log(member_id);
				console.log(myp);
				alert("탈퇴되었습니다. 이용해주셔서 감사합니다.");
				window.location.href = "main";
			},
			error : function(data) {
				console.log(member_id);
				console.log(myp);
			}
		});
	}
}
