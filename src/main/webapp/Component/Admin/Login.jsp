<!-- web.xml에서 적용한 시큐리티 처리에 의한 로그인페이지  Admin.jsp실행시 로그인 과정 거침 -->
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!doctype html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Fonts -->
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../../resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="../../resources/css/admin_login.css">


<title>Admin_Login</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
		<div class="container">
			<a class="navbar-brand" href="#">Weather_Fit</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="../Weather.jsp">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="../Dress.jsp">Dress</a>
					</li>
				</ul>

			</div>
		</div>
	</nav>


	<main class="login-form">
		<div class="cotainer">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="card">
						<div class="card-header">관리자 권한 창</div>
						<%
							String error = request.getParameter("error");
						if (error != null) {
							out.println("<div class='alert alert-danger'>");
							out.println("아이디와 비밀번호를 확인해 주세요");
							out.println("</div>");
						}
						%>

						<div class="card-body">
							<form class="form-signin" action="j_security_check" method="post">
								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right">Admin ID</label>
									<div class="col-md-6">
										<input type="text" id="email_address" class="form-control"
											name="j_username" required autofocus>
									</div>
								</div>

								<div class="form-group row">
									<label for="password"
										class="col-md-4 col-form-label text-md-right">Admin
										Password</label>
									<div class="col-md-6">
										<input type="password" id="password" class="form-control"
											name="j_password" required>
									</div>
								</div>

								<div class="col-md-6 offset-md-4">
									<button type="submit" class="btn btn-primary">로그인</button>
									<a href="#" class="btn btn-link"> Forgot Your Password? </a>
								</div>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		</div>

	</main>

</body>
</html>