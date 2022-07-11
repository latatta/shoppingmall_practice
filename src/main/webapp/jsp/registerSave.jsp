<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao" %>
<%@ page import="vo.Member" %>
<%
	MemberDao dao = MemberDao.getInstance();
	int custno = Integer.parseInt(request.getParameter("custno"));
	String custname = request.getParameter("custname");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
	
	Member vo = new Member(custno, custname, phone, address, null, grade, city);
	dao.insert(vo);
	out.print("<script>alert('회원가입이 완료되었습니다.'); location.href='memberAttributes.jsp';");
	out.print("</script>");
%>