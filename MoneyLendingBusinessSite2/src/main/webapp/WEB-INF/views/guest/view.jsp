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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<!--              script                -->
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

<style>
html, body {
	height: 100%;
}

#container {
	min-height: 100%;
	position: relative;
}

#container #content {
	padding-bottom: 250px;
	min-height: 650px;
}

#footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 250px;
}
</style>
<title>조운대부</title>
</head>
<body>
	<%--       	상단바         	--%>
	<!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-light bg-light fixed-top"
		style="font-size: medium;">
		<%@include file="include/nav.jsp"%>
	</nav>

	<img src="${R}res/images/게시판로고.png" alt="leaf" width="1540px"
		height="230px" align="center">
	<div id="container">
		<div class="container">
			<%--       container - title       --%>
			<div>
				<h1 class="mt-4 mb-3">
					커뮤니티 <small>${ board.boardName }</small>
				</h1>

				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="list?bd=0">커뮤니티</a></li>
					<li class="breadcrumb-item active">${ board.boardName }</li>
				</ol>
			</div>
			<hr />
			<div class="row">

				<!-- 중심 -->
				<!-- 왼쪽메뉴 -->
				<div class="col-lg-3 mb-4">
					<div class="list-group">
						<a class="list-group-item" href="list?bd=2">공지사항</a>
						<sec:authorize access="not authenticated">
							<a class="list-group-item" href="FAQ?bd=1">FAQ</a>
						</sec:authorize>
						<sec:authorize access="authenticated">
							<a class="list-group-item" href="list?bd=1">FAQ</a>
						</sec:authorize>

					</div>
					<img src="${R}res/images/문의.png" alt="leaf" width="200px"
						height="300px" align="center"> <img
						src="${R}res/images/카톡문의2.png" alt="leaf" width="200px"
						height="300px" align="center">
				</div>
				<div class="col-lg-9 mb-4" style="font-size: 12px;" id="content">
					<h3>${ article.title }</h3>
					<hr />

					<div id="info">
						<span>${ article.user.name }</span>

						<%-- <span>글쓴시각:</span> <span><fmt:formatDate
								pattern="yyyy-MM-dd HH:mm:ss" value="${ article.writeTime }" /></span>--%>
					</div>
					<hr />
					<div id="body">${ article.body }</div>
					<hr />





					<div id="buttons" style="min-height: 20%;">
						<sec:authorize access="authenticated">
							<a class="btn btn-primary"
								href="edit?id=${ article.id }&${ pagination.queryString }">
								<i class="glyphicon glyphicon-pencil"></i> 수정
							</a>
							<a class="btn btn-danger"
								href="delete?id=${ article.id }&${ pagination.queryString }"
								data-confirm-delete> <i class="glyphicon glyphicon-remove"></i>
								삭제
							</a>
						</sec:authorize>
						<a class="btn btn-default" href="list?${ pagination.queryString }">
							<i class="glyphicon glyphicon-list"></i> 목록으로
						</a>
					</div>

				</div>
			</div>
		</div>

		<!-- Footer -->
		<footer class="py-5 bg-dark">
			<%@include file="include/footer.jsp"%>
		</footer>
	</div>
</body>


<!-- Bootstrap core JavaScript -->
<script src="${R}res/vendor/jquery/jquery.min.js"></script>
<script src="${R}res/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</html>

