<%@page import="java.sql.ResultSet"%>
<%@page import="com.kyung2am.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 목록</title>
</head>
<body>
	
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String query = "SELECT * FROM `new_user`;";
		ResultSet resultSet = mysqlService.select(query);
		
	%>
	
	<h2>사용자 목록</h2>
	
	<table border="1">
		<thead>
			<tr>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<%
			
				while(resultSet.next()){
					String name = resultSet.getString("name");
					String yyyymmdd = resultSet.getString("yyyymmdd");
					String email = resultSet.getString("email");
					
					%>
						<tr>
							<td><%=name %></td>
							<td><%=yyyymmdd %></td>
							<td><%=email %></td>
							<td><a href="/db/user/delete?id=<%=resultSet.getString("id")%>">삭제</a></td>
						</tr>
					<%
					
				}
			
			%>
		</tbody>
	</table>
	
	<br>
	<a href="/datebase/ex/user_input.jsp">추가하기</a>
	
</body>
</html>