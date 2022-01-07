<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%
//singleton 패턴 : 하나의 객체로 사용하는것 , 디자인 패턴: 3년차 정도에 공부  .getInstance(): 싱글턴이 아니다 
//팩토리 패턴 : 객체를 계속 생성하는 

	Calendar today = Calendar.getInstance(); 
	out.print(today + "<br>");
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
	out.print("오늘 날짜: " + sdf.format(today.getTime())); // Calendar -> Date 객체로 변환 후 format 적용
	
	// 어제 날짜 
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
	Calendar yesterday = Calendar.getInstance();
	yesterday.add(Calendar.DATE, -1); // 날짜"단위" , 하루전 
	out.println("어제 날짜: " + sdf2.format(yesterday.getTime()));
%>
</body>
</html>