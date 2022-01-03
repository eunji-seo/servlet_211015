<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 요소</title>
</head>
<body>
	<%! // 클래스 
	//1부터 n까지의 합계를 구하는 함수
	
	
	public int sum(int n){
		int sum = 0;
		for(int i = 1; i <= n; i++){
			sum += i;
		}
		return sum;
	}
	
	%>
	<% // main

	
	
	int[] scores = {80, 90, 100, 95, 80};
	
	int sum = 0;
	for(int i = 0; i < scores.length; i++){
		sum += scores[i];
	}
	 double avg = sum / (double)scores.length;
	 
	 
	
	 List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for(int i = 0; i < scoreList.size(); i++){
		 	if(scoreList.get(i).equals("O")){
		 		score += 100/scoreList.size();
		 	}
		}
		
		
		String birthDay = "20010820";
		String year = birthDay.substring(0, 4);
		int num = Integer.parseInt(year);
		
		// out.print(year);
		int age = 2021 - Integer.valueOf(year) +1;
	
	%>
	

	<h1>1부터 50까지의 합은 <%= sum(50) %>입니다.</h1>
	<h1>평균 점수는 <%= avg %>입니다.</h1>
	<h1>채점 결과는  <%= score%> 입니다. </h1>
	<h1><%= birthDay%>의 나이는<%= age%>입니다. </h1>
</body>
</html>