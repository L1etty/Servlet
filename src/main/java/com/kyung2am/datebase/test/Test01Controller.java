package com.kyung2am.datebase.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kyung2am.common.MysqlService;
import com.mysql.cj.xdevapi.Result;

@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String insertQuery = "SELECT `realtorId`,`address`,`area`,`type`,`price`,`rentPrice` FROM `real_estate`\r\n"
				+ "ORDER BY `realtorId` DESC\r\n"
				+ "LIMIT 10;";
		
		ResultSet resultSet = mysqlService.select(insertQuery);

		try {
			while(resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				
				out.println("매물 주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
