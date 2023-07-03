package com.kyung2am.datebase.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kyung2am.common.MysqlService;

@WebServlet("/db/favorites/delete")
public class FavoritesDeleteController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		
		String id = requset.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `favorites` WHERE `id` = " + id + ";";
		
		mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/datebase/test/test01.jsp");
		
	}

}
