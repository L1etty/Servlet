<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime" %>
<%@page import="java.time.format.DateTimeFormatter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	#format{
		
		font-size: 100px;
		text-align: center;
		font-weight: lighter;
	}

</style>
</head>
<body>
	
	<%
		
		String format = request.getParameter("format");
	
	%>	
	
	<%!
	
		public String getFormat(String format){
			if(format.equals("date")){
				LocalDate nowDate = LocalDate.now();
				DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy년 M월 d일");
				String formatDateNow = dateFormatter.format(nowDate);
				return "오늘 날짜 " + formatDateNow;
			}
			LocalTime nowTime = LocalTime.now();
			DateTimeFormatter timeformatter = DateTimeFormatter.ofPattern("HH시 mm분 ss초");
			String formatTimeNow = timeformatter.format(nowTime);
			return "현재 시간 " + formatTimeNow;
		}
	
	%>
	
	<p id="format"><%=getFormat(format)%></p>

</body>
</html>