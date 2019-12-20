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
				<div class="card my-4">
					<h3 class="card-header" style="font-weight: bold;">문의하기</h3>
					<div class="card-body">
						<div class="form-group">
							<form:form method="post" modelAttribute="articleModel">
								<label>연락처</label>
								<form:input path="title" class="form-control"
									style="width:400px;" />
								<form:errors path="title" class="error" />
								</br>
								<label>추가내용</label>
								<textarea class="form-control" rows="15" path="body" name="body"></textarea>
								<form:errors path="body" class="error" />
						</div>
						</br>
						<button type="submit" class="btn btn-primary btn-block"
							style="height: 40px; text-size: 50px">
							<span class="glyphicon glyphicon-ok"></span> 문의하기
						</button>
						<a class="btn btn-danger"
							href="delete?id=${ article.id }&${ pagination.queryString }"
							data-confirm-send> <i class="glyphicon glyphicon-remove"></i>
							삭제
						</a>
						</form:form>
					</div>
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

			if (confirm("정말 삭제하시겠습니까??") == true) { //확인
				$('form').submit();
			} else { //취소
				return;
			}

		}
	</script>
</body>
<!-- Footer -->
<footer class="py-5 bg-dark">
	<%@include file="include/footer.jsp"%>
</footer>



</html>
