//회원가입시 정규표현식으로 사용자의 입력을 검증
function Check_Signup() {
	var id = document.getElementById("id").value;
	var email = document.getElementById("email").value;
	var password = document.getElementById("password").value;
	var confirmpassword = document.getElementById("confirmpassword").value;
	
	var idReg = /^[a-z0-9]{4,20}$/;
	var pwReg = /(\w)\1\1/;
	var regExpEmail = /^[0-9a-zA-z]([-_\.|?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.|?[0-9a-zA-Z])*\.[a-zA-z]{2,3}$/i;
	
	if (!idReg.test(id)) {
		alert("아이디는  4~20자 영문자 또는 숫자이어야 합니다.");
		return false;
	}

	if (!regExpEmail.test(email)) {
		alert("이메일 입력을 확인해주세요!");
		return false;
	}
	
	if(password.length < 4){
		alert("비밀번호를 4글자 이상으로 ");
		return false;
	}

	if (pwReg.test(password)) {
		alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다");
		return false;
	}

	if (password !== confirmpassword) {
		alert("비밀번호가 다릅니다")
		return false;
	}
	
	return document.signup.submit();
	
}