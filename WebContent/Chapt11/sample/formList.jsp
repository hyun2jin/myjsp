<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="Chap11.myBean" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="myBean" class="Chap11.myBean">
	<jsp:setProperty name="myBean" property="*"/>	
</jsp:useBean>

<%
	Object attr = application.getAttribute("list");
	if(attr==null){
		attr = new ArrayList<myBean>();
		application.setAttribute("list", attr);
	}
	List<myBean> list = (List<myBean>)attr;
	list.add(myBean);
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

<form action="" method="post">
name: <input type="text" name="name"/><br />
id : <input type="number" name="id"/><br />
<input type="submit" value="등록"/>
</form>

<h2>등록 정보</h2>
<h3>${param.id}, ${param.name}</h3>


<ul>
<%
	for(int i=0;i<list.size();i++){
		pageContext.setAttribute("i", i);
%>
		<li>${list[i].id}, ${list[i].name}</li>
<% } %>


</ul>

</body>
</html>