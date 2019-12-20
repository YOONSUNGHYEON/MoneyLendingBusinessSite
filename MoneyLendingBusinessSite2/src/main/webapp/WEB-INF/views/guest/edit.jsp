<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${R}res/common.js"></script>
<script src="${R}res/summernote/summernote.js"></script>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="${R}res/summernote/summernote.css" rel="stylesheet">
<link href="${R}res/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${R}res/css/modern-business.css" rel="stylesheet">

</head>
<body>
	<!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-light bg-light fixed-top"
		style="font-size: medium;">
		<%@include file="include/nav.jsp"%>
	</nav>
<img src="${R}res/images/게시판로고.png" alt="leaf" width="1540px" height="230px" align="center">
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
					<a class="list-group-item" href="list?bd=2">공지사항</a>
					<sec:authorize access="not authenticated">
						<a class="list-group-item" href="FAQ?bd=1">FAQ</a>
					</sec:authorize>
					<sec:authorize access="authenticated">
						<a class="list-group-item" href="list?bd=1">FAQ</a>
					</sec:authorize>
				</div>
				<img src="${R}res/images/문의.png" alt="leaf" width="200px" height="300px" align="center">
				<img src="${R}res/images/카톡문의2.png" alt="leaf" width="200px" height="300px" align="center">
			</div>
			<div class="col-lg-9 mb-4" style="font-size: 12px;">
				<form:form method="post" modelAttribute="articleModel">
					<span>제목 </span>
					<form:input path="title" class="form-control" />
					<form:errors path="title" class="error" />
					<br />
					<div id="summernote">${ articleModel.body }</div>
					<form:errors path="body" class="error" />
					<input type="hidden" name="body" />
				</form:form>


				<div id="buttons">
					<a class="btn btn-primary" onclick="save()"> <i
						class="glyphicon glyphicon-hdd"></i> 저장
					</a> <a class="btn btn-default" href="list?${ pagination.queryString }">
						<i class="glyphicon glyphicon-list"></i> 목록으로
					</a>
				</div>
			</div>
		</div>
	</div>
	</div>

	<script>
		$('#summernote').summernote({
			height : 500
		});

		function save() {
			var s = $('#summernote').summernote('code');
			$('input[name=body]').val(s);
			$('form').submit();
		}
	</script>
</body>
<!-- Footer -->
<footer class="py-5 bg-dark">
	<%@include file="include/footer.jsp"%>
</footer>


</html>
