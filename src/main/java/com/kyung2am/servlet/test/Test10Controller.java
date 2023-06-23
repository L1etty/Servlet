package com.kyung2am.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test/test10")
public class Test10Controller extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = requset.getParameter("id");
		String pw = requset.getParameter("pw");
		

		out.println("<html><head><title>입사지원서</title></head><body>");
		
		if(id.length() == 0 || id == null) {
			out.println("<h2>아이디를 입력하세요.</h2></body></html>");
			return;
		}
		if(pw.length() == 0 || pw == null) {
			out.println("<h2>패스워드를 입력하세요.</h2></body></html>");
			return;
		}
		
		if(!(userMap.get("id").equals(id))){
			out.println("<h2>id가 일치하지 않습니다.</h2></body></html>");
			return;
		}

		if(!(userMap.get("password").equals(pw))){
			out.println("<h2>password가 일치하지 않습니다.</h2></body></html>");
			return;
		}
		
		out.println("<h2>" + userMap.get("name") + "님 환영합니다.</h2></body></html>");
		
	}
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};
	

}
