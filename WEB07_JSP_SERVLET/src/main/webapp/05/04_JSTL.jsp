<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- prefix="c" : jstl 문법을 사용하기 위해서 태그의 첫 글자를 c를 사용하겠습니다.라는 표시입니다.
그리고 c:으로 시작하는 태그는 jstl문법이 적용됩니다. <%--<c:태그이름></c:태그이름>--%> -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>04_JSTLtitle here</title>
	</head>
	<body>
		<!-- EL 에 없는 JSP 기능의 대부분이 JSTL에서 제공합니다. 변수, 반복문, if 등등 -->
		
		단순 출력<br>
		<c:out value="Hello"/>
		<br><br>
		
		변수 생성 및 초기화 1<br>
		<c:set var="msg" value="Hello"></c:set><br>
		생성한 병수를 EL에 의해 출력<br>
		\${msg } = ${msg }
		<br><br>
		
		변수 생성 및 초기화 2<br>
		<c:set var="age">30</c:set><br>
		생성한 병수를 EL에 의해 출력<br>
		\${age} = ${age}
		<br><br><br>
		
		객체 생성<br>
		<c:set var="member" value="<%=new com.ezen.dto.MemberBean() %>"></c:set>
		<!-- MemberBean member = new MemberBean(); -->
		<!-- 멤버변수 값 변경 -->
		<c:set target="${member}" property="name" value="홍길동"></c:set>
		<c:set target="${member}" property="userid">Hong</c:set>
		EL에 의한 멤버 변수 출력- 객체와 멤버 변수 이름만으로 setter 기능이 대체됩니다.<br>
		\${member.name} = ${member.name}<br>
		\${member.userid} = ${member.userid}<br>
		<br><br><br>
		
		그 외 변수와 출력 기능<br>
		<c:set var="add" value="${10 + 5}"></c:set>
		\${add} = ${add}<br>
		<c:set var="flag" value="${10 > 5}"></c:set>
		\${flag} = ${flag}<br>
		<br><br><br>
		
		
		
	</body>
</html>