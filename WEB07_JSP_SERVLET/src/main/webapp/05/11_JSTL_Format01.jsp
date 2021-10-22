<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>11_JSTL_Format01</title>
	</head>
	<body>
		<!-- 오늘 날짜 발생 및 변수에 저장 -->
		<c:set var="now" value="<%=new java.util.Date() %>"></c:set>
		<!-- 일반적인 출력 -->
		<h2>\${now} : ${now}</h2>
	</body>
</html>