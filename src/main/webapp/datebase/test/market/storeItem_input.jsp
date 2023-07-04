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
				<form class="form-box" action="">
					<div class="form-row justify-content-around">
					
						<div class="form-group col-md-3">
							<select class="form-control">
								<option selected="selected">-아이디 선택-</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</select>
						</div>
						<div class="form-gorup col-md-5">
							<input type="text" class="form-control" placeholder="제목">
						</div>
						
						<div class="form-group col-md-3">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="가격">
						        <div class="input-group-prepend">
						        	<div class="input-group-text">원</div>
						        </div>
							</div>
						</div>	
					</div>
					
					<div class="form-group">
						<textarea rows="5" class="form-control" placeholder="내용을 입력하세요..."></textarea>
					</div>
					
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<div class="input-group-text">이미지 url</div>
							</div>
							<input type="text" class="form-control">
						</div>
					</div>
				
					<button class="btn btn-block bg-gray">저장</button>
				</form>
			</div>
		</article>
	</section>
	<jsp:include page="footer.jsp"/>
	<jsp:include page="bootstrapJs.jsp"/>
</body>
</html>