<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<link rel="stylesheet" href="${R}res/css/styles.css">
<link rel="stylesheet" href="${R}res/css/sub-menu-styles.css">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${R}res/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${R}res/css/modern-business.css" rel="stylesheet">

<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>
<script src="${R}res/js/jquery-latest.js" type="text/javascript"></script>
<script src="${R}res/js/script.js"></script>

<title>조운대부</title>



</head>
<body>
	<%--       	상단바         	--%>
	<!-- Navigation -->

	<%@include file="include/nav.jsp"%>

	<div id="imgrelative">
		<img src="${R}res/images/게시판로고.png" alt="leaf" width="100%" height="100%" align="center">
	</div>
	<!-- Page Content -->
	<div class="container">



		<!-- Content Row -->
		<div class="row">
			<!-- menu -->
			<%@include file="include/fourth_menu.jsp"%>

			<!-- Content Column -->
			<div class="col-lg-9 mb-4">
				<div id="submenufont">
					<p>가계/당좌수표</p>
				</div>

				<hr style="border: solid 0.5px gray; width: 50%;" align="center">

				<div style="margin-left:40px; margin-top:60px; margin-bottom:40px; font-size: 15px;font-weight:bold;">
					<p style="font-size: 25px;color:#6788f1;">■가계수표</p>
					<br>
					<p>봉급생활자·연금수급권자·자영업자 등 개인이 발행하는 수표. 기업이 아닌 개인이 발행주체라는 점에서
						당좌수표와는 다르다. 또 은행이 발행 및 지급자가 되는 자기앞수표와도 구별된다.</p>
				</div>
				
				<div style="margin-left:40px;margin-top:40px;font-size: 15px;font-weight:bold;">
					<p style="font-size: 25px;color:#6788f1;'">■당좌수표</p>
					<br>
					<p>법인이나 사업자등록증을 가진 자가 은행에  당좌예금을 개설하고 당좌예금의 한도 내에서 발행하는 수표 . 보증수표(자기앞수표)와는 달리
						은행이 지급 보증을 하지 않으며 개설된 계좌의 수표자금 범위 내에서 발행되기 때문에 부도처리될 가능성이 있다.
						지급기일이 따로 정해져 있지 않기 때문에 바로 사용가능하다. 발행일로 부터 10일 이내에 제시해야하며, 6개월이 지나면
						소멸된다.</p>
				</div>
				<div style="margin-left:40px; margin-top:60px; margin-bottom:40px; font-size: 15px;font-weight:bold;">
					<p style="font-size: 20px;color:#6788f1;">■상담하실때 수취하신 가계/당좌수표 원본과 뒷면을 복사하신 후 의뢰인의 사업자 등록증과 함께 팩스로 보내주시면 됩니다.</p>
					
					
					</div>
				<div style="margin-left:40px; margin-top:60px; margin-bottom:40px; font-size: 15px;font-weight:bold;">
					<p style="font-size: 25px;color:#6788f1;">■구비서류</p>
					
					<p>1.의뢰인 사업자 등록증 사본<br>2.세금계산서 사본<br>3.신분증 사본<br>4.통장 사본</p>
					</div>
			</div>

		</div>
	</div>

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<%@include file="include/footer.jsp"%>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="${R}res/vendor/jquery/jquery.min.js"></script>
	<script src="${R}res/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>



</body>
</html>