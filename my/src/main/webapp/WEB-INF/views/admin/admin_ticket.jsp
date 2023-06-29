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
  
  section #tstate0 {
  	display:inline-block;
  	width:60px;
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
  section #tstate1 {
  	display:inline-block;
  	width:70px;
  	height:24px;
  	background:white;
  	color:#0368DA;
  	font-weight:900;
  	font-size:13px;
  	text-align:center;
  	cursor:pointer;
  	border:1px solid #8C8C8C;
  	border-radius:5px;
  	padding-top:4px;
  }
  section #tstate2 {
  	display:inline-block;
  	width:60px;
  	height:24px;
  	background:white;
  	color:#8C8C8C;
  	font-weight:900;
  	font-size:13px;
  	text-align:center;
  	cursor:default;
  	border:1px solid #8C8C8C;
  	border-radius:5px;
  	padding-top:4px;
  }
  section #tstate3 {
  	display:inline-block;
  	width:60px;
  	height:24px;
  	background:white;
  	color:#0368DA;
  	font-weight:900;
  	font-size:13px;
  	text-align:center;
  	cursor:default;
  	border:1px solid #0368DA;
  	border-radius:5px;
  	padding-top:4px;
  }
	
 </style>

	<section>
	  <table width="1000" align="center">
	   <caption> <h2> 예매 관리 </h2> </caption>
	    <tr align="center">
	     <th> 예매번호 </th>
	     <th> 이름 </th>
	     <th> 티켓 종류 </th>
	     <th> 수량 </th>
	     <th> 입장 날짜 </th>
	     <th> 결제 수단 </th>
	     <th> 결제 금액 </th>
	     <th> 결제일 </th>
	     <th> 예매 상태 </th>
	    </tr>
	    
	    
	    <c:forEach items="${glist}" var="map">
	    
	    <c:choose>
 		   <c:when test="${map.pay==0}">
 		    <c:set var="pay" value="계좌이체" />
 		   </c:when>
 		   <c:when test="${map.pay==1}">
 		    <c:set var="pay" value="신용/체크카드" />
 		   </c:when>
 		   <c:when test="${map.pay==2}">
 		    <c:set var="pay" value="휴대폰 결제" />
 		   </c:when>
 		   <c:when test="${map.pay==3}">
 		    <c:set var="pay" value="무통장입금" />
 		   </c:when>
 		 </c:choose>
 		 
 		 <c:choose>
 		   <c:when test="${map.state==0}">
 		    <c:set var="state" value="결제완료" />
 		   </c:when>
 		   <c:when test="${map.state==1}">
 		    <c:set var="state" value="취소신청중" />
 		   </c:when>
 		   <c:when test="${map.state==2}">
 		    <c:set var="state" value="취소완료" />
 		   </c:when>
 		   <c:when test="${map.state==3}">
 		    <c:set var="state" value="사용완료" />
 		   </c:when>
 		  </c:choose>
	    
	     <tr>
	      <td> ${map.jumuncode} </td>
	      <td> ${map.name} (${map.userid}) </td>
	      <td> ${map.title} </td>
	      <td> ${map.su} </td>
	      <td> ${map.day} </td>
	      <td> ${pay} </td>
	      <td> <fmt:formatNumber value="${map.cprice}" pattern="#,###" type="number"/>원 </td>
	      <td> ${map.writeday} </td>
	      <td>
	       <c:if test="${map.state==0}">
	        <span onclick="location='chgtstate?state=3&id=${map.id}'" id="tstate0"> ${state}</span>
	       </c:if>
	       <c:if test="${map.state==1}">
	        <span onclick="location='chgtstate?state=2&id=${map.id}'" id="tstate1"> ${state}</span>
	       </c:if>
	       <c:if test="${map.state==2}">
	        <span" id="tstate2"> ${state}</span>
	       </c:if> 
	       <c:if test="${map.state==3}">
	        <span id="tstate3"> ${state}</span>
	       </c:if>  
	      </td>
	    </tr>
	   </c:forEach>
	   </table>
	    <!-- 페이지 -->
	  	<div id="nowpage" align="center">
	  	 
	  	 <c:if test="${pstart!=1}">
	  	   <a href="admin_ticket?page=${pstart-1}">《 </a>
	  	 </c:if>
	  	 <c:if test="${pstart==1}">
	  	   	《
	  	 </c:if>
	  	 
	  	 <c:if test="${page!=1}">
	  	   <a href="admin_ticket?page=${page-1}">〈 </a>
	  	 </c:if>
	  	 <c:if test="${page==1}">
	  	   	〈
	  	 </c:if>
	  	 
	  	  <c:forEach begin="${pstart}" end="${pend}" var="i">
	  	  	<c:if test="${page!=i}">
	  	  	 <a href="admin_ticket?page=${i}"> ${i} </a>
	  	  	</c:if>
	  	  	<c:if test="${page==i}">
	  	  	 <a href="admin_ticket?page=${i}" style="color:#0368DA; font-weight:900;"> ${i} </a>
	  	  	</c:if>
	  	  </c:forEach>
	  	  
	  	  <c:if test="${page!=chong}">
	  	   <a href="admin_ticket?page=${page+1}">〉 </a>
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