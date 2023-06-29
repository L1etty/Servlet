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
			<%
				for(Map<String, Object> musics : musicList){
					
					if(request.getParameter("id") != null){
						if(!((Integer)musics.get("id") == Integer.parseInt(request.getParameter("id")))){
							continue;
						}
					}
					
				    String searchParam = request.getParameter("search");
				    if (searchParam != null) {
				        int searchId = 0;
				        for (Map<String, Object> item : musicList) {
				            if (((String)item.get("title")).equals(searchParam)) {
				                searchId = (Integer)item.get("id");
				            }
				        }
				        if (((Integer)musics.get("id")) != searchId) {
				            continue;
				        }
				    }
					
			%>
					<img class="m-3" width="15%" alt="<%=musics.get("title") %> 앨범 사진" src="<%=musics.get("thumbnail")%>">	
					<div>
						<div class="musictitle text-dark"><%=musics.get("title") %></div>
						<div class="text-success font-weight-bold my-1"><%=musics.get("singer") %></div>
						<div><small>앨범 <%=musics.get("album") %></small></div>
						<% 
						int time = (int)musics.get("time"); 
						%>
						<div><small>재생시간 <%=time/60%> : <%=time%60 %></small></div>
						<div><small>작곡가 <%=musics.get("composer") %></small></div>
						<div><small>작사가 <%=musics.get("lyricist") %></small></div>
					</div>
			<%
				}
			%>
					
				</article>
			
				<article class="sub-content mt-3">
					<h2>곡 목록</h2>
					<table class="table text-center">
						<thead>
						</thead>
						<tbody>
							<tr><td class="text-left">가사정보없음.</td></tr>
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