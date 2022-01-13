package com.test.quiz;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz03_insert")
public class DatabaseQuiz03Insert extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		// 파라미터 받아오기 
			String nickname = request.getParameter("nickname");
			String title = request.getParameter("title");
			String price = request.getParameter("price");
			String description = request.getParameter("description");
		// DB 연결 
			MysqlService mysql = MysqlService.getInstance();
			mysql.connection();
		// insert 문 + update
			String insertQuery1 = "insert into `user_goods`(`title`,`price`,`description`)"
					+ "values('"+ title +"','" + price +"','" +description +"')";
			String insertQuery2 = "insert into `seller`(`nickname`)"
					+  "values('"+ nickname +"')";
			
			
		// DB 연결 해제
		
		// 리다이렉트
	}
	
}
