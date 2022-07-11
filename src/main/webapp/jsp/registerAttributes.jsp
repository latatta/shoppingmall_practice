<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao" %>
<%@ page import="vo.Member" %>
<%
	MemberDao dao = MemberDao.getInstance();
	int nextSeq = dao.nextSeq();
	
	request.setAttribute("nextSeq", nextSeq);
	pageContext.forward("register.jsp");
%>