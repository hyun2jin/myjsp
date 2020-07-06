<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String code = request.getParameter("code");
	String viewPageURL = null;
	
	if(code.equals("A")) {
		viewPageURL = "a.jsp";		
	} if(code.equals("B")) {
		viewPageURL = "b.jsp";		
	} if(code.equals("C")) {
		viewPageURL = "c.jsp";	
	}
%>
<jsp:forward page="<%= viewPageURL%>" />
