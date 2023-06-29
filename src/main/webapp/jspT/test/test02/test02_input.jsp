<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	<div id="warp">
		<%@ include file="list.jsp" %>
		<jsp:include page="header.jsp"/>
		<jsp:include page="menu.jsp"/>
		<section class="main-contents">
		
			<article class="main-content border border-success d-flex" >
				<img class="m-3" width="15%" alt="<%=artistInfo.get("name") %> 프로필 사진" src="<%=artistInfo.get("photo")%>">
				<div class="mt-3">
					<h2><%=artistInfo.get("name") %></h2>
					<p><%=artistInfo.get("agency") %></p>
					<p><%=artistInfo.get("debute") %> 데뷔</p>
				</div>
			</article>
		
			<article class="sub-content mt-3">
				<h2>곡 목록</h2>
				<table class="table text-center">
					<thead>
						<tr>
							<th class="col-2">no</th>
							<th class="col-5">제목</th>
							<th class="col-5">앨범</th>
						</tr>
					</thead>
					<tbody>
						<%
						
						
							for(Map<String, Object> musics : musicList){
								if(!musics.get("singer").equals("아이유")){
									continue;
								}
						%>
							<tr>
								<td><%=musics.get("id") %></td>
								<td><a href="/jspT/test/test02/test02.jsp?id=<%=musics.get("id")%>"><%=musics.get("title") %></a></td>
								<td><%=musics.get("album") %></td>
							</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</article>
		
		</section>
		<jsp:include page="footer.jsp"/>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>