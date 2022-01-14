package com.test.quiz;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz03_insert")
public class DatabaseQuiz03Insert extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 파라미터 받아오기 
			String nickname = request.getParameter("nickname");
			String title = request.getParameter("title");
			String price = request.getParameter("price");
			String description = request.getParameter("description");
			String picture = request.getParameter("picture");
			
		// DB 연결 
			MysqlService mysql = MysqlService.getInstance();
			mysql.connection();
		// insert 문 + update
			String insertQuery1 = "insert into `user_goods`(`title`,`price`,`description`,`picture`)"
					+ "values('"+ title +"','" + price +"','" +description +"','"+ picture + "')";
			String insertQuery2 = "insert into `seller`(`nickname`)"
					+  "values('"+ nickname +"')";
			
			try {
				mysql.update(insertQuery1);
				mysql.update(insertQuery2);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
		// DB 연결 해제
			mysql.disconnection();
		// 리다이렉트
			response.sendRedirect("/lesson04/quiz03/template.jsp");
	}
	
}
