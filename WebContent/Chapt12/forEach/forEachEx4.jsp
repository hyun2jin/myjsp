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

<table class="table">

<tr>
	<th>index</th>
	<th>count</th>
	<th>item</th>
</tr>
</table>


<%--
	forEach의 varStatus속성
	(javax.servlet.jsp.jstl.core.LoopTagStatus)
 --%>
 
 <%
 String[] arr = { "java", "script", "css", "python", "matrix", "c++" };
 request.setAttribute("list", arr); 
 %>
 
 <c:forEach items="${list }" var="item" varStatus="status">
 <tr>
 	<td>${status.index}</td>
 	<td>${status.count}</td>
 	<td>${item}</td>
 </tr> 
 </c:forEach>


</body>
</html>
