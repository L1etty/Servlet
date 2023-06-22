package com.kyung2am.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test04")
public class Test04Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
//		반복문을 이용해서 30개의 리스트를 아래와 같이 출력하세요.
//		WebServlet 어노테이션을 이용해서 URL을 Mapping 하세요.
//		HTML 페이지로 만드세요.
		out.println("<html><head><title>리스트출력</title></head><body><ul>");
		for(int i = 1; i <= 30; i++) {
			out.println("<li>" + i + "번째 리스트" + "</li>");
		}
		out.print("</ul></body></html>");
		
	}

}
