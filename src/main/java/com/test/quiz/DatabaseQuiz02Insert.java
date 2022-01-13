package com.test.quiz;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz02_insert") // 
public class DatabaseQuiz02Insert extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//request 파라미터 꺼낸다
			String name = request.getParameter("name");
			String url = request.getParameter("url");
			
		//BD 연결
			MysqlService mysql = MysqlService.getInstance();
			mysql.connection();
		
		//site 테이블 insert
			String insertQuery = "insert into `site`(`name`,`url`)"
					+ "values('"+ name +"','"+ url +"')";

			try {
				mysql.update(insertQuery);
			} catch (SQLException e) {
				e.printStackTrace(); // 에러 발생시 에러 문구 출력
			}
		
		// DB 연결 해제
			mysql.disconnection();
		// 리다이렉트 목록 화면 quiz02.jsp (즐거찾기 목록)
			response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}

}
