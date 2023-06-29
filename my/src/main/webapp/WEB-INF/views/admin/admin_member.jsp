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
  section tr:hover {
  	background:#F9F9F9;
  }
  section tr:first-child {
  	background:white;
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
  	text-align:center;
  }
  section tr:last-child td {
  	border-bottom:2px solid #0368DA;;
  }
  section tr:first-child th {
  	font-weight:900;
  	height:30px;
  	border-top:2px solid #0368DA;
  	font-size:15px;
  	border-bottom:1px solid #eeeeee;
  }


  section #btn1 {
  	display:inline-block;
  	width:65px;
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
  section #btn2 {
  	display:inline-block;
  	width:65px;
  	height:20px;
  	background:white;
  	color:red;
  	font-weight:900;
  	font-size:13px;
  	text-align:center;
  	cursor:pointer;
  	border:1px solid red;
  	padding-top:3px;
  }
  section #btn3 {
  	display:inline-block;
  	width:65px;
  	height:20px;
  	background:white;
  	color:#BDBDBD;
  	font-weight:900;
  	font-size:13px;
  	text-align:center;
  	cursor:pointer;
  	border:1px solid #BDBDBD;
  	padding-top:3px;
  }

 </style>

	<section>
	  <table width="1000" align="center">
	   <caption> <h2> 회원 관리 </h2> </caption>
	    <tr align="center">
	     <th> 이름 </th>
	     <th> 아이디  </th>
	     <th> 주소 </th>
	     <th> 휴대폰 번호 </th>
	     <th> 이메일 </th>
	     <th> 가입일 </th>
	     <th> 회원상태 </th>
	    </tr>
	    <c:forEach items="${mlist}" var="mvo">
	     <tr>
	      <td> ${mvo.name} </td>
	      <td> ${mvo.userid} </td>
	      <td> ${mvo.juso} </td>
	      <td> ${mvo.phone} </td>
	      <td> ${mvo.email} </td>
	      <td> ${mvo.writeday} </td>
	      <td>
	      	<c:if test="${mvo.state==0}">
           	  <span id="btn1"> 정상회원 </span>
         	</c:if>
        	<c:if test="${mvo.state==1}">
           	  <span id="btn2" onclick="location='memberout?id=${mvo.id}'"> 탈퇴신청 </span>
            </c:if>
            <c:if test="${mvo.state==2}">
              <span id="btn3"> 탈퇴회원 </span>
           	</c:if>
	      </td>
	     </tr>
	     </c:forEach>

	   </table>
	    <!-- 페이지 -->
	  	<div id="nowpage" align="center">
	  	 
	  	 <c:if test="${pstart!=1}">
	  	   <a href="admin_member?page=${pstart-1}">《 </a>
	  	 </c:if>
	  	 <c:if test="${pstart==1}">
	  	   	《
	  	 </c:if>
	  	 
	  	 <c:if test="${page!=1}">
	  	   <a href="admin_member?page=${page-1}">〈 </a>
	  	 </c:if>
	  	 <c:if test="${page==1}">
	  	   	〈
	  	 </c:if>
	  	 
	  	  <c:forEach begin="${pstart}" end="${pend}" var="i">
	  	  	<c:if test="${page!=i}">
	  	  	 <a href="admin_member?page=${i}"> ${i} </a>
	  	  	</c:if>
	  	  	<c:if test="${page==i}">
	  	  	 <a href="admin_member?page=${i}" style="color:#0368DA; font-weight:900;"> ${i} </a>
	  	  	</c:if>
	  	  </c:forEach>
	  	  
	  	  <c:if test="${page!=chong}">
	  	   <a href="admin_member?page=${page+1}">〉 </a>
	  	 </c:if>
	  	 <c:if test="${page==chong}">
	  	   	〉
	  	 </c:if>
	  	 
	  	 <c:if test="${pend!=chong}">
	  	   <a href="admin_member?page=${pend+1}">》 </a>
	  	 </c:if>
	  	 <c:if test="${pend==chong}">
	  	   	》
	  	 </c:if>
	  	 
	  	 </div>
	  
	</section>
</body>
</html>