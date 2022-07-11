<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao" %>
<%@ page import="vo.Member" %>
<%
	MemberDao dao = MemberDao.getInstance();
	int custno = Integer.parseInt(request.getParameter("custno"));
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String city = request.getParameter("city");
	
	Member vo = new Member();
	vo.setCustno(custno);
	vo.setPhone(phone);
	vo.setAddress(address);
	vo.setCity(city);
	
	dao.update(vo);
	out.print("<script>alert('회원수정이 완료되었습니다.'); location.href='memberAttributes.jsp';");
	out.print("</script>");
%>