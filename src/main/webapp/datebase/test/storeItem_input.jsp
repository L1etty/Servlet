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
				<div>hi</div>
				<form class="form-box" action="">
					<div class="form-row justify-content-between">
						<div class="form-group col-md-2">
							<select class="form-control">hi</select>
						</div>
						<div class="form-gorup col-md-6">
							<input type="text" class="form-control" placeholder="test">
						</div>
						<div class="form-group col-md-2">
							<div class="input-group">
								<input type="text" class="form-control">
						        <div class="input-group-prepend">
						        	<div class="input-group-text">원</div>
						        </div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</article>
	</section>
	<jsp:include page="footer.jsp"/>
	<jsp:include page="bootstrapJs.jsp"/>
</body>
</html>