package com.kyung2am.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();

		
		// 이름과 생년월일을 전달 받고, 이름과 나이를 표로 만들어 준다.
		String name = requset.getParameter("name");
		String birthday = requset.getParameter("birthday"); // yyyymmdd
		
		int year = Integer.parseInt(birthday.substring(0,4));
		year = 2023 - year + 1;
		
//		out.println("<html><head><title>정보</title></head><body><table border=1><tr><td>이름</td><td>" + name + "</td></tr><tr><td>나이</td><td>" + year + "</td></tr></tabel></bdoy></html>");
		
		
		// response에 데이터 담기
		// 규격 json 
		// name : 김경남, age : 24 
		// json : dictionanry
		// {"name" : "김경남", "age" : 24}
		// json : Array
		// ["김인규", "유재석"]
		
		out.println("{\"name\" : \"" + name + "\", \"age\" : " + birthday + "}");
		
		
	}

}
