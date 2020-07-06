<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Chap11.myBean" %>
<%
Object o = request.getAttribute("myBean");
myBean m = (myBean)o;
%>

<h1>${myBean.name }, ${myBean.id}</h1>