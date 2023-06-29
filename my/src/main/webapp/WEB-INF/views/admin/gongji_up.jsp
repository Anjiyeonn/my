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
  }
  section table {
  	margin-bottom:70px;
  }
  section #gtitle {
  	width:700px;
  	height:40px;
  	font-size:17px;
  	border:1px solid #0368DA;
  	border-radius:5px;
  }
  
  section #gcontent {
  	width:700px;
  	height:400px;
  	font-size:15px;
  	border:1px solid #0368DA;
  	border-radius:5px;
  }
  
  section #gsubmit {
  	width:200px;
    height:50px;
    border:1px solid #0270E3; 
    background:#0270E3;
    color:white;
    cursor:pointer;
    outline:none;
  	margin-top:15px;
  	font-size:15px;
  	font-weight:900;
  	border-radius:5px;
  }
  section #chk {
  	margin-left:250px;
  	font-size:13px;
  	color:#0368DA;
  	font-weight:900;
  }
 </style>
</head>
<body>
	<section>
	  <form method="post" action="gongji_up_ok">
	   <input type="hidden" name="id" value="${gvo.id}">
	   <input type="hidden" name="page" value="${page}">
		<table width="1200" align="center">
		 <caption> <h2> 공지 수정 </h2> </caption>
		  <tr align="center">
		    <td> <input type="text" name="title" placeholder="제목" id="gtitle" value="${gvo.title}"> </td>
		  </tr>
		  <tr align="center">
		    <td> <textarea name="content" placeholder="내용을 작성해주세요." id="gcontent">${gvo.content}</textarea> </td>
		  </tr>
		  <tr>
       		<c:if test="${gvo.chk==1 }">
       		 <td id="chk"> <input type="checkbox" name="chk" value="1" id="chk" checked> 주요 공지시 체크 </td>
       		</c:if>
       		<c:if test="${gvo.chk==0}">
       		 <td id="chk"> <input type="checkbox" name="chk" value="1" id="chk"> 주요 공지시 체크 </td>
       		</c:if>
       		
     	  </tr>
		  <tr align="center">
		    <td> <input type="submit" value="수정" id="gsubmit"> </td>
		  </tr>
		</table>
	  </form>
	</section>
</body>
</html>