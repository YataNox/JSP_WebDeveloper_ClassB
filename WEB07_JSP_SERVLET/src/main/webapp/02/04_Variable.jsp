<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>04_Variable</title>
		<%!
		int global_cnt = 0;
		%>
	</head>
	<body>
		<%
		int local_cnt = 0;
		%>
		
		<h1>local_cnt : <%=++local_cnt %></h1>
		<h1>global_cnt : <%=++global_cnt %></h1>
		<!-- 선언부(Declare)에 선언된 변수는 전역 변수와 같이 사용되어, jsp 페이지 어디서나 사용 가능하며,
		값도 일관되게 유지됩니다. 또한 페이지를 새로고침해도, 이전 값이 유지되는 특성이 있으며, 이는 나중에
		공부하게 될 세션 값과 비슷하게 작용되어 서버가 재설정되거나 브라우저가 닫힐 때까지 값이 유지되는 특성이
		있습니다. -->
	</body>
</html>