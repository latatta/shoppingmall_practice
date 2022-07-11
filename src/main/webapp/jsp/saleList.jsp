<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vo.Sale" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원매출조회</title>
</head>
<body>
	<%@ include file="topMenu.jsp"%>
	<%
	Object temp = request.getAttribute("list");
	List<Sale> list = (List<Sale>) temp;
	%>
	<h2>회원매출조회</h2>
	<table>
		<tr>
			<th>회원번호(자동발생)</th>
			<th>회원성명</th>
			<th>고객등급[A:VIP, B:일반, C:직원]</th>
			<th>매출</th>
		</tr>
		<%
		for (int i = 0; i < list.size(); i++) {
		%>
		<tr>
			<td><%=list.get(i).getCustno() %></td>
			<td><%=list.get(i).getCustname() %></td>
			<td><%=list.get(i).getGrade() %></td>
			<td><%=list.get(i).getSum() %></td>
		</tr>
		<%
		}
		%>
	</table>
	<footer> HrdKorea Copyrightⓒ2016 All rights reserved. Human
		Resources Development Service of Korea. </footer>

</body>
</html>