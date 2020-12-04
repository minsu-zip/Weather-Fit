<!-- Dress를 추가하는 페이지 -->
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<title>DressUpload</title>

<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>


</head>
<body>

	<jsp:include page="./Menu.jsp" />

	<div class="jumbotron">
		<div class="container">
			<h3 class="display-3">Fit Upload</h3>
		</div>
	</div>


	<div class="container">
		<form name="newProduct" action="ProcessAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			
			<div class="form-group row">
				<label class="col-sm-2">
					Fit 코드
				</label>
				<div class="col-sm-3">
					<input type="text" name="dressId" id="dressId" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">
					Fit 제목
				</label>
				<div class="col-sm-3">
					<input type="text" name="title" id="title" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">
					상세정보
				</label>
				<div class="col-sm-3">
					<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>
		
			
			<div class="form-group row">
				<label class="col-sm-2 col-sm-10">Fit 이미지</label>
				<div class="col-sm-5">
					<input type="file" name="Image" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
			
		</form>
	</div>

	<jsp:include page="./Footer.jsp" />

</body>
</html>