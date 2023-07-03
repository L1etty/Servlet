package com.kyung2am.datebase.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kyung2am.common.MysqlService;

@WebServlet("/db/user/insert")
public class UserInsertController extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		
//		response.setContentType("text/plain");
//		
//		PrintWriter out = response.getWriter();
		
		//이름, 생년월일, 이메일, 자기소개 전달 받고, 해당 데이터를 insert
		String name = requset.getParameter("name");
		String yyyymmdd = requset.getParameter("yyyymmdd");
		String email = requset.getParameter("email");
		String introduce = requset.getParameter("introduce");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `new_user`\r\n"
				+ "(`name`, `yyyymmdd`, `email`, `introduce`)\r\n"
				+ "VALUE\r\n"
				+ "(' " + name + "', '" + yyyymmdd + "', '" + email + "', '" + introduce + "');";
		
		int count = mysqlService.update(query);
		
		
//		out.println("추가된 사용자" + count);
		
		// 리스트 페이지로 이동
		// Redirect
		response.sendRedirect("/datebase/ex/ex01.jsp");
		
	}

}
