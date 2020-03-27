<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar fixed-top navbar-light bg-light ">
<div id="cssmenu">
<ul>
<a class="navbar-brand" href="${R}guest/index"><img href="index" align="center"
				src="${R}res/images/title6.jpg" width="200px"></img></a>
   <li class="has-sub"><span class="submenu-button"></span><a href="${R}guest/greeting">회사소개</a>
   <ul>
         <li ><span class="submenu-button"></span><a href="${R}guest/greeting">인사말</a>
            
         </li>
         <li ><span class="submenu-button"></span><a href="${R}guest/map">찾아오시는길</a>
            
         </li>

      </ul>
   </li>
   <li class=" has-sub"><span class="submenu-button"></span><a href="bill">전자어음</a>
      <ul>
         <li ><span class="submenu-button"></span><a href="bill">전자어음할인</a>
            
         </li>
         <li ><span class="submenu-button"></span><a href="way">전자어음배서방법</a>
            
         </li>
      </ul>
   </li>
    <li class=" has-sub"><span class="submenu-button"></span><a href="bill2">가계/당좌</a>
      <ul>
         <li ><span class="submenu-button"></span><a href="bill2">가계/당좌수표</a>
            
         </li>

      </ul>
   </li>
   <li class=" has-sub"><span class="submenu-button"></span><a href="list?bd=2">커뮤니티</a>
      <ul>
         <li ><span class="submenu-button"></span><a href="list?bd=2">공지사항</a>
            
         </li>
         <li ><span class="submenu-button"></span><a href="list?bd=1">문의하기</a>
            
         </li>
         <li ><span class="submenu-button"></span><a href="office">카톡문의방법</a>
            
         </li>
      </ul>
   </li>
</ul>
</div>
</nav>