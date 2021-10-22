<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>08_ForEach02</title>
	</head>
	<body>
		<%
			String[] movieList = {"타이타닉", "시네마 천국", "혹성 탈출", "킹콩"};
			pageContext.setAttribute("movieList", movieList);
		%>
		<table border="1" style="width:700px; text-align:center;">
			<tr>
				<th>index</th>
				<th>count</th>
				<th width="300">title</th>
			</tr>
			<c:forEach var="movie" items="${movieList}" varStatus="status">
				<tr>
					<td>${status.index}</td>
					<td>${status.count}</td>
					<td>${movie}</td>	
				</tr>
			</c:forEach>
		</table>
		<!-- status : 현재 반복 순서의 상태
		${status.count} : 1부터 시작한 반복의 현재 아이템
		${status.index} : 0부터 시작한 반복의 현재 아이템
		 -->
	</body>
</html>