<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style>
 @font-face {
    font-family: 'GangwonEduPowerExtraBoldA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduPowerExtraBoldA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
  section {
  	width:1200px;
  	margin:auto;
  	text-align:center;
  	font-family: 'GangwonEduPowerExtraBoldA';
  }
  #aimg {
  	width:1675px;
  	margin:auto;
  }
  section #atitle {
  	font-size:60px;
  	text-align:center;
  	font-weight:900;
  	margin-top:30px;
  }
  section #acontent {
  	font-size:20px;
  	text-align:center;
  	margin-top:30px;
  	margin-bottom:40px;
  	display:inline-block;
  	width:500px;
  }
  section #amap1 {
  	display:inline-block;
  	font-size:23px;
  	font-weight:900;
  	text-align:center;
  	margin-top:20px;
  	margin-bottom:10px;
  }
  section table {
  	margin-bottom:50px;
  }
  section #amap {
  	margin-bottom:100px;
  }
  section #annae {
  	width:1200px;
  	height:500px;
  	background-color: rgba(3,104, 218, 0.8 );
  	margin:auto;
  	display:inline-block;
  	margin-bottom:50px;
  	margin-top:30px;
  }
  section #aaa {
  	display:inline-block;
  	width:200px;
  	height:300px;
  	text-align:center;
  	background:white;
  	margin:50px;
  	margin-top:110px;
  	border:1px solid white;
  	border-radius:10px;
  }
  section #at {
  	display:inline-block;
  	margin-top:60px;
  	font-size:20px;
  	font-weight:900;
  	
  }
  section #ac {
  	display:inline-block;
  	font-size:23px;
  	font-weight:900;
  	margin-top:10px;
  	background:#0368DA;
  	width:150px;
  	height:90px;
  	text-align:center;
  	border:1px solid #0368DA;
  	border-radius:100px;
  	padding-top:60px;
  	color:white;
  }
  section #aannae {
  	display:inline-block;
  	font-size:23px;
  	font-weight:900;
  	text-align:center;
  	margin-top:20px;
  	margin-bottom:10px;
  }
  
 </style>
</head>
<body>
	 <div id="aimg"> <img src="../resources/attraction/${avo.aimg}" width="1675"> </div>
	<section>
	
	  <div id="atitle"> ${avo.title} </div>
	  <div id="acontent"> ${avo.content} </div><p>
	  <div id="aannae"> 탑승 안내 </div> 
	  <div id="annae">
	  
	  	<div id="aaa"> <span id="at"> 탑승 정원 </span> <p> <span id="ac">  ${avo.inwon} 명</span></div> 
	     
	   <div id="aaa"> <span id="at"> 소요 시간 </span> <p><span id="ac"> ${avo.time}</span></div> 
	   
	   <div id="aaa"> <span id="at"> 신장 제한 </span> <p><span id="ac"> ${avo.jehan}</span></div> 
	     
	  </div>
	 
	  <hr>
	  <div align="center" id="amap"> 
	    <span id="amap1"> 어트랙션 위치 </span> <p>
	    <span> <img src="../resources/attraction/${avo.map}"> </span> 
	  </div>
	</section>
</body>
</html>