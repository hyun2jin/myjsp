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


<h1><%=request.getParameter("dan") %>단</h1>


<%
	int value = Integer.parseInt(request.getParameter("dan"));
	
	for(int i=1;i<=9;i++){
		
	%>
	<!-- <h3></h3><br> -->
	
	<%=value %>
	<i class="fas fa-times"></i>
	<%=i%>
	<i class="fas fa-equals"></i>
	<%=value*i%>
	
	
	
	
	
	<%		
	}
	
%>


</body>
</html>