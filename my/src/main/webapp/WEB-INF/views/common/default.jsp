<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style>
  body {
  	margin:0px;
  }
  header {
  	width:1675px;
  	height:100px;
  	margin:auto;
  	background:#0270E3;
  	color:white;
  }
  header a {
  	text-decoration:none;
  	color:white;
  }
  
  header #left {
  	float:left;
  	padding-top:2px;
  	width:200px;
  	margin-left:237px;
  }
  header #right {
  	float:right;
  	margin-top:40px;
  	margin-right:238px;
  	font-weight:900;
  	font-size:14px;
  }
  header #username:hover {
  	text-decoration:underline;
  }
  header #logout {
  	display:inline-block;
  	text-align:center;
  	width:60px;
  	height:20px;
  	font-size:14px;
  	border:1px solid white;
  	border-radius:5px;
  }
  header #mymenu {
  	position:relative;
  	display:inline-block;
  	height:25px;
  	cursor:pointer;
  }
  header #mymenu #mysub {
  	padding-left:0px;
  	position:absolute;
  	top:4px;
  	border:1px solid #152B76;
  	background:#152B76;
  	z-index:2;
  	padding:5px;
  	visibility:hidden;
  }
  header #mymenu #mysub li {
  	list-style-type:none;
  	width:60px;
  	height:25px;
  	cursor:pointer;
  }
  header #mymenu #mysub li:hover {
  	text-decoration:underline;
  }
  
  nav {
  	width:1675px;
  	height:65px;
  	margin:auto;
  	background:#0368DA;
  	padding-top:3px;
  }
  nav a {
  	text-decoration:none;
  	color:white;
  	cursor:pointer;
  }
  nav .sub li:hover {
  	font-size:15px;
  }
  nav #left {
  	float:left;
  	padding-top:0px;
  	text-align:center;
  	margin-top:-5px;
  	font-weight:900;
  	font-size:14px;
  	color:white;
  	margin-left:237px;
  }
  nav #right {
  	float:right;
  	margin-right:238px;
  }
  nav #main {
  	padding-left:0px;
  }
  nav #main > li {
  	list-style-type:none;
  	display:inline-block;
  	height:20px;
  	padding:10px;
  	padding-right:40px;
	text-align:left;
  	margin-top:0px;
  	left:40px;
  }
  nav .menu {
  	position:relative;
  }
  nav .menu .sub {
  	position:absolute;
  	z-index:1;
	background:#152B76;
	left:0px;
	padding-left:5px;
	text-align:left;
	top:40px;
	visibility:hidden;
  }
  nav .menu .sub > li {
  	list-style-type:none;
  	width:300px;
  	height:30px;
  	position:relative;
  	padding:10px;
  }
  
  nav #ticket {
  	display:inline-block;
  	width:160px;
  	height:24px;
  	background:white;
  	color:#0368DA;
  	font-weight:900;
  	font-size:15px;
  	text-align:center;
  	margin-right:20px;
  	padding-top:18px;
  	padding-bottom:15px;
  	margin-top:3px;
  	cursor:pointer;
  	text-align:center;
  }
  
  nav #mainmenu {
    cursor:pointer;
  }
  
  
  footer {
  	width:1675px;
  	margin:auto;
  }
  footer #left {
  	display:inline-block;
  	width:200px;
	color:#8C8C8C;
  	font-size:12px;
  	float:left;
  	margin-left:300px;
  	margin-top:30px;
  	margin-bottom:50px;
  }
  footer #end {
  	width:1675px;
  	height:40px;
  	background:#0270E3;
  	margin-top:150px;
  }
 </style>
 <script>
  	function view_sub(n)
  	{
  		document.getElementsByClassName("sub")[n].style.visibility="visible";
  		document.getElementsByClassName("menu")[n].style.background="#152B76";
  	}
  	function hide_sub(n)
  	{
  		document.getElementsByClassName("sub")[n].style.visibility="hidden";
  		document.getElementsByClassName("menu")[n].style.background="#0368DA";
  	}
  	function adminpage()
  	{
  		open("../admin/admin_main","","")
  	}
 </script>
 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
  	$(function()
  	{
  		$("#mymenu").click(function()
  		{
  			$("#mysub").css("visibility","visible");
  		});
  		$("#mysub").mouseover(function()
  		{
  		  	$("#mysub").css("visibility","visible");
  		});
  		$("#mymenu").mouseout(function()
  		{
  			$("#mysub").css("visibility","hidden");
  		});
  	});
  </script>
