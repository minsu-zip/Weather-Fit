<!-- web.xml에서 적용한  시큐리티. 요청한 페이지가 없을때 나타나는 페이지-->
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
<title>페이지 오류</title>
</head>
<body>
  <jsp:include page="Menu.jsp" />

	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다..</h2>
		</div>
	</div>	
	
	<div class="container">
		<p><%=request.getRequestURL()%>
		<p><a href="Dress.jsp" class="btn btn-secondary">Weather_Fit &raquo;</a>
	</div>
</body>
</html>