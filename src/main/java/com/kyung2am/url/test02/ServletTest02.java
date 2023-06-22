package com.kyung2am.url.test02;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ServletTest02 extends HttpServlet{
	
//	HttpServletRequest request, HttpServletResponse response
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
//		시간 출력
//		현재의 시간을 아래와 같은 형태로 출력하세요.
//		web.xml URL Mapping 후 servlet을 이용해서 출력하세요.
//		Content Type은 text/plain으로 설정하세요.
//		24시간 표현법으로 출력하세요.
		
//		현재 시간은 14시 52분 43초 입니다.
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("HH시 dd분 ss초");
		String formatDate = formatter.format(date);
		
		out.println("현재 시간은 " + formatDate + " 입니다.");
		
		
	}

}
