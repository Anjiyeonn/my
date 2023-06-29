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
  image {
  	width:1675px;
  	height:715px;
  	margin:auto;
  }
  #mainimg{
  	margin-top:0px;
  	width:1675px;
  	height:715px;
  	margin-left:1675px;
  	overflow:hidden;
  	margin:auto;
  }
  #image {
  	width:3400px;
  	height:715px;
  	margin-left:0px;
  	margin:auto;
  }
  section {
  	width:1200px;
  	margin:auto;
  }
  #event table {
  	border-spacing: 15px 20px;
  }
  #event #evt {
  	box-shadow: 2px 2px 10px grey;
  	cursor:pointer;
  	border-radius:10px;
  }
  #event img {
  	width:280px;
  	border-radius:10px;
  	
  }
  #event img:hover {
  	box-shadow: 2px 2px 10px #0368DA;
  }
  #notice {
  	padding-left:20px;
  }
  #notice #ntitle {
  	font-weight:900;
  	font-size:20px;
  	margin-bottom:30px;
  	margin-top:20px;
  }
  #notice #nbtn {
  	width:170px;
  	height:40px;
  	border-radius:5px;
  	background:#0368DA;
  	color:white;
  	font-size:17px;
  	font-weight:900;
  	text-align:center;
  	padding-top:10px;
  	cursor:pointer;
  	margin-bottom:70px;
  }
  #notice #nhr {
  	border-color:#dbdbdb;
	border-top:none;
  }
 </style>
 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
  $(function()
  {
	  move();
	  $("#mainimg").mouseover(function()
	  {
		  clearInterval(ss);
	  });
	  $("#mainimg").mouseout(function()
	  {
		  move();
	  });
  });
  function move()
  {
	  ss=setInterval(function()
	  {
		  $("#image").animate(
		  {
			  marginLeft:"-1675px"
		  },500,function()
		  		  {
			  		  $(".img").eq(0).insertAfter($(".img").eq(1));
			  		  $("#image").css("margin-left","0px");
		  		  });
	  },5000);
  }
 </script>
</head>
<body>
	<div id="mainimg">
	 <div id="image">
	   <img src="../resources/main/main1.jpg" class="img"><img src="../resources/main/main2.jpg" class="img">
	 </div>
	</div>
	<section>
	 <div id="event">
	  <table width="1200" align="center">
	  <caption>  <h2 align="left" style="margin-bottom:0px;"> 이벤트 </h2> </caption>
         <tr>
            <c:forEach items="${elist}" var="evo" varStatus="sts">
               <td id="evt">
                  <img src="../resources/event/${evo.elistimg}" onclick="location='../event/event_page?id=${evo.id}'">
               </td>
               <c:if test="${sts.count%4 == 0}">
         </tr>
         <tr>
               </c:if>
           </c:forEach>
         </tr>
	  </table>
	 </div>
	
	 <div id="notice">
	    <h1 align="left">공지사항</h1>
	    <hr>
	    <c:forEach items="${glist}" var="gvo">
	      <div id="ntitle"> 【${gvo.title}】 </div>
	      <div id="nbtn" onclick="location='../gongji/gongji_content?id=${gvo.id}&page=1'"> 자세한 내용 보기</div>
	      <hr id="nhr">
	    </c:forEach>
	 </div>
	</section>
</body>
</html>