<!-- 사용자가 입력한 폼을 DB에 넣고 회원가입을 시켜주는 페이지 -->
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
	<%@ include file="Dbconn.jsp"%>
 <%
 	request.setCharacterEncoding("utf-8");
 
 	
 	String id = request.getParameter("id");
 	String password = request.getParameter("password");
 	String email = request.getParameter("email");
 	
 	ResultSet rs = null;	
 	Statement stmt = null;
 	boolean check = false;
 	try{
 		String sql = "select * from sign";
 		stmt = conn.createStatement();
 		rs = stmt.executeQuery(sql);
 		
 		while (rs.next()){
 			String check_id = rs.getString("id");
 			if(id.equals(check_id)){
 				check = true;
 				break;
 			}
 		}
 		if(check){
 			response.sendRedirect("./Sign.jsp?error=1");
 		}else{
 	 		String sql2 = "insert into sign values('" + id + "','" + password +"','" + email + "')";
 	 		stmt.executeUpdate(sql2);
 	 		response.sendRedirect("./Sign.jsp");
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