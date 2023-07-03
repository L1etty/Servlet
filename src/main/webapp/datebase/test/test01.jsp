<%@page import="java.sql.ResultSet"%>
<%@page import="com.kyung2am.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table text-center">
	
		<thaed>
			<tr>
				<th scope="col">사이트</th>
				<th scope="col">사이트 주소</th>
				<th scope="col" class="col-1">삭제</th>
			</tr>
		</thaed>
		<tbody>
			<%
				MysqlService mysqlService = MysqlService.getInstance();
				mysqlService.connect();
				
				String query = "SELECT * FROM `favorites`;";
				
				ResultSet resultSet = mysqlService.select(query);
				
				while(resultSet.next()){
					String name = resultSet.getString("name");
					String url = resultSet.getString("url");
					String id = resultSet.getString("id");
			%>
					<tr>
						<td><%=name %></td>
						<td><a href="<%=url %>"><%=url %></a></td>
						<td><a href="/db/favorites/delete?id=<%=id%>">삭제</a></td>
					</tr>
			<%
				}
				
			%>
		</tbody>
	</table>
	
		<a href="/datebase/test/favorites_input.jsp">추가</a>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>