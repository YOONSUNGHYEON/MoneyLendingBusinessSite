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
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />




   <meta http-equiv="X-UA-Compatible" content="IE=edge">

   
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${R}res/common.js"></script>
<script src="${R}res/summernote/summernote.js"></script>

<link rel="stylesheet" href="${R}res/css/styles.css">
<link rel="stylesheet" href="${R}res/css/sub-menu-styles.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="${R}res/summernote/summernote.css" rel="stylesheet">
<link href="${R}res/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${R}res/css/modern-business.css" rel="stylesheet">
<title>조운대부</title>


</head>
<body>

		<%@include file="include/nav.jsp"%>

	<div id="imgrelative">
		<img src="${R}res/images/게시판로고.png" alt="leaf" width="100%" height="100%" align="center">
	</div>
	<div class="container">
		<%--       container - title       --%>
		
		<div class="row">

			<!-- 중심 -->
			<!-- 왼쪽메뉴 -->
			<%@include file="include/third_menu.jsp"%>
			<div class="col-lg-9 mb-4">
			<div id="submenufont">
				<p>문의하기</p>
				<hr style="border: solid 0.5px gray; width: 50%;" align="center">
				</div>
				<div class="card my-4">
					
					<div class="card-body">
						<div class="form-group">
							<form:form method="post" modelAttribute="articleModel">
								<label>연락처</label>
								<form:input path="title" class="form-control"
									style="width:400px;" />
								<form:errors path="title" class="error" />
								</br>
								<label>추가내용</label>
								<div id="summernote">${ articleModel.body }</div>
								<form:errors path="body" class="error" />
								<input type="hidden" name="body" />
						</div>
						</br>
						
						
						</form:form>
						<div id="buttons">
					<a class="btn btn-primary btn-block"
							style="height: 40px; text-size: 50px" data-confirm-send onclick="save()"> <i
						></i> 문의하기</a>
					
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
