<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
			<p class="text-white ">
				회사명 : 조운대부 I 대표 : 윤정훈 I 사업자등록번호 : 111-94-69031 I 대부업등록번호 : 경기광주 대부업 제231호</br> </br> 주소 : 경기도 광주시 문화로 129,2층(경안동) I TEL : 031-764-1222
				I FAX : 031-762-2080 </br> </br> 이자율 : 연 6% ~ 24% I 연체이자율 : 연 24% 이내 I 수수료
				: 이자 외 별도부대비용 없음.</br> </br> 등록시도명칭 : 경기도 광주시 | 조기상환수수료
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
