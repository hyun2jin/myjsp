<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<%--
<c:forEach>

</c:forEach>
 --%>
 
 <c:forEach var="i" begin="1" end="3">
 	${i} <br /> 
 </c:forEach>
 
 <c:forEach var="i" begin="1" end="10" step="2">
 	${i} <br /> 
 </c:forEach>
 
 <%
 	String[] arr = {"java", "html", "css", "jquery", "bootstrap" };
 	request.setAttribute("list", arr); 	
 %>
 
 <c:forEach items="${list}" var="item">
 	${item} <br /> 
 </c:forEach>
 
 <c:forEach var="item" items="${list}" begin="1" end="3">
 	${item} <br />
 </c:forEach>
 
 <c:forEach var="item" items="${list}" step="2">
 	${item} <br />
 </c:forEach>


</body>
</html>