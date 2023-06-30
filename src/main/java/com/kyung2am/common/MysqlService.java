package com.kyung2am.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
//	private String url;
//	private String userId;
//	private String password;
	private Connection connection = null;
	private Statement statement = null;
	
	private static MysqlService mysqlService = null;
	// 객체를 리턴하는 메소드
	//static 객체 생성없이 사용하는것. static은 객체생성을 안해서 멤버변수를 못씀 그래서 멤버변수도 static으로 만들어줘야함.
	
	public static MysqlService getInstance() {
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	private MysqlService() {
		
	}
	
	
	// 접속을 위한 기능 메소드
	public void connect(){
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/kyung2am";
			String userId = "root";
			String password = "root";
		
			connection = DriverManager.getConnection(url,userId,password);
			statement = connection.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	// 쿼리 수행을 위한 기능 메소드
	
	public ResultSet select(String query) {
		try {
			ResultSet resultSet = statement.executeQuery(query);
			return resultSet;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return null;
		}
	}
	
	//insert, update, delete
	public int update(String query) {
		try {
			// 실행된 행의 개수
			int count = statement.executeUpdate(query);
			return count;
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		}
	}
	

	// 접속 끊기
	
	public void disconnect() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
