<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao" %>
<%@ page import="vo.Member" %>
<%@ page import="java.util.List" %>
<%
	MemberDao dao = MemberDao.getInstance();
	String no = request.getParameter("custno");
	int custno = 0;
	
	try {
		custno = Integer.parseInt(no);
		Member vo = dao.selectOne(custno);
		if (vo != null) {
			request.setAttribute("vo", vo);
			pageContext.forward("update.jsp");
		} else {
			out.print("<script>alert('존재하지 않는 회원입니다.'); location.href='memberAttributes.jsp';");
			out.print("</script>");
		}
		
	} catch (NumberFormatException e) {
			out.print("<script>alert('잘못된 검색입니다.'); location.href='memberAttributes.jsp';");
			out.print("</script>");
	}

%>