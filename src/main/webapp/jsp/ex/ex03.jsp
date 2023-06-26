<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	
		String nickname = request.getParameter("nickname");
	
		String[] foodArray = request.getParameterValues("food");
		
		String foodString = "";
		for(int i = 0; i < foodArray.length; i++) {
			foodString = foodString + foodArray[i] ;
		}
	%>
	
	<h2><%=nickname %></h2>
	
</body>
</html>