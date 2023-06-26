<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<%
	
		int firstValue = Integer.parseInt(request.getParameter("firstValue"));
		int secondValue = Integer.parseInt(request.getParameter("secondValue"));
		String operator = request.getParameter("operator");
	
	%>
	
	<%!
	
		public double getCalculate(int firstValue, int secondValue, String operator){
		
			switch(operator){
				case "+" :
					return (double)firstValue + secondValue;
				case "-" :
					return (double)firstValue - secondValue;
				case "X" :
					return (double)firstValue * secondValue;
				case "/" :
					return (double)firstValue / secondValue;
			}
			return 0;
		}
	
	%>
	<h3>계산결과</h2>
	<h1><%=firstValue %> <%=operator %> <%=secondValue %> = <span class="text-primary"><%=getCalculate(firstValue, secondValue, operator) %><span></h1>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>