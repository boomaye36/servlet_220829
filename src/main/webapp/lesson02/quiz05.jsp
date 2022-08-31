<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>
	<div class="container">
		<h1>길이 변환</h1>
		<br>
		<form method="post" action="/lesson02/quiz05_1.jsp">
		<div class="d-flex align-items-center">
		<input type="text" class="form-control" name="length">cm<br>
		</div>
		<div>
			<label for="inch">인치</label>		
			<input type="checkbox" id="inch" name="len" value="인치">
			<label for="yard">야드</label>		
			<input type="checkbox" id="yard" name="len" value="야드">
			<label for="feet">피트</label>		
			<input type="checkbox" id="feet" name="len" value="피트">
			<label for="meter">미터</label>		
			<input type="checkbox" id="meter" name="len" value="미터">
		</div>
		<br>
		<input type="submit" class="btn btn-success"  value="변환하기">
		
		</form>
	</div>
</body>
</html>