<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
<!-- bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<h1>메뉴 검색</h1>
		<form method="post" action="/lesson02/quiz07_1.jsp">
			<div class="d-flex">
<<<<<<< HEAD
			<input type="text" name="keyword" class="form-control col-4">
			<label class="mt-3 ml-2">
			<input type="checkbox" name="starPointFilter" value="true">4점 이하 제외</label>
=======
			<input type="text" name="search" class="form-control col-4">
			<label><input type="checkbox" name="point" class="mt-3 ml-2" value="4" >4점 이하 제외</label>
>>>>>>> a369758c13ee1ce19b775f73f4c36b0b56349d50
			</div>
			<input type="submit" class="btn btn-success mt-2" value="검색">
		</form>
	
	</div>
</body>
</html>