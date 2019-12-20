<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<!--              script                -->
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=poh5ijsd1t&callback=initMap"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/res/js/bootstrap.min.js"></script>
<script src="${R}res/common.js"></script>


<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${R}res/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${R}res/css/modern-business.css" rel="stylesheet">

<title>조운대부</title>

</head>
<body>
	<%--       	상단바         	--%>
	<!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-light bg-light fixed-top"
		style="font-size: medium;">
		<%@include file="include/nav.jsp" %>
	</nav>
	
	<img src="${R}res/images/게시판로고.png" alt="leaf" width="1540px" height="230px" align="center">
	
	<!-- Page Content -->
	<div class="container">
	
		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
		
			전자어음 <small>전자어음배서방법</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.html">전자어음</a></li>
			<li class="breadcrumb-item active">전자어음배서방법</li>
			
		</ol>

		<!-- Content Row -->
		<div class="row">
			<!-- Sidebar Column -->
			<div class="col-lg-3 mb-2">
				<div class="list-group">
					<a href="greeting" class="list-group-item">인사말</a> <a href="map"
						class="list-group-item">찾아오시는길</a> <a href="office"
						class="list-group-item">사무실전경</a> <a href="registration"
						class="list-group-item">대부업등록증</a>
						
					
				</div>
				<img src="${R}res/images/문의.png" alt="leaf" width="200px" height="300px" align="center">
				<img src="${R}res/images/카톡문의2.png" alt="leaf" width="200px" height="300px" align="center">
			</div>
			<!-- Content Column -->
			<div class="col-lg-9 mb-4">
			
				<img src="${R}res/images/전자어음배서방법1.png" alt="leaf" width="850px" height="450px" align="center">
				<img src="${R}res/images/전자어음배서방법2.png" alt="leaf" width="850px" height="450px" align="center">

			</div>
		</div>
	</div>

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<%@include file="include/footer.jsp" %>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="${R}res/vendor/jquery/jquery.min.js"></script>
	<script src="${R}res/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

   

</body>
</html>