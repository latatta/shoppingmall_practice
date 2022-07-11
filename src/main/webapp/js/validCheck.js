function validCheck() {
	const frm = document.forms[0];
	const namef = frm.custname;
	const phonef = frm.phone;
	const addressf = frm.address;
	const gradef = frm.grade;
	const grades = ['A', 'B', 'C'];
	const cityf = frm.city;
	
	let isValid = true;
	
	if (namef.value == "") {
		alert('회원성명이 입력되지 않았습니다.');
		namef.focus();
		isValid = false;
		
	} else if (phonef.value == "") {
		alert('회원전화가 입력되지 않았습니다.');
		phonef.focus();
		isValid = false;
		
	} else if (phonef.value.length > 13) {
		alert('전화번호는 최대 13자리 숫자입니다.');
		phonef.focus();
		isValid = false;
		
	} else if (addressf.value == "") {
		alert('주소가 입력되지 않았습니다.');
		addressf.focus();
		isValid = false;
		
	} else if (gradef.value == "") {
		alert('고객등급이 입력되지 않았습니다.');
		gradef.focus();
		isValid = false;
	
	} else if (grades.indexOf(gradef.value) == -1) {
		alert('고객등급은 A, B, C 중에서 하나만 입력하세요.');
		alert(gradef.value);
		gradef.focus();
		isValid = false;
	
	} else if (cityf.value == "") {
		alert('도시코드가 입력되지 않았습니다.');
		cityf.focus();
		isValid = false;
		
	} else if (cityf.value.length != 2) {
		alert('도시코드는 2자리 숫자입니다.');
		cityf.focus();
		isValid = false;
		
	} else {
		let cnt = 0;
		cityf.value.split('').forEach(function (value) {
			if (!(value >= '0' && value <= '9')) {
				cnt++;
				isValid = false;
			}
		})
		if (cnt > 0) {
			alert('도시코드는 숫자만 입력하세요.');
			cityf.focus();
		}
	}
	
	return isValid;
}