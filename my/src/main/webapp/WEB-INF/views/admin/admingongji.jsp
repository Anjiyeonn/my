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
  section #gtitle {
  	cursor:pointer;
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
  	height:50px;
  	border-bottom:1px solid #eeeeee;
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
  section #gtitle {
  	text-decoration:none;
  	color:black;
  }
  section #gtitle:hover{
  	text-decoration:underline;
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
  	padding-top:10px;
  	margin-right:10px;
  }
 </style>

	<section>
	  <table width="800" align="center">
	   <caption> <h2> 공지 관리 </h2> </caption>
	    <tr align="center">
	     <th width="500">제목 </th>
	     <th> 작성일  </th>
	     <th> 삭제 </th>
	     <th> 수정 </th>
	    </tr>
	    <c:forEach items="${glist}" var="gvo">
	     <tr>
	      <c:if test="${gvo.chk==1 }">
	       <td onclick="location='../gongji/gongji_content?id=${gvo.id}&page=${page}'" id="gtitle"> <b> <span style="color:red;"> [공지] </span> ${gvo.title} </b> </td>
	      </c:if>
	      <c:if test="${gvo.chk==0 }">
	        <td onclick="location='../gongji/gongji_content?id=${gvo.id}&page=${page}'" id="gtitle"> ${gvo.title} </td>
	      </c:if>
	      <td align="center"> ${gvo.writeday} </td>
	      <td align="center">  <a href="gongji_del?id=${gvo.id}"> <span id="agbtn1"> 삭제 </span> </a> </td>
	      <td align="center"> <a href="gongji_up?id=${gvo.id}&page=${page}"> <span id="agbtn1"> 수정 </span> </a> </td>
	     </tr>
	     </c:forEach>
	    <tr>
	      <td colspan="4" align="right"> <a href="../gongji/gongji_write"> <span id="agbtn2"> 공지 작성 </span> </a> </td>
	    </tr>
	   </table>
	    <!-- 페이지 -->
	  	<div id="nowpage" align="center">
	  	 
	  	 <c:if test="${pstart!=1}">
	  	   <a href="admingongji?page=${pstart-1}">《 </a>
	  	 </c:if>
	  	 <c:if test="${pstart==1}">
	  	   	《
	  	 </c:if>
	  	 
	  	 <c:if test="${page!=1}">
	  	   <a href="admingongji?page=${page-1}">〈 </a>
	  	 </c:if>
	  	 <c:if test="${page==1}">
	  	   	〈
	  	 </c:if>
	  	 
	  	  <c:forEach begin="${pstart}" end="${pend}" var="i">
	  	  	<c:if test="${page!=i}">
	  	  	 <a href="admingongji?page=${i}"> ${i} </a>
	  	  	</c:if>
	  	  	<c:if test="${page==i}">
	  	  	 <a href="admingongji?page=${i}" style="color:#0368DA; font-weight:900;"> ${i} </a>
	  	  	</c:if>
	  	  </c:forEach>
	  	  
	  	  <c:if test="${page!=chong}">
	  	   <a href="admingongji?page=${page+1}">〉 </a>
	  	 </c:if>
	  	 <c:if test="${page==chong}">
	  	   	〉
	  	 </c:if>
	  	 
	  	 <c:if test="${pend!=chong}">
	  	   <a href="admingongji?page=${pend+1}">》 </a>
	  	 </c:if>
	  	 <c:if test="${pend==chong}">
	  	   	》
	  	 </c:if>
	  	 
	  	 </div>
	  
	</section>
</body>
</html>