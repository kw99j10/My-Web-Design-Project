function checkForm(){
		
	var id = document.getElementById("id");
	var password = document.getElementById("password");
	var name = document.getElementById("name");	
		
	if (!check(/^[a-z|A-z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/, id,"아이디는 문자로 시작해주세요."))
		return false;
		
	if (!check(/^[0-9]+$/, password,"비밀번호는 숫자만 입력해주세요."))
		return false;
		
	if (!check(/^[가-힣]+$/, name,"이름은 한글만 입력해주세요."))
		return false;

	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	
	document.newMember.submit()
}