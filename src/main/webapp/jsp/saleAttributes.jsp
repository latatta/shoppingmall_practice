<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.SaleDao"%>
<%@ page import="vo.Sale"%>
<%@ page import="java.util.List"%>
<%
SaleDao dao = SaleDao.getInstance();
List<Sale> list = dao.selectSale();

request.setAttribute("list", list);
pageContext.forward("saleList.jsp");
%>