<!-- Admin계정 로그인시 회원정보들을 볼 수 있다. -->

<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<!doctype html>
<head>
<link rel="stylesheet" href="../../resources/css/bootstrap.min.css" />


<title>Admin</title>
</head>
<body>
		<!-- DB연결을 위해 Dbconn.jsp 불러옴 -->
	<%@ include file="../Dbconn.jsp"%>
	<div class="container p-2">
		<p>회원 정보 목록
		<p><a href="../Dress.jsp">뒤로가기</a>
	</div>
	
	
 <%
 	request.setCharacterEncoding("utf-8");

 	ResultSet rs = null;	
 	Statement stmt = null;
 	boolean check = false;
 	
 	try{
 		String sql = "select * from sign";
 		stmt = conn.createStatement();
 		rs = stmt.executeQuery(sql);
 		
 		while (rs.next()){
 			String check_id = rs.getString("id");
 			String check_pwd = rs.getString("password");
 			String check_email = rs.getString("email");
 			
 		%>
 		
 		<div class="container p-2">
 			<div>
 				아이디 : <%=check_id %>
 				비밀번호 : <%=check_pwd %>
 				이메일 : <%=check_email %>
 			</div>
 			<hr>
 		</div>
 		<% 
 		}
 	}catch (SQLException ex){
 		out.println(ex.getMessage());
 	}finally{
 		if(stmt != null)
 			stmt.close();
 		if(conn != null)
 			conn.close();
 	}
 %>
</body>
</html>