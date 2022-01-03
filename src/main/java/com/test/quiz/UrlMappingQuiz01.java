package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz01 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException { // 예외처리 회피
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		// 오늘의 날짜는 2021년 5월 20일
		
		PrintWriter out = response.getWriter(); 
	
		Date now = new Date();
		// 현재 시간 저장 
		SimpleDateFormat sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 M월 d일");
		String formatDate = sdf.format(now);
		
		out.println(formatDate);
	}
}
