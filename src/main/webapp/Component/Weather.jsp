<!-- HomePage : 실시간 현재 위치의 날씨를 간략히 알려줌  -->
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="../resources/css/weather.css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

<title>Weather-Fit</title>
</head>
<body>

	<fmt:setLocale value='<%=request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message">

	<div class="container">

		<div class="bg_text text-center p-0 b-0">

			<div>
				<h1 class="text-white" style="font-size: 6em;"><fmt:message key="title"/></h1>
			</div>

			<div class="js-clock clock">
				<h3 class="clock__text text-white" style="font-size: 9em;">00:00:00</h3>
			</div>


			<div class="container" style="margin: 0 auto;">
				<div class="text-white">

					<div class="card-header m-0p-0"
						style="box-sizing: border-box; flex: 1">
						<img id="Weather-img" style="height: 100px; width: 100px;" src=""
							alt="...">
					</div>
					<div class="card-body m-0p-0"
						style="box-sizing: border-box; flex: 1">
						<div class="card-title">
							<h5 id="Weather-main"><fmt:message key="city"/></h5>
						</div>
						<p id="city_weather" class="card-text"><fmt:message key="city_weather"/></p>
						<p id="Temperature" class="card-text"><fmt:message key="Temperature"/></p>
						<p id="wind" class="card-text"><fmt:message key="wind"/></p>
						<p id="cloud" class="card-text"><fmt:message key="cloud"/></p>
					</div>
				</div>

			</div>

			<a href="./Sign.jsp" class="btn btn-secondary" role="button">날씨 상세정보&raquo;</a>
			
			<div class="text-right">
			<a class="text-white" href="?language=ko_KR">Korean</a> | <a class="text-white" href="?language=en">English</a>
			</div>

		</div>

	</div>
	</fmt:bundle>

	<script type="text/javascript" src="../resources/js/clock.js"></script>
	<script type="text/javascript" src="../resources/js/weather.js"></script>

</body>
</html>