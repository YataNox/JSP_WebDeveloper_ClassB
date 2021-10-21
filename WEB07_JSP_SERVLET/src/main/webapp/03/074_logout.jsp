<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>074_logout</title>
	</head>
	<body>
	<%
	session.invalidate(); // 현재 세션에 저장된 모든 내용을 지웁니다.
	// session.removeAttribute("loginUser"); 세션의 내용 중 해당 이름을 한개만 지웁니다.
	%>
	<script>
		alert("로그아웃 되었습니다.");
		location.href="07_LoginForm.jsp";
	</script>
	</body>
</html>