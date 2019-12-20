<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					전자어음할인 </a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="navbarDropdownPortfolio">
					<a class="dropdown-item" href="greeting">전자어음이란</a> <a
						class="dropdown-item" href="way">전자어음배서방법</a> <a
						class="dropdown-item" href="office">사무실전경</a> <a
						class="dropdown-item" href="registration">대부업등록증</a>
				</div></li>
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
					<a class="dropdown-item" href="list?bd=2">공지사항</a>
					<sec:authorize access="not authenticated">
						<a class="dropdown-item" href="FAQ?bd=1">FAQ</a>
					</sec:authorize>
					<sec:authorize access="authenticated">
						<a class="dropdown-item" href="list?bd=1">FAQ</a>
					</sec:authorize>

				</div></li>

		</ul>
	</div>
</div>