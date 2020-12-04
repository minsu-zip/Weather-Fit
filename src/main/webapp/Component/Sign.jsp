<!-- 로그인,회원가입 페이지 -->
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../resources/css/sign.css" />
<script type="text/javascript" src="../resources/js/validation.js"></script>

<title>Weather-Fit</title>
</head>

<%
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");
	
	if(user_id != null && user_pw != null){
		response.sendRedirect("./MoreWeather.jsp");
	}
%>

<body>

	<!-- 헤더 -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<img src="../resources/images/fit.svg" width="30" height="30" alt=""
			loading="lazy">

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="./Weather.jsp">Home</a></li>
			</ul>
		</div>
	</nav>

	<!-- 로그인 SIGN IN -->
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in"><label
				for="tab-1" class="tab">Sign In</label> <input id="tab-2"
				type="radio" name="tab" class="sign-up" checked><label for="tab-2"
				class="tab">Sign Up</label>
				
			<div class="login-form">
			
				<form action="./Signin_db.jsp" name="signin" method="post">
					<div class="sign-in-htm">
						<%
							String error2 = request.getParameter("error2");
							if (error2 != null) {
								out.println("<div class='alert alert-danger'>");
								out.println("로그인 실패");
								out.println("</div>");
							}
						%>
						<div class="group">
							<label for="user" class="label">ID</label> <input id="sign_id" name="sign_id"
								type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label> <input
								id="sign_password" name="sign_password" type="password" class="input">
						</div>
						<div class="group">
							<input id="check" type="checkbox" class="check" checked>
							<label for="check"><span class="icon"></span> Keep me
								Signed in</label>
						</div>
						<div class="group">
							<input type="submit" class="button" value="Sign In">
						</div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<a href="#forgot">Forgot Password?</a>
						</div>
					</div>
				</form>

				<!-- 회원가입 SIGN UP -->
				<form method="post" action="./Signup_db.jsp" name="signup">
					<div class="sign-up-htm">
						<%
						String error = request.getParameter("error");
						if (error != null) {
							out.println("<div class='alert alert-danger'>");
							out.println("아이디가 중복입니다.");
							out.println("</div>");
						}
						%>
						<div class="group">
							<label class="label">ID</label> <input id="id" name="id"
								type="text" class="input">
						</div>
						<div class="group">
							<label class="label">Email Address</label> <input type="text"
								id="email" name="email" class="input">
						</div>
						<div class="group">
							<label class="label">Password</label> <input type="password"
								id="password" name="password" class="input">
						</div>
						<div class="group">
							<label class="label">Repeat Password</label> <input
								type="password" id="confirmpassword" class="input">
						</div>
						<div class="group">
							<input type="button" class="button" value="Sign Up"
								onclick="Check_Signup()">
						</div>

						<div class="hr"></div>

						<div class="foot-lnk">
							<label for="tab-1">Already Member?</a>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>

	<%@ include file="Footer.jsp"%>
</body>
</html>