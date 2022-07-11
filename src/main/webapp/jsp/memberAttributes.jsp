<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao" %>
<%@ page import="vo.Member" %>
<%@ page import="java.util.List" %>
<%
	MemberDao dao = MemberDao.getInstance();
	List<Member> list = dao.selectAll();	

	request.setAttribute("list", list);
	pageContext.forward("memberList.jsp");
%>