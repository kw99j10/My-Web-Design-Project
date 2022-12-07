function CheckAddUser() {

	var userId = document.getElementById("userId");
	var name = document.getElementById("name");
	var old = document.getElementById("old");
	var number = document.getElementById("number");
	
	// 상품 코드 체크
	if (!check(/^T[0-9]{2,11}$/, userId,
			"선수코드의 첫 글자는 반드시 T로 시작해야 합니다!"))
		return false;
	// 선수 이름 체크
	if (name.value.length < 3 || name.value.length > 20) {
		alert("이름의 길이는 3~20자 내외여야 합니다!");
		name.select();
		name.focus();
		return false;
	}
	// 나이 체크
	if (old.value.length == 0 || isNaN(old.value)) {
		alert("숫자만 입력 가능합니다!");
		old.select();
		old.focus();
		return false;
	}

	//등번호 체크
	if (number.value <= 0) {
		alert("등번호는 1번 이상이어야 합니다!");
		number.select();
		number.focus();
		return false;
	}

	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.newUser.submit()
}
