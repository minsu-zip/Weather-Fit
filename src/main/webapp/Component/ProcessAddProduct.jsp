<!-- Dress추가 역할을 하는 페이지 사용자가 입력한 값을 받아와서 저장해줌 -->
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Dress"%>
<%@ page import="dao.DressRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="Dbconn.jsp"%>


	<%
		request.setCharacterEncoding("UTF-8");

		String filename = "";
		String realFolder = "D:/eclipse/3-2웹프/Weather/WebContent/resources/images";
		int maxSize = 5 * 1024 * 1024;
		String encType = "utf-8";
		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
		String dressid = multi.getParameter("dressId");
		String title = multi.getParameter("title");
		String description = multi.getParameter("description");

		
		Enumeration files = multi.getFileNames();
		String fname = (String) files.nextElement();
		String fileName = multi.getFilesystemName(fname);
	
		PreparedStatement pstmt = null;
		String sql = "insert into dress values(?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dressid);
		pstmt.setString(2, title);
		pstmt.setString(3, description);
		pstmt.setString(4, fileName);
		pstmt.executeUpdate();
		
		if(pstmt != null)
			pstmt.close();
		if(conn != null)
			conn.close();
		
		response.sendRedirect("./Dress.jsp");
	%>
</body>
</html>