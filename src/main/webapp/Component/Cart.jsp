<!-- 찜목록 페이지  AddCart에서 기입한 정보를 받아와 화면에 구성해준다. -->
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Dress"%>
<%@ page import="dao.DressRepository"%>


<title>상품 목록</title>

<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />

<title>장바구니</title>
</head>
<body>
	<jsp:include page="Menu.jsp" />

	<div class="jumbotron">
		<div class="container">
			<h3 class="display-3">Fit 찜 목록</h3>
		</div>
	</div>


	<div class="container">

		<div class="row">
			<%
					int sum = 0;
					ArrayList<Dress> cartList = (ArrayList<Dress>) session.getAttribute("cartlist");
					if(cartList == null){
						cartList = new ArrayList<Dress>();
					}
					
					for(int i=0; i<cartList.size(); i++){
						Dress dress = cartList.get(i);
						
				%>
			<div class="col-lg-4 col-sm-6 portfolio-item">
				<div class="card h-100">
					<img class="card-img-top"
						src="../resources/images/<%=dress.getImage() %>">
					<div class="card-body">
						<h4 class="card-title">
							<%=dress.getTitle()%>
						</h4>
						<p class="card-text"><%=dress.getDescription()%></p>
						<a href="./removeCart.jsp?id=<%=dress.getDressId()%>"
							class="btn badge-danger">삭제</a>
					</div>
				</div>
			</div>

			<%
				}
			%>

		</div>

		<a href="./Dress.jsp" class="btn btn-secondary"> &laquo;
			Weather_Fit</a>

		<hr>
	</div>

	<jsp:include page="Footer.jsp" />

</body>
</html>