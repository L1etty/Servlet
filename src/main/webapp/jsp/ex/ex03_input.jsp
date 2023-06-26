<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form method="post" action="/jsp/ex/ex03.jsp">
		<label>닉네임 : </label> <input type="text" name="nickname">
		
		<br>
		
		<h3>강아지 고양이 사자</h3>
		
		<label>강아지 <input type="radio" name="animal"></label>
		<label>고양이 <input type="radio" name="animal"></label>
		<label>사자 <input type="radio" name="animal"></label>
		
		<h3>좋아하는 과일을 선택하세요</h3>
		
		<select>
		
			<option value="banana">
		
		</select>
		
		<button type="submit">전달</button>
	</form>
	
</body>
</html>