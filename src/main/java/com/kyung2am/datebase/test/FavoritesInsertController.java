package com.kyung2am.datebase.test;

import java.io.IOException;
import java.net.http.HttpRequest;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kyung2am.common.MysqlService;

@WebServlet("/db/favorites/insert")
public class FavoritesInsertController extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		String query = "INSERT INTO `favorites`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "','" + url + "');";
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/datebase/test/test01.jsp");
		
	}

}
