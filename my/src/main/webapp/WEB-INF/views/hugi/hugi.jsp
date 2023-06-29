<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
  section table {
  	margin-bottom:70px;
  }
  section #htitle {
  	width:700px;
  	height:40px;
  	font-size:17px;
  	border:1px solid #0368DA;
  	border-radius:5px;
  }
  
  section #hcontent {
  	width:700px;
  	height:400px;
  	font-size:15px;
  	border:1px solid #0368DA;
  	border-radius:5px;
  }
  
  section #hsubmit {
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

   <section id="section">
     <form method="post" action="hugi_ok" enctype="multipart/form-data">
     <input type="hidden" name="pcode" value="${pvo.pcode}">
     <input type="hidden" name="guid" value="${guid}">
     <table width="900" align="center">
     <cation align="center"> <h3> 여러분의 소중한 경험을 적어주세요 </h3> </cation>
       <tr>
         <td> <img src="../resources/ticket/${pvo.pimg}" width="70"> </td>
         <td> ${pvo.title} </td>
       </tr>
       <tr>
         <td> 제목 </td>
         <td> <input type="text" name="title" id="htitle"> </td>
       </tr>
       <tr>
         <td> 내용 </td>
         <td> <textarea rows="5" cols="40" name="content" id="hcontent"></textarea> </td>
       </tr>
       <tr>
         <td> 티켓 사진 </td>
		 <td>
		   <input type="file" name="fname1">
		</td>
		<tr>
         <td> 현장 사진 </td>
		 <td>
		   <input type="file" name="fname2">
		</td>
       </tr>
       <tr>
         <td colspan="3" align="center"> <input type="submit" value="후기쓰기" id="hsubmit"> </td>
       </tr>
     </table>
     </form>
   </section>
   
</body>
</html>