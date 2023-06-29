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
  section #htitle {
  	text-decoration:none;
  	color:black;
  }
  section #htitle:hover{
  	text-decoration:underline;
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
         padding-bottom:100px;
      }
      #submenu > a {
         text-decoration:none;
     	 color:#0D3EA3;
     	 font-family: 'GangwonEduPowerExtraBoldA';
      }
 </style>
</head>
<body>
	<section>
	  <div>
         <div id="blueline"> 후기 </div>
      </div>
      <p>
      <div id="submenu">
         <a href="../main/main"> 유니버설 스튜디오 코리아  > </a> 　
         <a href=""> 즐기기  > </a> 　
         <a style="color:#00086D;"> 후기 </a>
      </div>
	  <table width="800" align="center">
	    <tr>
	      <th width="550"> 제목 </th>
	      <th width="150"> 작성자 </th>
	      <th> 작성일 </th>
	    </tr>
	    <c:forEach items="${hlist}" var="hvo">
	    <tr align="center">
	      <td align="left" id="htitle"> <a href="hugi_content?id=${hvo.id}&page=${page}"> ${hvo.title} </a> </td>
	      <td> ${hvo.userid} </td>
	      <td> ${hvo.writeday} </td>
	    </tr>
	    </c:forEach>
	    <tr>
	       <c:if test="${userid==null }">
	       <td colspan="3" align="right"></td>
	        </c:if>
	        <c:if test="${userid!=null}">
	       <td colspan="3" align="right"> <a href="../member/jumun_view"> <span id="agbtn2"> 후기 작성 </span> </a> </td>
	        </c:if>
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