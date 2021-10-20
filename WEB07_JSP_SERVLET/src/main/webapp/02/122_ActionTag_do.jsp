<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<%
// 122_ActionTag_do.jsp
String userID = request.getParameter("userID");
String userPWD = request.getParameter("userPWD");
String loginCheck = request.getParameter("loginCheck");
// 사용자 로그인일 경우 ... 123_ActionUser.jsp로 이동
// 관리자 로그인일 경우 ... 123_ActionManager.jsp로 이동


if(userID.equals("scott") && userPWD.equals("1234") && loginCheck.equals("user")){
	response.sendRedirect("123_ActionUser.jsp?userID=" + userID + "&userName=" + URLEncoder.encode("홍길동","UTF-8"));
}else if(userID.equals("scott") && userPWD.equals("1234") && loginCheck.equals("manager")){
	response.sendRedirect("124_ActionManager.jsp?userID=" + userID + "&userName=" + URLEncoder.encode("홍길남","UTF-8"));
}else{
	response.sendRedirect("121_ActionTagForm.jsp");
}

%>