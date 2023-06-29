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
  	height:auto;
  	font-family: 'GangwonEduPowerExtraBoldA';
  }
  
  section a {
  	text-decoration:none;
  	color:#0D3EA3;
  }
  section table #td {
  	cursor:pointer;
  	text-align:center;
  }
  table {
  	border-spacing: 15px 25px;
  }
  section #atr {
  	box-shadow: 2px 2px 10px grey;
  	border-radius:10px;
  }
  section #atr:hover {
  	width:360px;
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
         /* font-family:'휴먼둥근헤드라인'; */
         padding-left:250px;
         padding-bottom:30px;
         font-weight:bold;
      }
 </style>
</head>
<body>
	<section>
	  <div>
         <div id="blueline"> 어트랙션 </div>
      </div>
      <p>
      <div id="submenu">
         <a href="../main/main"> 유니버설 스튜디오 코리아  > </a> 　
         <a href=""> 이벤트&어트랙션  > </a> 　
         <a style="color:#00086D;"> 어트랙션 </a>
      </div>
	  <table width="1200" align="center">
	    <tr>
	     <c:forEach items="${alist}" var="avo" varStatus="sts">
	      <td onclick="location='attraction_content?id=${avo.id}'" id="td"> 
	        <img src="../resources/attraction/${avo.alistimg}" width="350" id="atr"> 
	      </td>
	     <c:if test="${sts.count%3==0}">
	    </tr>
	    <tr>
	     </c:if>
	     </c:forEach>
	    </tr>
	    
	    <!-- 페이지 -->
	  	<tr>	  	
	  	 <td colspan="4" align="center" id="nowpage">
	  	 
	  	 <c:if test="${pstart!=1}">
	  	   <a href="attraction_list?page=${pstart-1}">《 </a>
	  	 </c:if>
	  	 <c:if test="${pstart==1}">
	  	   	《
	  	 </c:if>
	  	 
	  	 <c:if test="${page!=1}">
	  	   <a href="attraction_list?page=${page-1}">〈 </a>
	  	 </c:if>
	  	 <c:if test="${page==1}">
	  	   	〈
	  	 </c:if>
	  	 
	  	  <c:forEach begin="${pstart}" end="${pend}" var="i">
	  	  	<c:if test="${page!=i}">
	  	  	 <a href="attraction_list?page=${i}"> ${i} </a>
	  	  	</c:if>
	  	  	<c:if test="${page==i}">
	  	  	 <a href="attraction_list?page=${i}" style="color:#0368DA; font-weight:900;"> ${i} </a>
	  	  	</c:if>
	  	  </c:forEach>
	  	  
	  	  <c:if test="${page!=chong}">
	  	   <a href="attraction_list?page=${page+1}">〉 </a>
	  	 </c:if>
	  	 <c:if test="${page==chong}">
	  	   	〉
	  	 </c:if>
	  	 
	  	 <c:if test="${pend!=chong}">
	  	   <a href="attraction_list?page=${pend+1}">》 </a>
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