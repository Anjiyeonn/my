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
  	width:1675px;
  	height:600px;
  	margin:auto;
  }
 </style>
</head>
<body>
	<section>
	  <table width="600" align="center" border="1">
	    <tr>
	      <td> 제목 </td>
	      <td> 작성자 </td>
	      <td> 작성일 </td>
	    </tr>
	    <c:forEach items="${hlist}" var="hvo">
	    <tr>
	      <td> <a href="hugi_content?id=${hvo.id}"> ${hvo.title} </a> </td>
	      <td> ${hvo.userid} </td>
	      <td> ${hvo.writeday} </td>
	    </tr>
	    </c:forEach>
	    
	    <tr>
	      <td colspan="3" align="center"> <a href="hugi"> 후기 쓰기 </a>
	      </td>
	    </tr>
	    
	  </table>
	</section>
</body>
</html>