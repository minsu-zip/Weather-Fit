<!-- Component_Menubar -->
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	 <img src="../resources/images/fit.svg" width="30" height="30" alt="" loading="lazy">
	
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="./Weather.jsp">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="./MoreWeather.jsp">More</a></li>
			<li class="nav-item"><a class="nav-link" href="./Dress.jsp">Dress</a></li>
			<li class="nav-item"><a class="nav-link" href="./DressUpload.jsp">Upload</a></li>
			<li class="nav-item"><a class="nav-link" href="./Cart.jsp">Cart</a></li>
		</ul>
		<div class="nav-item">
		<%
			String user_id = (String) session.getAttribute("userID");
			
			if(user_id == null){
				response.sendRedirect("./Sign.jsp");
			}
			
			String text="";
			Cookie[] cookies = request.getCookies();
			
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getValue().equals(user_id)){
					text = cookies[i].getValue();
				}
			}
			out.println(text+"님 반갑습니다");
		%>
		</div>
		<div class="nav-item"><a class="nav-link" href="./Logout.jsp">Logout</a></div>
		<div class="nav-item"><a class="nav-link" href="./Admin/Admin.jsp">Admin</a></div>
	</div>
	
</nav>
