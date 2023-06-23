package com.kyung2am.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test/test09")
public class Test09Controller extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name = requset.getParameter("name");
		String introduce = requset.getParameter("introduce");
		
//		입사 지원
//		이름과 자기소개서를 입력 받아서 submit 할 수 있는 html 문서를 작성하세요.
//		자기소개서 입력은 textarea 태그를 이용하세요.
		
		out.println("<html><head><title>입사지원서</title></head><body>");
		
		if(name.length() == 0 || name == null) {
			out.println("<h2>이름 없음</h2></body></html>");
			return;
		}
		if(introduce.length() == 0 || introduce == null) {
			out.println("<h2>자기소개 비어있음</h2></body></html>");
			return;
		}
		out.println("<h2>" + name + "님 지원이 완료 되었습니다.</h2><hr><p>지원내용<br>" + introduce  + "</p></body></html>");
		
	}

}
