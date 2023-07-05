package com.kyung2am.datebase.test.market;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kyung2am.common.MysqlService;

@WebServlet("/db/market/insert")
public class MarketInsertController extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		String id = requset.getParameter("id");
		String title = requset.getParameter("title");
		String price = requset.getParameter("price");
		String description = requset.getParameter("description");
		String image = requset.getParameter("image");
		
		String query = "INSERT INTO `used_goods`\r\n"
				+ "(`sellerId`, `title`, `price`, `description`, `image`)\r\n"
				+ "VALUE\r\n"
				+ "('"+ id + "', '"+ title +"', '"+ price +"', '"+ description +"', '"+ image +"');";
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		mysqlService.update(query);
		
//		PrintWriter out = response.getWriter();
//		
//		out.println(count);
		
		response.sendRedirect("/datebase/test/market/test02.jsp");
	}

}
