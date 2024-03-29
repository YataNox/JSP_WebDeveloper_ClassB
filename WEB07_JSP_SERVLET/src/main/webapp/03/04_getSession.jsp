<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>04_getSession</title>
	</head>
	<body>
	<h3>세션에 저장된 값 하나씩 추출</h3>
	<%
	String id = (String) session.getAttribute("id");
	String pwd = (String) session.getAttribute("pwd");
	Integer age = (Integer) session.getAttribute("age");
	%>
	id : <%=id %><br>
	pwd : <%=pwd %><br>
	age : <%=age %><br>
	
	<h3>세션에 설정된 모든 값 얻어오기</h3>
	<%
	Enumeration<String> names = session.getAttributeNames();
	// 세션의 변수 이름 목록을 얻어와서, 이름 갯수 만큼 반복 실행합니다.
	while(names.hasMoreElements()){
		String name = names.nextElement().toString();
		// 반복실행되는 동안 이름을 getAttribute에 넣어서 변수의 저장된 값을 추출합니다.
		String value = session.getAttribute(name).toString();
		out.println(name + ":" + value + "<br>");
	}
	%>
	</body>
</html>