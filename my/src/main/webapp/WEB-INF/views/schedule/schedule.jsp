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
  	width:1675px;
  	margin:auto;
  	font-family: 'GangwonEduPowerExtraBoldA';
  }
  section h1 {
  	font-size:30px;
  }
  section h3 {
  	font-size:25px;
  }
  table{
  	border-spacing:0px;
  	outline:none;
  	border:1px solid #0270E3;
  	margin-bottom:60px;
  }
  table a {
  	text-decoration:none;
  }
  table td {
  	width:142px;
  }
  table #yoil {
  	background:#0270E3;
  	color:white;
  	font-size:20px;
  	height:50px;
  	text-align:center;
  	border:1px solid #0270E3;
  	border-radius:10px;
  }
  table #dd {
  	padding-top:10px;
  	padding-left:10px;
  	font-size:17px;
  }
  
  table #time {
  	color:#0368DA;
  	margin-left:10px;
  	margin-top:40px;
  	font-size:18px;
  }
  
  #blueline {
      width:1425px;
      height:50px;
      background:#0D3EA3;
      margin:auto;
      color:white;
      font-size:32px;
      padding-top:17px;;
      padding-left:250px;
      font-family:'휴먼둥근헤드라인';
   }
   
   #submenu {
      color:#0D3EA3;
      font-size:5px;
      padding-left:250px;
      font-weight:bold;
      padding-bottom:30px;
   }
   section a {
  	  text-decoration:none;
  	  color:#0D3EA3;
   }

 </style>
</head>
<body>
	<section>
	  <div>
         <div id="blueline"> 운영시간 </div>
      </div>
      <p>
      <div id="submenu">
         <a href="../main/main"> 유니버설 스튜디오 코리아  > </a> 　
         <a href=""> 영업시간  > </a> 　
         <a style="color:#00086D;"> 운영시간 </a>
      </div>
		<table width="1000" align="center" border="1">
		 <caption>
		 	<h3><a href="../schedule/schedule?year=${year}&month=${month-1}"> ⬅️ </a>
		 	${year}년 ${month}월
		 	 <a href="../schedule/schedule?year=${year}&month=${month+1}"> ➡️ </a> </h3>
		 </caption>
		 <tr id="yoil">
		   <td> 일 </td>
		   <td> 월 </td>
		   <td> 화 </td>
		   <td> 수 </td>
		   <td> 목 </td>
		   <td> 금 </td>
		   <td> 토 </td>
		 </tr>
		 <c:forEach var="i" begin="1" end="${ju}">
		 
		  <tr height="150">
		   <c:forEach var="j" begin="0" end="6">
		     <c:if test="${((j<yoil) && i==1) || day>chong}">
		     	<td>  </td>
		     </c:if>
		     <c:if test="${((j>=yoil) || i!=1) && day<=chong }">
		       <c:if test="${j==0}">
		         <td id="dd" style="color:red;" valign="top"><span style="padding-top:30px">${day}</span><div id="time">08:30~22:00</div></td>
		       </c:if>
		       <c:if test="${j==6}">
		         <td id="dd" style="color:blue;" valign="top"><span>${day}</span><div id="time">08:30~21:30</div></td>
		       </c:if>
		       <c:if test="${j!=0 && j!=6}">
		         <td id="dd" style="color:black;" valign="top"><span>${day}</span><div id="time">09:00~21:00</div></td>
		       </c:if>
		       <c:set var="day" value="${day + 1}" />
		      </c:if>
		   </c:forEach>
		  </tr>
		 </c:forEach>  
		</table>
	</section>
</body>
</html>