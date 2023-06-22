package com.kyung2am.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();

		int tables = Integer.parseInt(request.getParameter("tables"));
		
		out.println("<html><head><title>구구단</title></head><body><ul>");
		for(int i = 1; i <= 9; i++) {
			out.print("<li>" + tables + " X " + i + " = " + (tables*i) + "</li>");
		}
		out.println("</ul></body></html>");
		
	}

}
