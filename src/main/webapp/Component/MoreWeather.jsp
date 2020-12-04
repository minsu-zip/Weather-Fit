<!-- 현재 위치한 도시날씨를 상세히 보여줌 -->
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>

<meta charset="EUC-KR">
<title>Weather-Fit</title>
</head>
<body>

	<%@ include file="Menu.jsp"%>


<div class="container">
    <div class="row p-5 m-4">
        <div class="col-sm-6">
        <p id="demo"></p>
        
        </div>
        <div class="col-sm-6">
        <p id="demo2"></p>
        </div>
    </div>
    
</div>

	<main role="main">
		<div class="container">
			<div class="text-center">
			<p id="weather"></p>
				<%
					//response.setIntHeader("Refresh",1);
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("현재 접속 시간 : " + CT);
				%>

			</div>
			
		</div>
	</main>

	<%@ include file="Footer.jsp"%>
	<script type="text/javascript" src="../resources/js/weather.js"></script>
</body>
</html>