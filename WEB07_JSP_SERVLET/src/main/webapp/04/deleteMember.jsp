<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.SQLException"%>

<%
request.setCharacterEncoding("UTF-8");
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String uid = "scott";
String upwd = "tiger";
String sql = "delete from mem where id=?";
String id = request.getParameter("userid");

try{
	Class.forName(driver);
	con = DriverManager.getConnection(url, uid, upwd);
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	
	pstmt.executeUpdate();
}catch(ClassNotFoundException e){
	e.printStackTrace();
}catch(SQLException e){
	e.printStackTrace();
}finally{
	try{
		if(pstmt!=null)
			pstmt.close();
		if(con!=null)
			con.close();
	}catch(SQLException e){
		e.printStackTrace();
	}
}
response.sendRedirect("MemberMGR.jsp");
%>