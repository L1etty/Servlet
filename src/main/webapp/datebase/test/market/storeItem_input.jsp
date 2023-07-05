<%@page import="java.sql.ResultSet"%>
<%@page import="com.kyung2am.common.MysqlService"%>
<%@page import="javax.print.attribute.standard.PrinterMakeAndModel"%>
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
	<section>
		<article>
			<div class="mx-auto form-box">
				<div class="display-4 my-5">물건 올리기</div>
				<form class="form-box" action="/db/market/insert" method="post">
					<div class="form-row justify-content-around">
					
						<div class="form-group col-md-3">
							<select class="form-control" name="id" id="ids"	>
								<option value="default" selected="selected">-아이디 선택-</option>
								<%
									MysqlService mysqlService = MysqlService.getInstance();
									
									mysqlService.connect();
									
									String query = "SELECT * FROM `seller`;";
									
									ResultSet resultSet = mysqlService.select(query);
									
									while(resultSet.next()){
								%>
										<option value="<%=resultSet.getString("id") %>"><%=resultSet.getString("nickname") %></option>
								<%
									}
									
									mysqlService.disconnect();
								%>
							</select>
						</div>
						<div class="form-gorup col-md-5">
							<input type="text" id="title" name="title" class="form-control" placeholder="제목">
						</div>
						
						<div class="form-group col-md-3">
							<div class="input-group">
								<input type="text" name="price" class="form-control" placeholder="가격">
						        <div class="input-group-prepend">
						        	<div class="input-group-text">원</div>
						        </div>
							</div>
						</div>	
					</div>
					
					<div class="form-group">
						<textarea rows="5" name="description" class="form-control" placeholder="내용을 입력하세요..."></textarea>
					</div>
					
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<div class="input-group-text">이미지 url</div>
							</div>
							<input type="text" name="image" class="form-control">
						</div>
					</div>
				
					<button type="submit" id="button" class="btn btn-block bg-gray">저장</button>
				</form>
			</div>
	</section>
	<jsp:include page="footer.jsp"/>
	<jsp:include page="bootstrapJs.jsp"/>
	<script>
		$(document).ready(function(){
			$('#button').click(function(){
				var id = $('#ids').val();
				var title = $('#title').val();
				var price = $('price').val();
				if(id == null || id == "" || id == "defualt"){
					alert("test");
				}
			});
		});
	</script>
</body>
</html>