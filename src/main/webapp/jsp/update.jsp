<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao"%>
<%@ page import="vo.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈쇼핑 회원 정보 수정</title>
<script type="text/javascript" src="../js/validCheck.js"></script>
<script type="text/javascript">
	function isSubmit() {
		const frm = document.forms[0];
		if (validCheck()) {
			frm.submit();
		}
	}
</script>
</head>
<body>
	<%@ include file="topMenu.jsp"%>
	<h2>홈쇼핑 회원 정보 수정</h2>
	<form action="updateSave.jsp" method="post">
		<table>
			<tr>
				<th>회원번호(자동발생)</th>
				<td><input type="text" disabled value="${vo.custno }"> <input
					type="hidden" name="custno" value="${vo.custno }"></td>
			</tr>
			<tr>
				<th>회원성명</th>
				<td><input type="text" name="custname" disabled value="${vo.custname}" ></td>
			</tr>
			<tr>
				<th>회원전화</th>
				<td><input type="text" name="phone" value="${vo.phone }"></td>
			</tr>
			<tr>
				<th>회원주소</th>
				<td><input type="text" name="address" value="${vo.address }"></td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td><input type="text" name="joindate" disabled value="${vo.joindate }"></td>
			</tr>
			<tr>
				<th>고객등급[A:VIP, B:일반, C:직원]</th>
				<td><input type="text" name="grade" value="${vo.grade }" disabled></td>
			</tr>
			<tr>
				<th>도시코드</th>
				<td><input type="text" name="city" value="${vo.city }"></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="button" onclick="isSubmit()">등록</button>
					<button type="button"
						onclick="location.href='memberAttributes.jsp'">조회</button>
				</td>
			</tr>
		</table>
	</form>
	<footer> HrdKorea Copyrightⓒ2016 All rights reserved. Human
		Resources Development Service of Korea. </footer>

</body>
<script type="text/javascript">
	const jdinput = document.forms[0].joindate;
	const today = new Date();
	const year = today.getFullYear();
	const month = (today.getMonth() + 1).toString().padStart(2, 0);
	const date = today.getDate().toString().padStart(2, 0);
	jdinput.value = [ year, month, date ].join('');
</script>
</html>