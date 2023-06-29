<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../admin/admin_top.jsp" %>
 <style>
  section {
  	width:1200px;
  	height:600px;
  	margin:auto;
  }
  table {
  	border-spacing:0px;
  }
  table td {
  	padding:5px;
  }
  section #title {
  	width:800px;
  	height:30px;
  	border:1px solid #0368DA;
  	border-radius:5px;
  	font-weight:900;
  }
  section textarea {
  	width:800px;
  	height:300px;
  	overflow:auto;
  	border:1px solid #0368DA;
  	border-radius:5px;
  }
  section #inwon {
  	width:50px;
  	height:30px;
  	border:1px solid #0368DA;
  	border-radius:5px;
  }
  section #time {
  	width:80px;
  	height:30px;
  	border:1px solid #0368DA;
  	border-radius:5px;
  }
  section #jehan {
  	width:80px;
  	height:30px;
  	border:1px solid #0368DA;
  	border-radius:5px;
  }
  section #submit {
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
 </style>
</head>
<body>
	<section>
	 <form method="post" action="attraction_ok" enctype="multipart/form-data">
	  <table width="1000" align="center">
	   <caption> <h2> 놀이기구 등록 </h2> </caption> 
	    <tr>
	      <td> 놀이기구 이름 </td>
	      <td> <input type="text" name="title" id="title"> </td>
	    </tr>
	    <tr>
	      <td> 메인 이미지 </td>
	      <td> <input type="file" name="aimg"> </td>
	    </tr>
	    <tr>
	      <td> 리스트 이미지 </td>
	      <td> <input type="file" name="alistimg"> </td>
	    </tr>
	    <tr>
	      <td> 놀이기구 설명 </td>
	      <td> <textarea name="content"></textarea></td>
	    </tr>
	    <tr>
	      <td> 정원 </td>
	      <td> <input type="text" name="inwon" id="inwon"> 명 <span style="font-size:12px;">(숫자만 입력)</span> </td>
	    </tr>
	    <tr>
	      <td> 소요 시간 </td>
	      <td> <input type="text" name="time" id="time"> <span style="font-size:12px;">(ex:약 5분)</span> </td>
	    </tr>
	    <tr>
	      <td> 신장 제한 </td>
	      <td> <input type="text" name="jehan" id="jehan"> <span style="font-size:12px;">(ex:120cm 이상 / 없는 경우 -> X)</span> </td>
	      
	    </tr>
	    <tr>
	      <td> 지도 </td>
	      <td> <input type="file" name="map"> </td>
	    </tr>
	    <tr>
	      <td colspan="2" align="center"> <input type="submit" value="등록" id="submit"> </td>
	    </tr>
	  </table>
	 </form>
	</section>
</body>
</html>