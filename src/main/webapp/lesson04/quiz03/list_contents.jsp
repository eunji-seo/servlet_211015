<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%

	//db 연결
	MysqlService mysql = MysqlService.getInstance();
	mysql.connection();
	
	//selec query
	String selectQuery = "select * from `used_goods` order by `id` desc";
	ResultSet result = mysql.select(selectQuery);
		
	// 

%>
<section>
	<div class="list">
	<%
		while(result.next()){
			
		
	%>
		<div>
			<img src=<%= result.getString("") %> alt="">
		</div>
		<div></div>
		<div></div>
		<div></div>
	<%
		}
	%>
	</div>
</section>