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

  section {
  	width:1200px;
  	margin:auto;
  }
  section #li {
  	display:inline-block;
  	width:70px;
  	height:27px;
  	text-align:center;
  	padding-top:5px;
  	cursor:pointer;
  	background:#0368DA;
  	color:white;
  	font-weight:900;
  	font-size:14px;
  	border:1px solid #0368DA;
  	border-radius:5px;
  }
  section #du {
  	display:inline-block;
  	width:70px;
  	height:27px;
  	text-align:center;
  	padding-top:5px;
  	cursor:pointer;
  	background:white;
  	color:#0368DA;
  	font-weight:900;
  	font-size:14px;
  	border:1px solid #0368DA;
  	border-radius:5px;
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
  section tr:first-child td {
  	height:50px;
  	border-top:2px solid #0368DA;
  	font-size:15px;
  }
  
  section a {
  	text-decoration:none;
  	color:white;
  }
  section #gtitle {
  	width:700px;
  	font-weight:900;
  	text-align:center;
  }
  section #gcontent {
  	height:500px;
  	overflow:auto;

  }
  section #gday {
  	font-size:13px;
  	color:#8C8C8C;
  }
 </style>
</head>
<body>
	<section>
	  <table width="800" align="center">
	   <caption> <h2> 공지사항</h2> </caption>
	  	<tr>
	  	  <td id="gtitle"> ${gvo.title} </td>
	  	  <td id="gday"> ${gvo.writeday} </td>
	    </tr>
	    <tr>
	      <td colspan="2" id="gcontent"> ${gvo.content} </td>
	    </tr>
	    <tr>
	     <td colspan="2" align="center">
	      <c:if test="${userid=='admin'}">
  	 		 <a href="gongji_list?page=${page}"><span id="li"> 목록 </span> </a>
  	 		 <a href="../admin/gongji_del?id=${gvo.id}"> <span id="du"> 삭제</span></a>
  	 		 <a href="../admin/gongji_up?id=${gvo.id}&page=${page}"><span id="du">수정</span></a>
  		  </c:if>
  		  <c:if test="${userid!='admin'}">
  			<span id="li"> <a href="gongji_list?page=${page}"> 목록 </a> </span>
  		  </c:if>
	      </td>
	    </tr>
	  </table>
	</section>
</body>
</html>