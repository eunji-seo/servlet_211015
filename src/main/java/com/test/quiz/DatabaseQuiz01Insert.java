package com.test.quiz;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz01_insert")
public class DatabaseQuiz01Insert extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//폼에 있는 값들을 꺼낸다
			String name = request.getParameter("name");
			String url = request.getParameter("url");
			
		//BD 연결
			MysqlService mysql = MysqlService.getInstance();
			mysql.connection();
		
		//email 테이블 insert
			String insertQuery = "insert into `email`(`name`,`url`)"
					+ "values('"+ name +"','"+ url +"')";

			try {
				mysql.update(insertQuery);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		// DB 연결 해제
			mysql.disconnection();
		// 리다이렉트 목록 화면
			response.sendRedirect("/lesson04/quiz01/quiz01.jsp");
	}

}
