<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
  section #htitle {
  	width:700px;
  	font-weight:900;
  	text-align:center;
  }
  section #hday {
  	font-size:13px;
  	color:#8C8C8C;
  }
 </style>
  
</head>
<body>
   
   <section id="section">
     <input name="hform" type="hidden" value="${hvo.id}">
     <table width="800" align="center">
       <caption><h2>${hvo.userid} 고객님의 후기 </h2></caption>
       <tr>
	  	  <td id="htitle"> ${hvo.title} </td>
	  	  <td id="hday"> ${hvo.writeday} </td>
	    </tr>
	    <tr>
	      <td colspan="2" id="hcontent"> ${hvo.content} </td>
	    </tr>
	    <tr>
	      <td colspan="2" id="himg"> <img src="../resources/hugi/${hvo.fname1}" width="800"> </td>
	    </tr>
	    <tr>
	      <td colspan="2" id="himg"> <img src="../resources/hugi/${hvo.fname2}" width="800"> </td>
	    </tr>
	    <tr>
	     <td colspan="2" align="center">
	      <c:if test="${userid=='admin'}">
  	 		 <a href="hlist?page=${page}"><span id="li"> 목록 </span> </a>
  	 		 <a href="../hugi/hugi_delete?id=${gvo.id}"> <span id="du"> 삭제</span></a>
  		  </c:if>
  		  <c:if test="${userid==hvo.userid}">
  			<a href="hlist?page=${page}"><span id="li">  목록 </span> </a>
  			<a href="../hugi/hugi_delete?id=${hvo.id}"> <span id="du"> 삭제</span></a>
  			<%-- <a href="../hugi/hugi_update?id=${hvo.id}&page=${page}"> <span id="du"> 수정</span></a> --%>
  		  </c:if>
  		  <c:if test="${userid!='admin' && userid!=hvo.userid}">
  	 		 <a href="../hugi/hlist?page=${page}"><span id="li"> 목록 </span> </a>
  		  </c:if>
	      </td>
	    </tr>
       
     </table>
   </section>
   
</body>
</html>