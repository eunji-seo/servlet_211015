<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력</title>
<!-- bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
<%
	
	
	Calendar month = Calendar.getInstance();
	
	int y = month.get(Calendar.YEAR);
	int m = month.get(Calendar.MONTH);
	int d = month.get(Calendar.DATE);

	Calendar day = Calendar.getInstance();
	day.set(y,m,1);
	
	int yo = day.get(Calendar.DAY_OF_WEEK);
	
	int last_day = month.getActualMaximum(Calendar.DATE);
	

%>
	<div class="container">
		<h1 class="text-center"><%= y%>-<%= m+1 %></h1>
	
		<table class="table">
			<thead>
				<tr>
					<th class="text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th class="text-primary">토</th>
				</tr>
			</thead>
			<tbody>
			
				<tr>
				<%
			
				for(int k = 1; k< yo; k++){
					
				%>
					<td></td>
				<%}%>
				<%for(int j = 1; j<last_day; j++){ %>		
					<td> 
						<%= j %>
						<% if((yo+j-1)%7 ==0) {%>
					</td></tr>
					<tr>
					<% 
					}	
				} 
						for(int e = 1; e < (7-yo); e++) { 
						%>
						<td></td>
						<%} %> 
					
					</tr>
			</tbody>
			
		</table>


	</div>
	
</body>
</html>