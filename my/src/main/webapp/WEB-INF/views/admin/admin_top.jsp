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
  #main {
  	width:1200px;
  	height:65px;
  	margin:auto;
  	padding-left:0px;
  	text-align:center;
  	font-weight:900;
  	font-size:16px;
  	color:#0368DA;
  }
  #main .menu > a {
  	text-decoration:none;
  	color:#0368DA;
  }
  #main .sub a {
  	text-decoration:none;
  	color:white;
  }
  #main .sub li:hover {
  	font-size:17px;
  }
  #main {
  	padding-left:0px;
  }
  #main > li {
  	list-style-type:none;
  	width:150px;
  	display:inline-block;
  	height:35px;
  	padding-top:15px;
	text-align:center;
  	cursor:pointer;
  	border:1px solid #0368DA;
  	margin-left:20px;
  }
  #main > li:hover {
  	background:#0368DA;
  	color:white;
  }
  #main .menu {
  	position:relative;
  }
  #main  #sub {
  	position:absolute;
  	z-index:1;
	background:#0368DA;
	color:white;
	padding-left:0px;
	left:15px;
	text-align:center;
	top:50px;
	visibility:hidden;
	border:1px solid #0368DA;
	
  }
  #main .menu .sub > li {
  	list-style-type:none;
  	width:100px;
  	height:30px;
  	position:relative;
  	padding:10px;
  }

 </style>

 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
  	$(function()
  	{
  		$("#menu").click(function()
  		{
  			$("#sub").css("visibility","visible");
  		});
  		$("#sub").mouseover(function()
  		{
  		  	$("#sub").css("visibility","visible");
  		});
  		$("#menu").mouseout(function()
  		{
  			$("#sub").css("visibility","hidden");
  		});
  	});
  </script>
</head>
<body>
    <ul id="main">
     <li class="menu" onclick="location='../admin/admin_member'" >  회원 관리

      </li>
     <li class="menu" id="menu"> 게시판 관리 
     	<ul class="sub" id="sub">
     	  <li onclick="location='../admin/admingongji'">  공지 게시판 </li>
     	  <li onclick="location='../admin/admin_hugi'"> 후기 게시판  </li>
     	</ul>
     </li>
     <li class="menu" onclick="location='../admin/admin_event'" > 이벤트 

     </li>
     <li class="menu" onclick="location='../admin/admin_atr'"> 어트랙션

     </li>
     <li class="menu" onclick="location='../admin/admin_ticket'" > 예매 관리 

      </li>
    </ul>

