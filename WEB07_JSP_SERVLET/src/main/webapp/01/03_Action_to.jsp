<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<h3>get 방식으로 전송되어진 주소</h3>
		<h3>http://localhost:8090/WEB07_JSP_SERVLET/01/03_Action_to.jsp?
		name=1234123&id=421342134&pwd=234124&pwd_re=12342134</h3>
		
		<h3>POST 방식으로 전송되어진 주소</h3>
		<h3>http://localhost:8090/WEB07_JSP_SERVLET/01/03_Action_to.jsp</h3>
		
		<!-- form 태그에 의해 전송된 데이터들은 대상 페이지의 주소를 통해 전달됩니다.
		주로 get 방식에서 그 모양을 확인 할 수 있으며, post 방식은 내용이 숨겨져 전달되므로 모양을 확인
		할 수 없습니다. 다만 둘 다 전달되는 내용은 같은 내용이 전달되고 사용 방법도 똑같습니다. -->
		
		<!-- 전달 방식
		http://주소/경로/파일이름.jsp?첫 번째 전달요소의 name = 전달값& 두 번째 전달요소name=전달값... -->
		<!-- 한굴은 인코딩 방식에 따라 위와 같이 %16진수 값으로 표시될 수 있습니다. -->
		
		<!-- post 방식은 회원 가입이나 로그인할 때 입력한 비밀번호 또는 개인정보 등의 노출을 차단하고자
		할 때 사용하는 방식입니다. -->
		
		<!-- form 태그 안에서 submit 버튼을 이용하는 것이 아니라
		필요에 따라 일반 버튼 클릭으로 이동할 때, 이동주소에 전달 값을 붙여서 이동시키기도 합니다.
		http://주소/경로/파일이름.jsp?전달name1=전달값&전달name2=전달값2.. -->
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