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

	<h1>길이 변환</h1>
	
	<form style="width: 250px" method="get" action="/jsp/test/test05.jsp">
		<div class="form-inline">
			<input type="text" class="form-control col-sm-10" name="cm"><label class="col-sm-2 mt-3">cm</label>
		</div>
		<div class="form-group d-flex justify-content-between mx-0 mb-0">
			<label>인치<input type="checkbox" class="ml-1" name="unit" value="inch"></label>
			<label>야드<input type="checkbox" class="ml-1" name="unit" value="yard"></label>
			<label>피트<input type="checkbox" class="ml-1" name="unit" value="feet"></label>
			<label>미터<input type="checkbox" class="ml-1" name="unit" value="meter"></label>
		</div>
		<button class="btn btn-success" type="submit">변환</button>
	</form>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</body>
</html>