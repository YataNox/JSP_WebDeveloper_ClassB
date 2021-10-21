<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

if(session.getAttribute("loginUser")==null){
	response.sendRedirect("07_LoginForm.jsp");
}else{
	if(id.equals("hong") && pwd.equals("1234")){
		session.setAttribute("loginUser", id); // 로그인 사용자 id를 세션에 저장
		response.sendRedirect("073_main.jsp");
	}else{
		response.sendRedirect("07_LoginForm.jsp");
	}
}
%>
