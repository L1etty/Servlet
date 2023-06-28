<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>

	<%
	
	Date now = new Date();
	SimpleDateFormat formetter = new SimpleDateFormat("h시 m분 s초");
	
	%>
	
	현재시간 : <%= formetter.format(now) %>


</div>