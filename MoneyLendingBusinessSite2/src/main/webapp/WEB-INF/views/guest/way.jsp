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
			<%@include file="include/second_menu.jsp"%>

			<!-- Content Column -->
			<div class="col-lg-9 mb-4" id="submenufont">
				<p>전자어음배서방법</p>
				<hr style="border: solid 0.5px gray; width: 50%;" align="center">
				<img src="${R}res/images/전자어음배서방법555.png" alt="leaf" width="700px"
					height="300px" align="center"> <img
					src="${R}res/images/전자어음배서방법66.png" alt="leaf" width="700px"
					height="300px" align="center">

			</div>
		</div>
	</div>

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<%@include file="include/footer.jsp"%>
	</footer>





</body>
</html>