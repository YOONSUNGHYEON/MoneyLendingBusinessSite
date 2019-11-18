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
		<div class="container">

			<a class="navbar-brand" href="index"><img href="index"
				src="${R}res/images/title6.jpg" width="200px"></img></a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto" height="200px">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownPortfolio" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> 회사소개 </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item" href="greeting">인사말</a> <a
								class="dropdown-item" href="map">찾아오시는길</a> <a
								class="dropdown-item" href="office">사무실전경</a> <a
								class="dropdown-item" href="registration">대부업등록증</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							전자어음할인 </a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							당좌가계수표할인 </a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							커뮤니티 </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
<a class="dropdown-item" href="list?bd=0">공지사항</a> <a
								class="dropdown-item" href="list?bd=1">FAQ</a>
						</div></li>

				</ul>
			</div>
		</div>
	</nav>


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
						<a href="list?bd=0" class="list-group-item">공지사항</a> <a
							href="list?bd=1" class="list-group-item">FAQ</a>
					</div>
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
							href="edit?id=${ article.id }&${ pagination.queryString }"> <i
							class="glyphicon glyphicon-pencil"></i> 수정
						</a> <a class="btn btn-danger"
							href="delete?id=${ article.id }&${ pagination.queryString }"
							data-confirm-delete> <i class="glyphicon glyphicon-remove"></i>
							삭제
						</a> 
						</sec:authorize>
						<a class="btn btn-default"
							href="list?${ pagination.queryString }"> <i
							class="glyphicon glyphicon-list"></i> 목록으로
						</a>
					</div>
						
				</div>
			</div>
		</div>
		<!-- 하단바 -->
		<footer class="footer py-5 bg-dark" id="footer">
			<div class="container">
				<p class="text-white ">
					경기화성-0020 </br> </br> 주소 : 경기도 화성시 팔탄면 시청로 934-2 I동 202호 I TEL : 031-352-0097
					I FAX : 031-352-5097 </br> </br> 이자율 : 월 0.6% ~ 2.0% I 연체이자율 : 년 24% 이내 I 수수료
					: 이자 외 별도부대비용 없음.</br> </br> 등록시도명칭 : 경기도 화성시청 경제정책과(031-369-2694) | 조기상환수수료
					없음.</br> </br>
				</p>
				<p class="text-white font-italic">"대출 시 귀하의 신용등급이 하락할 수 있습니다.
					과도한 빚 고통의 시작입니다"</p>
				<sec:authorize access="not authenticated">
					<a class="btn btn-default" href="${R}guest/login">관리자</a>
				</sec:authorize>
				<sec:authorize access="authenticated">
					<a class="btn btn-default" href="${R}user/logout_processing">로그아웃</a>
				</sec:authorize>
			</div>

		</footer>
	</div>
</body>


<!-- Bootstrap core JavaScript -->
<script src="${R}res/vendor/jquery/jquery.min.js"></script>
<script src="${R}res/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</html>

