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
<body class="bg-dark">
	<div class="container">
		<div class="card card-login mx-auto mt-5"
			style="width: 400px; height: 250px;">
			<h5 class="card-header">Login</h5>

			<div class="card-body">
				<div class="form-group">
					<form method="post" action="login_processing">
						<div class="form-group">
							<input type="text" name="loginId" class="form-control"
								placeholder="loginId" />
						</div>
						<div class="form-group">
							<input type="password" name="passwd" class="form-control"
								placeholder="Password" />
						</div>
						<hr />

						<c:if test="${ param.error != null }">
							<div class="mt5 text-center" style="color: red;font-weight:bold; font-size:12px">로그인 실패했습니다!</div>
						</c:if>
						</br>
						<div>
							<button type="submit" class="btn btn-primary btn-block"
								style="height: 40px; text-size: 50px">
								<span class="glyphicon glyphicon-ok"></span> 로그인
							</button>

						</div>
					</form>
				</div>
				</br>

			</div>


		</div>
	</div>
</body>
</html>

