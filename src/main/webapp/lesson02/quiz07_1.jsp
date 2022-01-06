<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>
<!-- bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
<%
<<<<<<< HEAD
// 메뉴 데이터 
List<Map<String, Object>> list = new ArrayList<>(); // Object 저장시점 해당 타입으로 다운 캐스팅으로 (instendof) 해줌
=======
String search = request.getParameter("search");
double point = Integer.valueOf(request.getParameter("point"));

List<Map<String, Object>> list = new ArrayList<>();
>>>>>>> a369758c13ee1ce19b775f73f4c36b0b56349d50
Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
list.add(map);


%>
	<div class="container">
	<h1 class="text-center">검색 결과</h1>
		<table class="table text-center">
<<<<<<< HEAD
		<% 
		
=======
>>>>>>> a369758c13ee1ce19b775f73f4c36b0b56349d50
		
		
		
			<thead>
				<tr>
					<th>메뉴</th>
					<th>상호</th>
					<th>별점</th>
				</tr>
			</thead>
			<tbody>
<<<<<<< HEAD
			<%
				String keyword = request.getParameter("keyword");
				String starPointFilter = request.getParameter("starPointFilter");				
				// 체크 안함 : null, 체크 함 : "true"
				boolean exclude = starPointFilter != null; // 체크됨(4점 이하 제외)
				
				for (Map<String, Object> item : list) {
					
					if (keyword.equals(item.get("menu"))){
						
						if (exclude && (double)item.get("point") <= 4.0) { // skip조건 : 체크가됨  && 4점이하 제외
							continue;
					
					
						}		
=======
			<% 
			Iterator<Map<String, Object>> iter =  list.iterator();	
				while(iter.hasNext()){
					Map<String, Object> line = iter.next();
					
					if(line.get("menu").equals(search)){
						
					Object name = line.get("name");
					Object point1 = line.get("point");
>>>>>>> a369758c13ee1ce19b775f73f4c36b0b56349d50
			
						if(point >= 4.0){
							
						
			%>
<<<<<<< HEAD
						<tr>
							<td><%= item.get("menu") %></td>
							<td><%= item.get("name") %></td>
							<td><%= item.get("point") %></td>				
						</tr>
			<%
						
					}
				}
=======
				<tr>
					<td><%= search %></td>
					<td><%= name %></td>
					<td><%= point1 %></td>				
				</tr>
			<%
						}else{			
				
				%>
				<tr>
					<td><%= search %></td>
					<td><%= name %></td>
					<td><%= point1 %></td>				
				</tr>
				
				
				<%			
							
						}
					}
					
				}
			
>>>>>>> a369758c13ee1ce19b775f73f4c36b0b56349d50
			%>
			</tbody>
		</table>
	</div>
</body>
</html>