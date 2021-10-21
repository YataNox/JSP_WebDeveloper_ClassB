<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.SQLException"%>
<%
	/* addMemberForm.jsp에서 전달 받은 값 저장 */
	String userid = request.getParameter("userid");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String phone = request.getParameter("phone");
	
	/* db연결을 위한 값들 */
	Connection con = null;
	PreparedStatement pstmt = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String upwd = "tiger";
	String sql = "insert into mem(id, name, pwd, phone) values(?,?,?,?)";
	
	/* db 연결 */
	try{
		Class.forName(driver);
		con = DriverManager.getConnection(url, uid, upwd);
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, name);
		pstmt.setString(3, pwd);
		pstmt.setString(4, phone);
		
		pstmt.executeUpdate();
	}catch(ClassNotFoundException e){
		e.printStackTrace();
	}catch(SQLException e){
		e.printStackTrace();
	}finally{ // 오류가 나든 안나든 최종적으로 실행
		// connection, preparedstatement, resultset 종료
		try{
			if(pstmt!=null)
				pstmt.close();
			if(con!=null)
				con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	/* MemberMGR.jsp 파일로 돌아가기 */
	response.sendRedirect("MemberMGR.jsp");
%>
