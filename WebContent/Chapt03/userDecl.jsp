<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int multiply(int a, int b)
	{
		int c = a * b;
		return c;
	}
%>

<%!
	public double multiply1(double a, double b)
	{
		double c= a * b;
		return c;
	}
%>
<%!
	int myField = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=myField++ %>
10*25=<%=multiply(10,5)%> 

</body>
</html>