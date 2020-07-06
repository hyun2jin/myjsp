<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<jsp:useBean id="myBean" class="Chap08.MyBean" scope="request"></jsp:useBean>

<%
Chap08.MyBean myBean1 = (Chap08.MyBean) request.getAttribute("myBean");
if(myBean1 == null){
	myBean1 = new Chap08.MyBean();
	request.setAttribute("myBean", myBean1);
}
%>
    
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

<p>
<%=((Chap08.MyBean)request.getAttribute("myBean")).getName()%>
</p>


<p>
<%=((Chap08.MyBean)request.getAttribute("myBean")).getId() %>
</p>

</body>
</html>