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
      width:1675px;
      height:600px;
      margin:auto;
    }
  </style>
  
</head>
<body>

   <section id="section">
     <form method="post" action="hugi_ok" enctype="multipart/form-data">
     <input type="hidden" name="id" value="${hvo.id}">
     <table width="900" align="center" border="1">
     <cation> <h3> 여러분의 소중한 경험을 들려주세요 </h3> </cation>
       <tr>
         <td> 제목 </td>
         <td> <input type="text" name="title" value="${hvo.title}"> </td>
       </tr>
       <tr>
         <td> 내용 </td>
         <td> <textarea rows="5" cols="40" name="content">${hvo.content}</textarea> </td>
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
         <td colspan="3"> <input type="submit" value="후기쓰기"> </td>
       </tr>
     </table>
     </form>
   </section>
   
</body>
</html>