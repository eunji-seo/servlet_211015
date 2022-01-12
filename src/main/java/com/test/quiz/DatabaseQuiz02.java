package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz02")
public class DatabaseQuiz02 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// DB 연결 
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		// insert 퀀리 
		String insertQuery = "insert into `real_estate` (`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`)"
				+ "values(3,'헤라펠리스 101동 5305호',350,'매매',1500000,null)";
		
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		// select 쿼리
			
		
		
		// 결과 출력
		String selectQuery = "select * from `real_estate`";
		PrintWriter out = response.getWriter();
		try {
			ResultSet resultset = mysqlService.select(selectQuery);
			while(resultset.next()) {
				out.println(resultset.getInt("매물정보:"+"realtorId"));
				out.println(resultset.getString("address"));
				out.println(resultset.getInt("area"));
				out.println(resultset.getString("type"));
				out.println(resultset.getInt("price"));
				out.println(resultset.getInt("rentPrice"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		
		mysqlService.disconnection();
	}
}
