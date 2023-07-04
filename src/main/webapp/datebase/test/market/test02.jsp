<%@page import="java.sql.ResultSet"%>
<%@page import="com.kyung2am.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="bootstrapCss.jsp"/>
</head>
<body>
		<jsp:include page="header.jsp"/>
		<jsp:include page="menu.jsp"/>
		<section class="main-content mt-4">
		<article>
			<div class="row row-cols-1 row-cols-md-3 mx-n1"> <!-- 마진 X 네거티브 스페이스 -->
				<% 
				
					MysqlService mysqlService = MysqlService.getInstance();
				
					mysqlService.connect();
					
					String query = "SELECT * FROM `used_goods`" +
							"JOIN `seller`" +
							"ON used_goods.sellerId = seller.id;";
					
					ResultSet resultSet = mysqlService.select(query);
					
					while(resultSet.next()){
						String title = resultSet.getString("title");
						String price = resultSet.getString("price");
						String img = resultSet.getString("image");
						String nickname = resultSet.getString("nickname");
						if(img == null){
							img = "<div class=\"card-img-top storeitemimage overflow-hidden d-flex justify-content-center align-items-center\">이미지 없음</div>";
						}else{
							img = "<img class=\"card-img-top card-img-size\" src=\""+ img + "\" alt=\"사진\">";
						}
						
				%>
			  <div class="col mb-2 px-1"> <!-- 페딩 x 1씩 늘려서 카드 크기 키움 -->
			    <div class="card border-carrot p-3">
			    <div class="storeitemimage overflow-hidden">
			    	<%=img %>
			    </div>
			      <div class="card-body">
			        <h5 class="card-title"><%=title %></h5>
			        <p class="card-subtitle"><%=price %>원</p>
			        <p class="card-text text-carrot"><%=nickname %></p>
			      </div>
			    </div>
			  </div>	
						<%
					}
					
				%>
			</div>
		</section>
		<jsp:include page="footer.jsp"/>
	<jsp:include page="bootstrapJs.jsp"/>
	</body>
</html>