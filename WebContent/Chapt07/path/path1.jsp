<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1>path1 jsp</h1>

<h1>path1 jsp</h1>
<a href="path2.jsp">path2</a>
<a href="sub/sub1.jsp">sub1</a>
<a href="<%=request.getContextPath() %>/Chap07/path/path2.jsp">path2 abs</a>
<a href="<%=request.getContextPath() %>/WEB-INF/webinf.jsp">path2 aaaa</a>

<jsp:include page="/WEB-INF/webinf.jsp"></jsp:include>

<jsp:include page="path2.jsp"></jsp:include>
<jsp:include page="sub/sub1.jsp"></jsp:include>

</body>
</html>