<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

			
			<div  id="submenu">
			<img src="${R}res/images/커뮤니티.png" alt="leaf" width="200px" height="43px" align="center">
<ul>
   <li><a href="${R}guest/list?bd=2"><span>공지사항</span></a></li>
   
     <sec:authorize access="authenticated">
		<li class="active has-sub"><a href="${R}guest/list?bd=1"><span>문의하기</span></a></li>
		</sec:authorize>
		<sec:authorize access="not authenticated">
		<li class="active has-sub"><a href="${R}guest/FAQ"><span>문의하기</span></a></li>
		</sec:authorize>
    
    <li><a href="${R}guest/office"><span>카톡문의방법</span></a></li>
    
</ul>
<img src="${R}res/images/문의22.png" alt="leaf" width="200px" height="300px" align="center">
				<img src="${R}res/images/카톡문의2.png" alt="leaf" width="200px" height="300px" align="center">
</div>