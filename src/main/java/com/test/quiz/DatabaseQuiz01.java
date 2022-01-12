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

@WebServlet("/db/quiz01")
public class DatabaseQuiz01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/plain");
		
		// DB 연결 
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		// insert 퀀리 
		
		
		try {
			String insertQuery = "insert into `real_estate` (`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`)"
					+ "values(3,'헤라펠리스 101동 5305호',350,'매매',1500000,null)";
			mysqlService.update(insertQuery);
			// select 쿼리			
			
			// select query -> 처리(출력)
			String selectQuery = "select * from `real_estate` order by `id` desc limit 10;";
			ResultSet resultSet = mysqlService.select(selectQuery);	
			
	
			PrintWriter out = response.getWriter();
			while(resultSet.next()) {
				//매물 주소, 면적, 타입
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				// 결과 출력
				out.println("매물 주소:"+ address + ",면적:" + area + ",타입:"+ type);
			}
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace(); // PrintWriter 예외 처리 
		}
		

		
		
		// DB 연결 해제
		
		mysqlService.disconnection();
	}
}
