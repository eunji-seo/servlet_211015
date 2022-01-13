package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	private static MysqlService mysqlService = null;
	
	// 도메인 뒤에 접속할 database명까지 써준다.
	//boram_211015
	private String url = "jdbc:mysql://localhost:3306/boram_211015";
	private String id = "root";
	private String pw = "root";
	//root
	
	private Connection conn = null;
	private Statement statement;
	private ResultSet res;
	
	
	// Singleton 패턴 : MysqlService 객체가 단 하나만 생성되도록 하는 디자인패턴(DB연결을 여러 객체에서 하지 않도록)
	public static MysqlService getInstance() {
		if (mysqlService == null) {
			mysqlService = new MysqlService();
			
		}
		return mysqlService;
	}

	public void connection() {
		// 1. jdbc 드라이버를 메모리에 로딩 // pkg 위치 드라이버 생성자
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 2. DB connection
			conn = DriverManager.getConnection(url, id, pw);
			
			//3. statement:  DB와 퀴리를 실행위한 준비
			statement = conn.createStatement(); // 퀴리를 받아들일 준비
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void disconnection() {
		try {
			statement.close();
			conn.close(); // 연결할때 반대 순서로 
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	// 쿼리를 하는 메소드
	// 결과를 가지고 오는 쪽
	public ResultSet select(String query) throws SQLException { // query를 발생한(호출한) 쪽에서 에러날 확율이 큼 
		res = statement.executeQuery(query);
		return res;
	}
	
	// 수정하는 쪽
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
	
}
