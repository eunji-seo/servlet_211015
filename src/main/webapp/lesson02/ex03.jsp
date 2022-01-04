<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Method Form 태그</title>
</head>
<body>
	<form method="post" action="/lesson02/ex03_1.jsp">
		1. 별명은 무엇입니까? <input type="text" name="nickname"><br><br>
		2. 취미는 무엇입니까? <input type="text" name="hobby"><br><br>
		2. 강아지 or 고양이?
		<label for="dog">강아지</label>
		<input type="radio" id="dog" name="animal" value="dog" checked> <!-- 서버에서  value 로 알수있다-->
		<label for="cat">고양이</label>
		<input type="radio" id="cat" name="animal" value="cat"> <!-- 서버에서  value 로 알수있다--><br><br>
		
		4. 다음 중 선호하는 것을 모두 고르세요.<br>
		<label>민트초코<input  type="checkbox" name="foodArr" value="민트초코"></label> 
		<label>하와이안 피자(파인애플)<input type="checkbox" name="foodArr" value="하와이안 피자"> </label>
		<label>번데기<input type="checkbox" name="foodArr" value="번데기"> <label><br><br>
		
		5. 좋아하는 과일을 선택하세요.<br>
		<select name="fruit">
			<option value="사과">사과</option>
			<option>바나나</option>
			<option>복숭아</option>
			<option>딸기</option>
			<option>포도</option>
		</select><br><br>
		
		<input type="submit" value="제출">
	</form>
</body>
</html>