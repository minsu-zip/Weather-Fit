<!-- DB연결을 위한 페이지 -->
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
		Connection conn = null;
		String url = "jdbc:mysql://us-cdbr-east-02.cleardb.com:3306/heroku_98e0d80f4559e7d?characterEncoding=euckr";
		String user = "bf237e0e62d25e";
		String user_password = "69d89d7a";
	
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, user_password);
	%>
</body>
</html>