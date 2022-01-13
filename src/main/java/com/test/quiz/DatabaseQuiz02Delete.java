package com.test.quiz;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz02_delete")
public class DatabaseQuiz02Delete extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//쿼리 파라미터 id값 얻는다 
			int id = Integer.valueOf(request.getParameter("id"));
		//DB 연결
			MysqlService mysql = MysqlService.getInstance();
			mysql.connection();
		
		//id 값으로 delete query 수행
			
			String deleteQuery = "delete from `site` where `id` = " + id;
			
			try {
				mysql.update(deleteQuery);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		//DB 연결해제
			
			mysql.disconnection();
		
		//	리다이렉트 ->quiz01
			
			response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}
	

}
