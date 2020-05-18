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




   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
   <link rel="stylesheet" href="${R}res/css/styles.css">
   <link rel="stylesheet" href="${R}res/css/sub-menu-styles.css">
   <link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
	<link href="${R}res/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
	<link href="${R}res/css/modern-business.css" rel="stylesheet">
   
  <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="${R}res/js/jquery-latest.js" type="text/javascript"></script>
   <script src="${R}res/js/script.js"></script>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=poh5ijsd1t&callback=initMap"></script>

<title>조운대부</title>



</head>
<body>

		<%@include file="include/nav.jsp"%>
<div id="imgrelative">
	<img src="${R}res/images/게시판로고.png" alt="leaf" width="100%" height="100%" align="center">
	</div>
	<!-- Page Content -->
	<div class="container">


		<!-- Content Row -->
		<div class="row">
			<!-- menu -->
			<%@include file="include/first_menu.jsp"%>
			<!-- Content Column -->
			<div class="col-lg-9 mb-4">
			<div id="submenufont">
			<p>찾아오시는 길</p>
			
			<hr style="border:  solid 0.5px gray; width: 50%;"align="center">
			<div id="map" style="width: 600px; height: 400px; display:inline-block;"></div>
			</div>
			<hr style="border:solid 0.5px gray;margin-left:50px; margin-top:30px; width: 85%;"align="left">
				<p style="font-size: 15px; font-weight:bold;margin-left:50px;color:#6888ef;">조은대부</p>
				<p style="font-size: 20px; font-weight:bold; margin-left:50px;color:gray;">주소 : 경기도 광주시 문화로 129,2층(경안동)</p>
				<hr style="border:  solid 0.5px gray;margin-left:50px; width: 85%;"align="left">

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
	<script type="text/javascript">
        var map = null;

        function initMap() {
        	var map = new naver.maps.Map('map', {
        	    center: new naver.maps.LatLng(37.414657, 127.251172),
        	    zoom: 18
        	});

        	var marker = new naver.maps.Marker({
        	    position: new naver.maps.LatLng(37.414657, 127.251172),
        	    map: map
        	});
        }
    </script>



</body>
</html>