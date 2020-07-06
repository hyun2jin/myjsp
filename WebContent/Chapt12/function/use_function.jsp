<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
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

<c:set var="str1" value="Functions <태그>를 사용합니다" />
<c:set var="str2" value="사용" />
<c:set var="tokens" value="1,2,3,4,5,6,7,8,9,10" />

length(str1) = ${fn:length(str1)} <br />
toUpperCase(str1) = "${fn:toUpperCase(str1)}" <br /> 
toLowerCase(str1) = "${fn:toLowerCase(str1)}" <br />

substring(str1, 3, 6) = "${fn:substring(str1,3,6)}" <br />
substringAfter(str1, str2) = "${fn:substringAfter(str1, str2)}" <br />
substringBefore(str1, str2) = "${fn:substringBefore(str1, str2)}" <br />
trim(str1) = "${fn:trim(str1) }" <br />
replace(str1, src, dest) = ${fn:replace(str1, src, dest) }" <br />
indexOf(str1, str2) = ${fn:indexOf(str1, str2) }" <br />
startsWith(str1, str2) = ${fn:startsWith(str1, str2) }" <br />
endsWith(str1, str2) = ${fn:endsWith(str1, str2) }" <br />
contains(str1, str2) = ${fn:contains(str1, str2) }" <br />
containsIgnoreCase(str1, str2) = "${fn:containsIgnoreCase(str1, str2)}" <br />

<c:set var="array" value="${fn:split(tokens,',')}" /> 

join(array,"-") = ${fn:join(array,"-") } <br />
escapeXml(str1) = ${fn:escapeXml(str1) }" <br />






</body>
</html>