</head>
	<decorator:head/>
<body>
 <header>
  <a href="../main/main"><div id="left"> <img src="../resources/default/logo.png"> </div></a>
  <div id="right"> 
  	
  	<c:if test="${userid==null}">
  	  <a href="../member/member_input"> 회원가입 </a> |
  	 <a href="../login/login"> 로그인 </a> 
  	 | <a href="../schedule/test"> 사이트 맵 </a> 
  	</c:if>
  	<c:if test="${userid!=null}">
  	 <span id="mymenu"> <span id="username"> ${name} </span>님
  	  <c:if test="${userid!='admin'}">
  	   <ul id="mysub">
  	     <li> <a href="../member/member_view"> 회원정보 </a></li> 
  	     <li> <a href="../member/cart_view"> 장바구니 </a></li> 
  	     <li> <a href="../member/jumun_view"> 예매내역 </a></li>
  	   </ul>
  	  </c:if>
  	  <c:if test="${userid=='admin'}">
  	   <ul id="mysub">
  	     <li onclick="adminpage()"> 관리하기 </li> 
  	   </ul>
  	  </c:if>
  	 </span>
  	<a href="../login/logout"> <span id="logout"> logout </span> </a>
  	| <a href="../schedule/test"> 사이트 맵 </a> 
  	</c:if>
  </div>
 </header>
 
 <nav>
   <div id="left">
    <ul id="main">
     <li class="menu" onmouseover="view_sub(0)" onmouseout="hide_sub(0)"> <span id="mainmenu"> 유니버설 </span> 
     	<ul class="sub">
     	  <li> <a href="../main/universal"> 유니버설 소개 </a></li>
     	  <li> <a href="../map/map"> 찾아오는 길 </a></li>
     	  <li> <a href="../map/maps"> 파크 맵 </a></li>
     	</ul>
      </li>
     <li class="menu" onmouseover="view_sub(1)" onmouseout="hide_sub(1)"> <span id="mainmenu"> 이벤트&어트랙션 </span> 
     	<ul class="sub">
     	  <li> <a href="../event/elist"> 이벤트 소개 </a> </li>
     	  <li> <a href="../attraction/attraction_list"> 어트랙션 소개 </a> </li>
     	</ul>
     </li>
     <li class="menu" onmouseover="view_sub(2)" onmouseout="hide_sub(2)"> <span id="mainmenu"> 영업시간 </span>
     	<ul class="sub">
     	  <li> <a href="../schedule/schedule"> 운영시간 </a> </li>
     	  <li> <a href="../schedule/close"> 운휴안내 </a> </li>
     	</ul>
     </li>
     <li class="menu" onmouseover="view_sub(3)" onmouseout="hide_sub(3)"> <span id="mainmenu"> 티켓정보 </span> 
     	<ul class="sub">
     	  <li> <a href="../ticket/tlist"> 예매권 </a> </li>
     	  <li> <a href="../ticket/tcontent?pcode=T01"> 스튜디오 패스(대인) </a> </li>
     	  <li> <a href="../ticket/tcontent?pcode=T02"> 스튜디오 패스(소인) </a> </li>
     	  <li> <a href="../ticket/tcontent?pcode=T03"> 익스프레스 패스 </a> </li>
     	</ul>
     </li>
     <li class="menu" onmouseover="view_sub(4)" onmouseout="hide_sub(4)"> <span id="mainmenu"> 즐기기 </span>
     	<ul class="sub">
     	  <li> <a href="../gongji/gongji_list"> 공지사항 </a> </li>
     	  <li> <a href="../hugi/hlist"> 후기 </a> </li>
     	  <li> <a href="../main/enjoy"> 즐기기 팁 </a> </li>
     	</ul>
      </li>
    </ul>
   </div>
   <div id="right">
   <a href="../ticket/tlist"> <span id="ticket"> 티켓 예매 </span> </a>
   </div>
 </nav>
	<decorator:body/>
 <footer>
   <hr>
 	<div>
 	   <span id="left"> © 2022 Universal Studios. All rights reserved. Some imagery shown throughout our website does not represent current operational and safety guidelines.</span>
 	</div>
 	<div id="end"> </div>
 </footer>

</body>
 

</html>