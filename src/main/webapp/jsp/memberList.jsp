<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vo.Member" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록조회/수정</title>
</head>
<body>
	<%@ include file="topMenu.jsp"%>
	<%
	Object temp = request.getAttribute("list");
	List<Member> list = (List<Member>) temp;
	%>
	<h2>회원목록조회/수정</h2>
	<table>
		<tr>
			<th>회원번호(자동발생)</th>
			<th>회원성명</th>
			<th>회원전화</th>
			<th>회원주소</th>
			<th>가입일자</th>
			<th>고객등급[A:VIP, B:일반, C:직원]</th>
			<th>도시코드</th>
		</tr>
		<%
		for (int i = 0; i < list.size(); i++) {
		%>
		<tr>
			<td><a href="updateAttributes.jsp?custno=<%=list.get(i).getCustno() %>"><%=list.get(i).getCustno() %></a></td>
			<td><%=list.get(i).getCustname() %></td>
			<td><%=list.get(i).getPhone() %></td>
			<td><%=list.get(i).getAddress() %></td>
			<td><%=list.get(i).getJoindate() %></td>
			<td><%=list.get(i).getGrade() %></td>
			<td><%=list.get(i).getCity() %></td>
		</tr>
		<%
		}
		%>
	</table>
	<footer> HrdKorea Copyrightⓒ2016 All rights reserved. Human
		Resources Development Service of Korea. </footer>

</body>
</html>