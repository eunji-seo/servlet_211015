<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<section>
	<div class="container">
		<h3 class="text-secondary mt-3">물건 올리기</h3>
		<form method="post" action="/db/quiz03_insert">
			<div class="d-flex">
			<%
			// DB 연결 
			MysqlService mysql = MysqlService.getInstance();
			mysql.connection();
			// select query 
			 String selectQuery = "select * from `seller`";
			 ResultSet result = mysql.select(selectQuery);
			
			
				 
			 
			%>
				<select class="form-control col-3">
				<%
				 while(result.next()){
				%>
					
					<option name="nickname"><%= result.getString("nickname") %></option>
				
				<%
				 }
				%>
				</select>
				<input type="text" name="title" class="form-control col-5 mr-3 ml-3 mb-3">
				<input type="text" name="price" class="form-control col-3">
			</div>
				<textarea rows="5" cols="10" class="form-control" name="description"></textarea>
				<div class="d-flex">
					<div class="d-flex align-items-center">이미지url</div><input type="text" name="imgUrl" class="form-control mt-3 col-10">
				</div>
			<input type="submit" value="저장" class="form-control btn btn-secondary mt-3">
		</form>
	</div>
</section>