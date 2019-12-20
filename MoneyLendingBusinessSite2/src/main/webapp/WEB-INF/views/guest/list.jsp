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

<title>조운대부</title>
</head>
<body>

	<!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-light bg-light fixed-top"
		style="font-size: medium;">
		<%@include file="include/nav.jsp"%>
	</nav>
	<img src="${R}res/images/게시판로고.png" alt="leaf" width="1540px"
		height="230px" align="center">
	<%--       container       --%>
	<div class="container" style="height: 650px;">
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
			<div class="col-lg-9 mb-4" style="font-size: 12px;">
				</br>
				<%-- 글쓰기버튼 --%>
				<div style="height: 50px;">
					<div style="height: 50px; float: left; font-size: 12px;">

						<sec:authorize access="authenticated">
							<a class="btn btn-primary"
								href="create?${pagination.queryString}" style="font-size: 12px;">
								<i class="glyphicon glyphicon-plus"></i> 글 쓰기
							</a>
						</sec:authorize>

					</div>
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
					</div>
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

						</tr>
					</thead>
					<tbody>
						<c:forEach var="article" items="${ list }">
							<tr data-url="view?id=${article.id}&${ pagination.queryString }">
								<td class="text-center">${ article.no }</td>
								<td>${ article.title }</td>
								<td>${ article.user.name }</td>
								<%-- <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${ article.writeTime }" /></td>--%>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<my:pagination pageSize="${ pagination.sz }"
					recordCount="${ pagination.recordCount }" queryStringName="pg" />
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
