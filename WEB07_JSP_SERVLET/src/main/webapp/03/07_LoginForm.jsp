<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>07_LoginForm</title>
	</head>
	<body>
		<form method="post" action="072_Login_do.jsp">
			<label for="userid">아이디 : </label>
			<input type="text" name="id" id="userid"><br>
			<label for="userid">암 &nbsp; 호 : </label>
			<input type="password" name="pwd" id="userpwd"><br>
			<input type="submit" value="로그인">
		</form>
	</body>
</html>