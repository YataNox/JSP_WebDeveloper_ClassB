<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>02_getCookies</title>
	</head>
	<body>
	<%
	Cookie[] cookies = request.getCookies(); // 쿠키 내용을 한 번에 다 얻어오는 명령
	for(Cookie c : cookies){
		out.println(c.getName() + " : " + c.getValue() + "<br>");
	}
	%>
	</body>
</html>