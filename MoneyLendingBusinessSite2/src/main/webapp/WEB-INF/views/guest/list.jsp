<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
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
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="${R}res/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${R}res/css/modern-business.css" rel="stylesheet">

<title>조운대부</title>
</head>

<%--  


		body 


 --%>


<body>

<!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-light bg-light fixed-top" style = "font-size:medium;">
		<div class="container">

			<a class="navbar-brand" href="index"><img href="index"
				src="${R}res/images/title6.jpg" width="200px"></img></a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive" >
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
							<a class="dropdown-item" href="list?bd=1">공지사항</a> <a
								class="dropdown-item" href="list?bd=2">FAQ</a>
						</div></li>

				</ul>
			</div>
		</div>
	</nav>

	<%--       container       --%>
	<div class="container">
		<%--       container - title       --%>
		<div>
			<h1 class="mt-4 mb-3">
				커뮤니티 <small>${ board.boardName }</small>
			</h1>

			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="list?bd=1">커뮤니티</a></li>
				<li class="breadcrumb-item active">${ board.boardName }</li>
			</ol>
		</div>
		<div class="row">

			<!-- 중심 -->
			<!-- 왼쪽메뉴 -->
			<div class="col-lg-3 mb-4">
				<div class="list-group">
					<a href="list?bd=1" class="list-group-item">공지사항</a> <a
						href="list?bd=2" class="list-group-item">FAQ</a>
				</div>
			</div>
			<div class="col-lg-9 mb-4" style="font-size: 12px;">
				</br>
				<%-- 글쓰기버튼 --%>
				<c:if test="${ board.id >= 0 }">
					<div style="height: 50px; float:left; font-size: 12px;">
						<a class="btn btn-primary" href="create?${pagination.queryString}"
							style="font-size: 12px;"> <i class="glyphicon glyphicon-plus"></i>
							글 쓰기
						</a>
					</div>
				</c:if>
				<div style="float: right; font-size: 12px;">
					<form:form method="get" modelAttribute="pagination"
						class="form-inline mb5">
						<form:hidden path="pg" value="1" />
						<form:hidden path="bd" />
						<span style="width: 35px;">검색:</span>
						<div style="width: 100px;">
							<form:select path="sb" class="form-control ml20"
								itemValue="value" itemLabel="label" items="${ searchBy }"
								style=" font-size:12px; height:30px;" />
						</div>
						<div>
							<form:input path="st" class="form-control"
								style=" font-size:12px; height:30px;" placeholder="검색문자열" />
						</div>

						<%-- 검색 버튼 --%>
						<button type="submit" class="btn btn-default"
							style="font-size: 12px;">
							<i class="glyphicon glyphicon-search"></i> 검색
						</button>

						<%-- 검색 취소 --%>
						<c:if test="${ pagination.sb > 0 || pagination.ob > 0}">
							<a class="btn btn-default" href="list?bd=${board.id}&pg=1"> <i
								class="glyphicon glyphicon-ban-circle"></i> 검색취소
							</a>
						</c:if>


					</form:form>
				</div>
				<table id="articles" class="table table-bordered">
					<thead>
						<tr>
							<th class="text-center" style="width: 80px;">no</th>
							<th>제목</th>
							<th style="width: 150px;">글쓴이</th>
							<th style="width: 150px;">작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="article" items="${ list }">
							<tr data-url="view?id=${article.id}&${ pagination.queryString }">
								<td class="text-center">${ article.no }</td>
								<td>${ article.title }</td>
								<td>${ article.user.name }</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${ article.writeTime }" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<my:pagination pageSize="${ pagination.sz }"
					recordCount="${ pagination.recordCount }" queryStringName="pg" />
			</div>
		</div>
	</div>
	<!-- 하단바 -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="text-white ">
				경기화성-0020 </br> </br> 주소 : 경기도 화성시 팔탄면 시청로 934-2 I동 202호 I TEL : 031-352-0097
				I FAX : 031-352-5097 </br> </br> 이자율 : 월 0.6% ~ 2.0% I 연체이자율 : 년 24% 이내 I 수수료
				: 이자 외 별도부대비용 없음.</br> </br> 등록시도명칭 : 경기도 화성시청 경제정책과(031-369-2694) | 조기상환수수료
				없음.</br> </br>
			</p>
			<p class="text-white font-italic">"대출 시 귀하의 신용등급이 하락할 수 있습니다. 과도한
				빚 고통의 시작입니다"</p>
			<sec:authorize access="not authenticated">
				<a class="btn btn-default" href="${R}guest/login">관리자</a>
			</sec:authorize>
			<sec:authorize access="authenticated">
				<a class="btn btn-default" href="${R}user/logout_processing">로그아웃</a>
			</sec:authorize>
		</div>

	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="${R}res/vendor/jquery/jquery.min.js"></script>
	<script src="${R}res/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

<%--  


		body 


 --%>

</html>
