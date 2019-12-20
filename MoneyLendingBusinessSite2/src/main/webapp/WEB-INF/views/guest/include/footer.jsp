<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<!-- /.container -->
