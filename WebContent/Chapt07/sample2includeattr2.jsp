<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Chap05.User" %>
<%
	User user = (User)request.getAttribute("user");
	
	out.print(user.getName()+","+user.getAge());

%>