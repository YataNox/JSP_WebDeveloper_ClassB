<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>112_JSPServlet_Ex02</title>
	</head>
	<body>
		<%
		String items[] = (String[]) request.getAttribute("item");
		String interests[] = (String []) request.getAttribute("interest");
		%>
		<h1>아이디 : <%=request.getAttribute("id")%></h1>
		<h1>암 &nbsp; 호 : <%=request.getAttribute("pwd")%></h1>
		<h1>성 &nbsp; 별 : <%=request.getAttribute("gender") %></h1>
		<h1>메일 정보 수신 여부 : <%=request.getAttribute("chk_mail") %></h1>
		<h1>가입인사 : <%=request.getAttribute("content")%></h1>
		<h1>구입항목 : <%
			if(items == null) 
				out.print("구입한 항목이 없습니다.");
			else{
				for(String item : items){
		%>			
					<%=item %>,	
		<% 
				}
			}
		%> 
		</h1>
		<h1>직 &nbsp; 업 : <%=request.getAttribute("job") %></h1>
		<h1>관심분야 : <%
			if(interests == null) 
				out.print("선택한 항목이 없습니다.");
			else{
				for(String interest : interests){
		%>			
					<%=interest %>,	
		<% 
				}
			}
		%>
		</h1>
	</body>
</html>