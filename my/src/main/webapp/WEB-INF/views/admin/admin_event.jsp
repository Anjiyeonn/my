<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="admin_top.jsp" %>
 <style>
  section {
  	width:1200px;
  	margin:auto;
  	margin-bottom:50px;
  }
  section a {
  	text-decoration:none;
  	color:black;
  }

  section table {
  	border-spacing:0px;
  	margin-bottom:70px;
  }
  
  section td {
  	font-size:14px;
  	height:120px;
  	border-bottom:1px solid #eeeeee;
  	text-align:center;
  }
  section tr:hover {
  	background:#F9F9F9;
  }
  section tr:last-child {
  	background:white;
  }
  section tr:first-child {
  	background:white;
  }
  section tr:last-child td {
  	border-top:2px solid #0368DA;
  	border-bottom:none;
  }
  section tr:first-child th {
  	font-weight:900;
  	height:30px;
  	border-top:2px solid #0368DA;
  	font-size:15px;
  	border-bottom:1px solid #eeeeee;
  }
  section #content {
  	width:300px;
  	height:70px;
  	overflow:auto;
  	border:1px solid #0368DA;
  	border-radius:5px;
  	margin:5px;
  }
  section #agbtn1 {
  	display:inline-block;
  	width:35px;
  	height:20px;
  	background:white;
  	color:#0368DA;
  	font-weight:900;
  	font-size:13px;
  	text-align:center;
  	cursor:pointer;
  	border:1px solid #0368DA;
  	border-radius:5px;
  	padding-top:3px;
  }
  section #agbtn2 {
  	display:inline-block;
  	width:80px;
  	height:30px;
  	background:#0368DA;
  	color:white;
  	font-weight:900;
  	font-size:13px;
  	text-align:center;
  	cursor:pointer;
  	border:1px solid #0368DA;
  	border-radius:5px;
  	padding-top:10px;
  	margin-right:10px;
  	margin-top:-50px;
  }
  
    #imgs {
  	position:absolute;
  	width:530px;
  	height:420px;
  	border:2px solid #0368DA;
  	border-radius:5px;
  	background-color: rgba( 255,255, 255, 0.95 );
  	visibility:hidden;
  	font-size:13px;
  	font-weight:900;
  	padding:7px;
   }
  
  section table #btntd {
  	text-align:right;
  	
  }
  .imgs {
  	border:1px solid #0368DA;
  }
 </style>
 <script>
 	function viewimgs(eimg,eimg2,elistimg,map)
 	{
 		document.getElementsByClassName("imgs")[0].src="../resources/event/"+eimg;
 		document.getElementsByClassName("imgs")[1].src="../resources/event/"+elistimg;
 		document.getElementsByClassName("imgs")[2].src="../resources/event/"+eimg2;
 		document.getElementsByClassName("imgs")[3].src="../resources/event/"+map;
 		document.getElementById("imgs").style.visibility="visible"
 		
 	   var x=event.clientX;
 	   var y=event.clientY;
 	   document.getElementById("imgs").style.left=x+"px";
 	   document.getElementById("imgs").style.top=y+"px";		
 	}
 	function hideimgs()
 	{
 		document.getElementById("imgs").style.visibility="hidden";
 	}
 	function delchk(id)
 	{
 		if(confirm("이벤트를 삭제하시겠습니까?"))
 		 {
 		  location="event_del?id="+id;
 		 }
 		 else
 		 {
 		 }
 	}
 </script>
 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
  	$(function()
  	{
  		$("#imgs").mouseover(function()
  		{
  		  	$("#imgs").css("visibility","visible");
  		});
  		$("#imgs").mouseout(function()
  		{
  			$("#imgs").css("visibility","hidden");
  		});
  	});
  </script>
	  <div id="imgs">
	   	메인이미지 / 리스트 이미지 <p>
	   	<img class="imgs" width="400">
	   	<img class="imgs" width="120" height="170"> </p>
	   	 서브이미지 / 지도 <p>
	   	<img class="imgs" width="170" height="150">
	   	<img class="imgs" width="170" height="170">
	  </div>
	<section>
	  <table width="1000" align="center">
	   <caption> <h2> 이벤트 </h2> </caption>
	    <tr align="center">
	     <th width="240"> 제목 </th>
	     <th> 이미지  </th>
	     <th width="300"> 내용 </th>
	     <th width="240"> 기간 </th>
	     <th> 삭제 </th>
	    </tr>
	    <c:forEach items="${elist}" var="evo">
	     <tr>
	      <td> <b> ${evo.title} </b>  </td>
	      <td> <img src="../resources/event/${evo.elistimg}" width="100" height="100" onmouseover="viewimgs('${evo.eimg}','${evo.eimg2}','${evo.elistimg}','${evo.map}')" onmouseout="hideimgs()" style="border:1px solid #0368DA;">  </td>
	      <td> <b> ${evo.subtitle} </b> <p> <div id="content"> ${evo.content} </div> </td>
	      <td> ${evo.gigan} </td>
	      <td> <span id="agbtn1" onclick="delchk(${evo.id})"> 삭제 </span> </td>
	     </tr>
	     </c:forEach>
	    <tr>
	      <td colspan="5" id="btntd"> <a href="../event/event_add"> <span id="agbtn2"> 이벤트 추가 </span> </a> </td>
	    </tr>
	   </table>
	   
	    <!-- 페이지 -->
	  	<div id="nowpage" align="center">
	  	 
	  	 <c:if test="${pstart!=1}">
	  	   <a href="admin_event?page=${pstart-1}">《 </a>
	  	 </c:if>
	  	 <c:if test="${pstart==1}">
	  	   	《
	  	 </c:if>
	  	 
	  	 <c:if test="${page!=1}">
	  	   <a href="admin_event?page=${page-1}">〈 </a>
	  	 </c:if>
	  	 <c:if test="${page==1}">
	  	   	〈
	  	 </c:if>
	  	 
	  	  <c:forEach begin="${pstart}" end="${pend}" var="i">
	  	  	<c:if test="${page!=i}">
	  	  	 <a href="admin_event?page=${i}"> ${i} </a>
	  	  	</c:if>
	  	  	<c:if test="${page==i}">
	  	  	 <a href="admin_event?page=${i}" style="color:#0368DA; font-weight:900;"> ${i} </a>
	  	  	</c:if>
	  	  </c:forEach>
	  	  
	  	  <c:if test="${page!=chong}">
	  	   <a href="admin_event?page=${page+1}">〉 </a>
	  	 </c:if>
	  	 <c:if test="${page==chong}">
	  	   	〉
	  	 </c:if>
	  	 
	  	 <c:if test="${pend!=chong}">
	  	   <a href="admin_event?page=${pend+1}">》 </a>
	  	 </c:if>
	  	 <c:if test="${pend==chong}">
	  	   	》
	  	 </c:if>
	  	 
	  	 </div>
	  
	</section>
</body>
</html>