<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<header class="d-flex align-items-center">
			<h2><a class="text-success" href="/jspT/test/test02/test02_input.jsp">Melong</a></h2>
			<form method="get" action="/jspT/test/test02/test02.jsp" class="col-4 ml-5">			
				<div class="input-group">
					<input type="text" class="form-control" name="search">
					<div class="input-group-append">
						<button type="submit" class="btn btn-info">버튼</button>
					</div>
				</div>
			</form>
		</header>