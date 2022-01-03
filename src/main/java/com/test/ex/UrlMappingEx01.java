package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest Request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		// plain : 일반 
		
		PrintWriter out = response.getWriter();
		out.println("안녕");
		
		// Date 객체 (날짜)
		Date now = new Date();
		out.println(now);
		// Tue Dec 28 15:44:43 KST(한국) 2021
		
		// formatter : 형식이 정해져 있음 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
		// https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html
		String dateFormat = sdf.format(now);
		
		out.println(dateFormat);
		
		
	}
}
