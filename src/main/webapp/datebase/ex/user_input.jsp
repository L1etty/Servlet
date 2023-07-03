<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="post" action="/db/user/insert">
	
		<label>이름 : </label><input name="name" type="text"><br>
		<label>생년월일 : </label><input name="yyyymmdd" type="text"><br>
		<label>이메일 : </label><input name="email" type="text"><br>
		<label>자기소개 : </label><br><textarea name="introduce" rows="5" cols="50"></textarea><br>
		
		<button type="submit">추가</button>
	</form>

</body>
</html>