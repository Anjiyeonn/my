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
  section #htitle {
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
  	
  }
  section tr:first-child {
  	background:white;
  }
  section tr:last-child td {
  	border-bottom:2px solid #0368DA;
  	
  }
  section tr:first-child th {
  	font-weight:900;
  	height:30px;
  	border-top:2px solid #0368DA;
  	font-size:15px;
  	border-bottom:1px solid #eeeeee;
  }
  section #htitle {
  	text-decoration:none;
  	color:black;
  }
  section #htitle:hover{
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
	   <caption> <h2> 후기 관리 </h2> </caption>
	    <tr align="center">
	     <th width="500">제목 </th>
	     <th> 작성일  </th>
	     <th> 삭제 </th>
	    </tr>
	    <c:forEach items="${hlist}" var="hvo">
	     <tr>
	      <td onclick="location='../hugi/hugi_content?id=${hvo.id}&page=${page}'" id="htitle"> ${hvo.title} </td>
	      <td align="center"> ${hvo.writeday} </td>
	      <td align="center">  <a href="../hugi/hugi_delete?id=${hvo.id}"> <span id="agbtn1"> 삭제 </span> </a> </td>
	     </tr>
	     </c:forEach>
	   </table>
	    <!-- 페이지 -->
	  	<div id="nowpage" align="center">
	  	 
	  	 <c:if test="${pstart!=1}">
	  	   <a href="admin_hugi?page=${pstart-1}">《 </a>
	  	 </c:if>
	  	 <c:if test="${pstart==1}">
	  	   	《
	  	 </c:if>
	  	 
	  	 <c:if test="${page!=1}">
	  	   <a href="admin_hugi?page=${page-1}">〈 </a>
	  	 </c:if>
	  	 <c:if test="${page==1}">
	  	   	〈
	  	 </c:if>
	  	 
	  	  <c:forEach begin="${pstart}" end="${pend}" var="i">
	  	  	<c:if test="${page!=i}">
	  	  	 <a href="admin_hugi?page=${i}"> ${i} </a>
	  	  	</c:if>
	  	  	<c:if test="${page==i}">
	  	  	 <a href="admin_hugi?page=${i}" style="color:#0368DA; font-weight:900;"> ${i} </a>
	  	  	</c:if>
	  	  </c:forEach>
	  	  
	  	  <c:if test="${page!=chong}">
	  	   <a href="admin_hugi?page=${page+1}">〉 </a>
	  	 </c:if>
	  	 <c:if test="${page==chong}">
	  	   	〉
	  	 </c:if>
	  	 
	  	 <c:if test="${pend!=chong}">
	  	   <a href="admin_hugi?page=${pend+1}">》 </a>
	  	 </c:if>
	  	 <c:if test="${pend==chong}">
	  	   	》
	  	 </c:if>
	  	 
	  	 </div>
	  
	</section>
</body>
</html>