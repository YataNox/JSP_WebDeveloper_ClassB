<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

// 원하는 아이디와 비번이 전달되어 왔는지 확인 후 맞으면 073_LoginOk.jsp로 이동합니다.
// jsp문법으로 페이지 이동은 response.sendRedirect();
if(id.equals("hong") && pwd.equals("1234")){
	response.sendRedirect("073_LoginOk.jsp?name=" + URLEncoder.encode("홍길동", "UTF-8"));
}
else{
	response.sendRedirect("071_LoginForm.jsp");
}

// jsp 파일에서 로그인 절차를 진행하면 안 좋은점 #1
// 한글 전달 값에 대한 인코딩이 UTF-8이 아니어서 한글이 깨집니다.
// 별도의 URLEncoding 객체를 사용해야합니다.
%>