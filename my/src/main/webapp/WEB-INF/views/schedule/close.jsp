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
  	margin-bottom:500px;
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
 </style>
</head>
<body>
	<section>
	 <div>
         <div id="blueline"> 오늘의 운휴 시설 </div>
      </div>
      <p>
      <div id="submenu">
         <a href="../main/main"> 유니버설 스튜디오 코리아  > </a> 　
         <a href=""> 영업시간  > </a> 　
         <a style="color:#00086D;"> 운휴안내 </a>
      </div>
	 <table width="1200" align="center">
	    <tr>
	     <c:forEach items="${alist}" var="avo" varStatus="sts">
	      <td onclick="location='../attraction/attraction_content?id=${avo.id}'" id="td"> 
	        <img src="../resources/attraction/${avo.alistimg}" width="350"> 
	      </td>
	     <c:if test="${sts.count%3==0}">
	    </tr>
	    <tr>
	     </c:if>
	     </c:forEach>
	    </tr>
	 </table>

	</section>
</body>
</html>