<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<%
			String name = request.getParameter("name");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String pwd_re = request.getParameter("pwd_re");
		%>
		성명 : <%=name %><br>
		아이디 : <%=id %><br>
		비밀번호 : <%=pwd %><br>
		비밀번호 확인 : <%=pwd_re %><br>
	</body>
</html>