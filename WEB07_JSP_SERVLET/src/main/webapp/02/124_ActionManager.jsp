<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>124_ActionManager</title>
	</head>
	<body>
		<h3>관리자로 로그인 성공</h3>
		<%
		// String userName = URLDecoder.decode(request.getParameter("userName"), "UTF-8"); // sendRedirect
		// String userName = (String)request.getAttribute("userName"); // forward
		String userName = URLDecoder.decode(request.getParameter("userName"),"UTF-8"); // 액션 태그
		out.print(userName);
		%>
		(<%=request.getParameter("userID") %>)님 환영합니다.
	</body>
</html>