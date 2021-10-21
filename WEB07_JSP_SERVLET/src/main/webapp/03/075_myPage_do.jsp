<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
if(session.getAttribute("loginUser")==null){
	response.sendRedirect("07_LoginForm.jsp");
}else{
	response.sendRedirect("076_myPage.jsp");
}
%>