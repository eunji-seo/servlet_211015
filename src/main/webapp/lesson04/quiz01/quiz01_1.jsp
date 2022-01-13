<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form method="post" action="/db/quiz01_insert">
			<h1>즐겨찾기 추가</h1>
			<div>사이트명:</div>
			<input type="text" name="name">
			<div>사이트 주소:</div>
			<input type="text" name="url">
			<div>
				<input type="submit" value="추가">
			</div>
		</form>
	</div>
</body>
</html>