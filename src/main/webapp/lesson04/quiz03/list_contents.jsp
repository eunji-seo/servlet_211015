<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%

	//db 연결
	MysqlService mysql = MysqlService.getInstance();
	mysql.connection();
	
	//selec query
	String selectQuery = "select A.*, B.* from seller AS A join used_goods AS B on A.id = B.sellerId";
	ResultSet result = mysql.select(selectQuery);
		
	// 

%>
<section>
<%
		while(result.next()){
			
		
%>
	<div class="list d-flex flex-wrap border justify-content-around">
	
	<div>
		<% 
			
		%>
		<%
			if(result.getString("picture") == null || result.getString("picture").equals("")){
		
		%>
			<div class="D-flex h-50 justify-content-center align-items-center">
				<h4 class="text-secondary">이미지 없음 </h4>
			</div>	
			
			
		<% 
			} else {
		
		%>
		<div>
		
			<img src=<%= result.getString("picture") %>  width="150" height="150" alt="">
		
		</div>
		 <%
		}
		%> 
		<div><%= result.getString("title") %></div>
		<div><%= result.getInt("price") %> 원</div>
		<div><%= result.getString("nickname") %></div>
	</div>
	<%
		}
	%>
	</div>
</section>