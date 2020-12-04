<!-- Dress 정보들을 보여주는 페이지 -->
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
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

<link rel="stylesheet" href="../resources/css/dress.css" />

<meta charset="EUC-KR">
<title>Weather-Fit</title>

</head>

<body>
	<%@ include file="Menu.jsp"%>

	<!-- Page Content -->
	<div class="container">

		<h1 class="my-4 text-center font-italic">Welcome to Weather-Fit</h1>

		<!-- Portfolio Section -->
		<h2>Choose Fit</h2>

		<div class="row">
			<%@ include file="Dbconn.jsp"%>
			<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from dress";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
		%>
			<div class="col-lg-4 col-sm-6 portfolio-item">
				<div class="card h-100">
					<img class="card-img-top"
						src="../resources/images/<%=rs.getString("image")%>">
					<div class="card-body">
						<h4 class="card-title">
							<%=rs.getString("title")%>
						</h4>
						<p class="card-text"><%=rs.getString("description")%></p>

						<a href="./AddCart.jsp?id=<%=rs.getString("dressid")%>"
							class="btn btn-outline-danger" onclick="addToCart()">찜하기♥</a>
					</div>
				</div>
			</div>

			<%
			}
		%>

			<!-- /.row -->

			<!-- Features Section -->
			<div class="row">
				<div class="col-lg-6">
					<h2>기온별 옷차림</h2>
					<p>Season</p>
					<ul>
						<li>Spring</li>
						<li>Summer</li>
						<li>Fall</li>
						<li>Winter</li>
					</ul>
					<p>아침 저녁으로 일교차가 큰 요즘 기온별 옷차림이 이목을 끈다. 기상청에 따르면 기압골의 영향에서 벗어나 중국
						북부지방에서 확장하는 고기압의 영향을 받아 전국이 대체로 흐린 뒤 오후부터 차차 맑아지겠다. 강원 영서 남부와 충북,
						남부 내륙 제주도에는 아침까지 5mm 내외의 비가 오는 곳이 있겠다. 기온은 평년보다 바람이 강하게 불어 체감온도가
						낮아 다소 춥겠다. 낮 최고기온은 14∼21도로 예보됐다. 지역별 최저~최고 기온은 서울·수원 12~16도, 인천
						12~15도, 춘천 12~15도, 강릉 14~19도, 청주·대전 14~17도, 세종 12~17도, 전주 15~17도,
						광주 15~18도, 대구 13~19도, 부산 17~21도, 울산 14~20도, 창원 15~21도, 제주 18~19도다.

						이에 세탁 전문점 '월드크리닝'의 기온별 옷차림 표에 따르면 4도부터는 패딩, 두꺼운코트, 목도리, 기모제품을
						5~8도에는 코트, 가죽자켓, 히트텍, 니트, 레깅스를 9~11도에는 자켓, 트렌치코트, 야상, 니트. 청바지,
						스타킹을 입는다. 12~16도 사이에는 재킷, 가디건, 야상, 스타킹, 청바지, 면바지를 17도~19도 사이에는 얇은
						니트, 맨투맨, 가디건, 청바지를 입는다. 20~22도에는 얇은 가디건, 긴팔 면바지, 청바지를 입고, 23~27도
						사이에는 반팔, 얇은 셔츠, 반바지, 면바지를 입는다. 28도 이상에는 민소매, 반팔, 반바지 원피스를 입는 것으로
						나타났다. 출처 : http://m.kyeongin.com/view.php?key=20181010000733388</p>
				</div>
				<div class="col-lg-6">
					<img class="img-fluid rounded" src="../resources/images/main.jpg"
						alt="">
				</div>
			</div>
			<!-- /.row -->

			<hr>

			<!-- Call to Action Section -->
			<div class="row mb-4">
				<div class="col-md-8">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Molestias, expedita, saepe, vero rerum deleniti beatae veniam
						harum neque nemo praesentium cum alias asperiores commodi.</p>
				</div>
				<div class="col-md-4">
					<a class="btn btn-lg btn-secondary btn-block" href="#">Page Top</a>
				</div>
			</div>

		</div>
		<!-- /.container -->



		<%@ include file="Footer.jsp"%>
</body>

</html>