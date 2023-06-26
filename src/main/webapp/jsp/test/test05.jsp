<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
		
		
		List<String> value = new ArrayList<String>();
	
		int cm = Integer.parseInt(request.getParameter("cm"));
	
		if(request.getParameter("inch") != null){
			value.add((double)cm / 2.54 + "in");
		}
		if(request.getParameter("yard") != null){
			value.add((double)cm / 91.44 + "yard");
		}
		if(request.getParameter("feet") != null){
			value.add((double)cm / 30.48 + "feet");
		}
		if(request.getParameter("meter") != null){
			value.add((double)cm / 100 + "meter");
		}
	
	%>


	<%!
	
		public String getValueString(List<String> value){
			
			String test = "";
		
			for(int i = 0; i < value.size(); i++){
				test = test + value.get(i) + "<br>";
			}
	
			return test;
		}
	
	%>
	
	<p><%=getValueString(value) %></p>

</body>
</html>