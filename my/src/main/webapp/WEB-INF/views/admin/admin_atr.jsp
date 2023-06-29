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
  	height:140px;
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
  	height:120px;
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
  section #aopen {
  	display:inline-block;
  	width:50px;
  	height:24px;
  	background:#0368DA;
  	color:white;
  	font-weight:900;
  	font-size:13px;
  	text-align:center;
  	cursor:pointer;
  	border:1px solid #0368DA;
  	border-radius:5px;
  	padding-top:4px;
  }
  section #aclosed {
  	display:inline-block;
  	width:50px;
  	height:24px;
  	background:white;
  	color:red;
  	font-weight:900;
  	font-size:13px;
  	text-align:center;
  	cursor:pointer;
  	border:1px solid #BDBDBD;
  	border-radius:5px;
  	padding-top:4px;
  }
  section #agbtn2 {
  	display:inline-block;
  	width:90px;
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
  	width:400px;
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
 	function viewimgs(aimg,alistimg,map)
 	{
 		document.getElementsByClassName("imgs")[0].src="../resources/attraction/"+aimg;
 		document.getElementsByClassName("imgs")[1].src="../resources/attraction/"+alistimg;
 		document.getElementsByClassName("imgs")[2].src="../resources/attraction/"+map;
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
 		  location="atr_del?id="+id;
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
	   	메인이미지 <p>
	   	<img class="imgs" width="400"> <p>
	   	 리스트 이미지 / 지도 <p>
	   	<img class="imgs" height="170">
	   	<img class="imgs" width="170" height="170">
	  </div>
	<section>
	  <table width="1000" align="center">
	   <caption> <h2> 어트랙션 </h2> </caption>
	    <tr align="center">
	     <th width="220"> 기구 이름 </th>
	     <th> 이미지  </th>
	     <th width="300"> 설명 </th>
	     <th width="60"> 인원 </th>
	     <th width="60"> 소요시간 </th>
	     <th width="80"> 신장제한 </th>
	     <th width="80"> 운영/운휴 </th>
	     <th> 삭제 </th>
	    </tr>
	    <c:forEach items="${alist}" var="avo">
	     <tr>
	      <td> <b> ${avo.title} </b>  </td>
	      <td> <img src="../resources/attraction/${avo.alistimg}" width="120" height="120" onmouseover="viewimgs('${avo.aimg}','${avo.alistimg}','${avo.map}')" onmouseout="hideimgs()" style="border:1px solid #0368DA;">  </td>
	      <td> <div id="content" align="center"> ${avo.content} </div> </td>
	      <td> ${avo.inwon} </td>
	      <td> ${avo.time} </td>
	      <td> ${avo.jehan} </td>
	      <td> 
	       <c:if test="${avo.state==0}">
	        <span onclick="location='chgastate?state=1&id=${avo.id}'" id="aopen"> OPEN </span>
	       </c:if> 
	       <c:if test="${avo.state==1 }">
	        <span onclick="location='chgastate?state=0&id=${avo.id}'" id="aclosed"> CLOSED </span>
	       </c:if> 
	      </td>
	      <td> <span id="agbtn1" onclick="delchk(${avo.id})"> 삭제 </span> </td>
	     </tr>
	     </c:forEach>
	    <tr>
	      <td colspan="8" id="btntd"> <a href="../attraction/attraction_add"> <span id="agbtn2"> 어트랙션 추가 </span> </a> </td>
	    </tr>
	   </table>
	   
	    <!-- 페이지 -->
	  	<div id="nowpage" align="center">
	  	 
	  	 <c:if test="${pstart!=1}">
	  	   <a href="admin_atr?page=${pstart-1}">《 </a>
	  	 </c:if>
	  	 <c:if test="${pstart==1}">
	  	   	《
	  	 </c:if>
	  	 
	  	 <c:if test="${page!=1}">
	  	   <a href="admin_atr?page=${page-1}">〈 </a>
	  	 </c:if>
	  	 <c:if test="${page==1}">
	  	   	〈
	  	 </c:if>
	  	 
	  	  <c:forEach begin="${pstart}" end="${pend}" var="i">
	  	  	<c:if test="${page!=i}">
	  	  	 <a href="admin_atr?page=${i}"> ${i} </a>
	  	  	</c:if>
	  	  	<c:if test="${page==i}">
	  	  	 <a href="admin_atr?page=${i}" style="color:#0368DA; font-weight:900;"> ${i} </a>
	  	  	</c:if> 
	  	  </c:forEach>
	  	  
	  	  <c:if test="${page!=chong}">
	  	   <a href="admin_atr?page=${page+1}">〉 </a>
	  	 </c:if>
	  	 <c:if test="${page==chong}">
	  	   	〉
	  	 </c:if>
	  	 
	  	 <c:if test="${pend!=chong}">
	  	   <a href="admin_atr?page=${pend+1}">》 </a>
	  	 </c:if>
	  	 <c:if test="${pend==chong}">
	  	   	》
	  	 </c:if>
	  	 
	  	 </div>
	  
	</section>
</body>
</html>