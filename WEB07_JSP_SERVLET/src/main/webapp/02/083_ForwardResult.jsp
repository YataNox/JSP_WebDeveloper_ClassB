<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>083_ForwardResult</title>
	</head>
	<body>
		<%
		// 이전 페이지의 request를 갖고 이동했으므로, age 파라미터 값이 살아있습니다.
		String age = request.getParameter("age");
		String name = (String)request.getAttribute("name");
		// Attribute에 저장형식은 모든 클래스의 부모 클래스인 Object형태로 저장되므로,
		// 다시 값을 추출할 때 강제 캐스팅이 필요합니다.
		%>
		
		<h1>forward 방식으로 이동된 페이지</h1>
		<h1>나이 : <%=age%></h1>
		<h1>이름 : <%=name%></h1>
		<!-- forward 방식으로 이동된 페이지는 한글에 대한 인코딩 작업이 필요가 없습니다. -->
	</body>
</html>