<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<header>
	<h1><a href="Before_Login_Main.jsp" target="_self">Practice Web Page</a></h1>
	<div id="loginform">
		<form method="post" action="../Practice_Servlet">
			<table>
				<tr>
					<td><label for="userid">아이디 : </label></td>
					<td><input type="text" name="userid" id="userid" size="20"></td>
				</tr>
				<tr>
					<td><label for="userid">비밀번호 : </label></td>
					<td><input type="text" name="userid" id="userid" size="20"></td>
				</tr>
				<tr >
					<td><input style="width: 50px" type="submit" name="login" value="로그인"/></td>
					<td><button name="signup">회원가입</button></td>
				</tr>
			</table>
		</form>
	</div>
</header>