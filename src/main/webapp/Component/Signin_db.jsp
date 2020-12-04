<!-- DB에 있는 값을 가져와 로그인 판단 여부를 수행시켜주는 페이지 -->
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
	<!-- DB연결을 위해 Dbconn.jsp 불러옴 -->
	<%@ include file="Dbconn.jsp"%>
 <%
 	request.setCharacterEncoding("utf-8");

 	//사용자의 id, password값 가져옴
 	String id = request.getParameter("sign_id");
 	String password = request.getParameter("sign_password");
 	
 	ResultSet rs = null;	
 	Statement stmt = null;
 	boolean check = false;
 	
 	try{
 		//사용자가 입력한 id, password값이 DB에 있는지 검증하기 위한  질의문
 		String sql = "select * from sign";
 		stmt = conn.createStatement();
 		rs = stmt.executeQuery(sql);
 		
 		while (rs.next()){
 			String check_id = rs.getString("id");
 			String check_pwd = rs.getString("password");
 			//사용자가 입력한 계정과 DB에 있는 계정이 일치하면 check = ture저장
 			if(id.equals(check_id) && password.equals(check_pwd)){
 				check = true;
 				break;
 			}
 		}
 		
 		//계정이 일치하면 세션과 쿠키 생성
 		if(check){
 			session.setAttribute("userID", id);
			session.setAttribute("userPW", password);
			
			Cookie cookie_id = new Cookie("userID", id);
			Cookie cookie_pw = new Cookie("userPW", password);
			cookie_id.setMaxAge(60*60*24);
			cookie_pw.setMaxAge(60*60*24);
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			
 			response.sendRedirect("./MoreWeather.jsp");
 		}else{
 	 		response.sendRedirect("./Sign.jsp?error2=1");
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