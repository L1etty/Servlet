<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
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
	
		int[] scores = {80, 90, 100, 95, 80};
		int avg = 0;
	
		for(int i = 0; i < scores.length; i++){
			avg += scores[i];
		}
		avg = avg / (scores.length + 1);
	
	%>
	
	<h2>점수들의 평균 구하기 : <%=avg %></h2>
	
	<%
		
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
		int score = 0;
	
		for(String i : scoreList){
			if(i.equals("O")){
				score += 10;
			}
		}
	
	%>
	
	<h2>채점 결과 : <%=score %></h2>
	
	
	<%!
		public int getSum(int number){
			int sum = 0;
			for(int i = 1; i <= number; i++){
				sum += i;
			}
			return sum;
		}
	%>
	
	<h2>1부터 n까지의 합계를 구하는 함수 <%= getSum(50) %></h2>
	
	<%! 
		String birthDay = "20010820";
	%>
</body>
</html>