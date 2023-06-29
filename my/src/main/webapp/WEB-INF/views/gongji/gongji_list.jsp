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
  section tr:last-child td {
  	border-top:2px solid #0368DA;
  	border-bottom:none;
  }
  section tr:first-child th {
  	font-weight:900;
  	height:30px;
  	border-top:2px solid #0368DA;
  	font-size:15px;
  }
  section #gtitle {
  	text-decoration:none;
  	color:black;
  }
  section #gtitle:hover{
  	text-decoration:underline;
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
         <div id="blueline"> 공지사항 </div>
      </div>
      <p>
      <div id="submenu">
         <a href="../main/main"> 유니버설 스튜디오 코리아  > </a> 　
         <a href=""> 즐기기  > </a> 　
         <a style="color:#00086D;"> 공지사항 </a>
      </div>
	  <table width="800" align="center">
	    <tr align="center">
	     <th width="700">제목 </th>
	     <th> 작성일  </th>
	    </tr>
	    <c:forEach items="${glist}" var="gvo">
	    <tr>
	     <c:if test="${gvo.chk==1 }">
	      <td onclick="location='gongji_content?id=${gvo.id}&page=${page}'" id="gtitle"> <b> <span style="color:red;"> [공지] </span> ${gvo.title} </b> </td>
	     </c:if>
	     <c:if test="${gvo.chk==0 }">
	       <td onclick="location='gongji_content?id=${gvo.id}&page=${page}'" id="gtitle"> ${gvo.title} </td>
	     </c:if>
	     <td align="center"> ${gvo.writeday} </td>
	    </tr>
	    </c:forEach>
	    <!-- 페이지 -->
	  	<tr>	  	
	  	 <td colspan="4" align="center" id="nowpage">
	  	 
	  	 <c:if test="${pstart!=1}">
	  	   <a href="gongji_list?page=${pstart-1}">《 </a>
	  	 </c:if>
	  	 <c:if test="${pstart==1}">
	  	   	《
	  	 </c:if>
	  	 
	  	 <c:if test="${page!=1}">
	  	   <a href="gongji_list?page=${page-1}">〈 </a>
	  	 </c:if>
	  	 <c:if test="${page==1}">
	  	   	〈
	  	 </c:if>
	  	 
	  	  <c:forEach begin="${pstart}" end="${pend}" var="i">
	  	  	<c:if test="${page!=i}">
	  	  	 <a href="gongji_list?page=${i}"> ${i} </a>
	  	  	</c:if>
	  	  	<c:if test="${page==i}">
	  	  	 <a href="gongji_list?page=${i}" style="color:#0368DA; font-weight:900;"> ${i} </a>
	  	  	</c:if>
	  	  </c:forEach>
	  	  
	  	  <c:if test="${page!=chong}">
	  	   <a href="gongji_list?page=${page+1}">〉 </a>
	  	 </c:if>
	  	 <c:if test="${page==chong}">
	  	   	〉
	  	 </c:if>
	  	 
	  	 <c:if test="${pend!=chong}">
	  	   <a href="gongji_list?page=${pend+1}">》 </a>
	  	 </c:if>
	  	 <c:if test="${pend==chong}">
	  	   	》
	  	 </c:if>
	  	 
	  	 </td>
	  	 
	  	 
	  	</tr>
	  </table>
	</section>
</body>
</html>