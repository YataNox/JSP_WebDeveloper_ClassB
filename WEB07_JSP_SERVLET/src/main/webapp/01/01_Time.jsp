<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<h2>안녕하세요</h2>
		<h2>JAVA SERVER PAGE</h2>
		<% java.util.Date d = new java.util.Date(); %>
		<!-- HTML로 페이지를 구성하던 중, jsp에 의한 컨텐츠가 중간에 나와야 한다면 필요한 곳에 JSP 명령을 씁니다. -->
		<%-- 현재 jsp 파일안에 html 문법사이로...
				jsp 문법이 껴들어 코딩될때는 <%%>를 사용합니다.  --%>
		<h1>현재시간 : <%= new java.util.Date() %></h1>
		<%-- 다만 페이지에 출력될 내용을 기술한다면 <%= %>를 쓰고 변수명이나 출력할 내용을 씁니다. --%>
		
		<h2>jsp : 서버에서 계산하거나 처리할 명령을 써서 실행시키고, 그 결과가 웹페이지에 jsp 문법에 의해 표시되는 페이지입니다.</h2>
		<h2><%= d %> => 계산된 현재 날짜 시간을 body의 해당 위치에 표시</h2>
		
		<%-- <% jsp 명령 %> : 명령의 실행 --%>
		<%-- <% 변수 또는 출력 내용 %> : 웹페이지에 출력 --%>
	</body> 
</html>