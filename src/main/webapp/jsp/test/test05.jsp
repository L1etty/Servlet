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
	
		String[] units = request.getParameterValues("unit");
	
		//double cm = Double.parseDouble(request.getParameter("cm"));

		int cm = Integer.parseInt(request.getParameter("cm"));

	
	%>
	
	<%!
	
		public String getValueString(String[] units, int cm){
			
			String unitString = "";
			
			for(String i : units){
				switch(i){
					case "inch":
						unitString = unitString + ((double)cm / 2.54) + " " + i + "<br>";
						break;
					case "yard":
						unitString = unitString + ((double)cm / 91.44) + " " + i + "<br>";
						break;
					case "feet":
						unitString = unitString + ((double)cm / 30.48) + " " + i + "<br>";
						break;
					case "meter":
						unitString = unitString + ((double)cm / 100) + " " + i + "<br>";
						break;
					default:
						unitString = "cm를 입력해주세요.";
				}
			}
	
			return unitString;
		}
	
	%>
	<h1>변환 결과</h1>
	<h2><%=cm %>cm</h2>
	<hr>
	<h2><%=getValueString(units,cm) %></h2>

</body>
</html>