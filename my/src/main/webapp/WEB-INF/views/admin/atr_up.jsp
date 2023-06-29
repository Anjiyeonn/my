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
  	height:600px;
  	margin:auto;
  }
 </style>
 <script>
  function viewfile(n,my)
  {
	  if(my.checked)
	  {
		  document.getElementsByClassName("fileb")[n].style.visibility="visible";
		  document.getElementsByClassName("vimg")[n].style.visibility="hidden";
	  }
	  else
	  {
		  document.getElementsByClassName("fileb")[n].style.visibility="hidden";
		  document.getElementsByClassName("vimg")[n].style.visibility="visible";
	  }
  }
  function filecheck(my)
  {
	  var alen=my.aimg.value.length;
	  var allen=my.alistimg.value.length;
	  var mlen=my.map.value.length;
	  
	  
	  if(document.getElementsByClassName("ck")[0].checked)
	  {
		  if(elen==0)
		  {
			  alert("메인 이미지 사진을 추가해주세요.")
			  return false;
		  }  
	  }
	  if(document.getElementsByClassName("ck")[1].checked)
	  {
		  if(allen==0)
		  {
			  alert("리스트 이미지 사진을 추가해주세요.")
			  return false;
		  }  
	  }
	  if(document.getElementsByClassName("ck")[2].checked)
	  {
		  if(mlen==0)
		  {
			  alert("지도 이미지 사진을 추가해주세요.")
			  return false;
		  }  
	  }
	  
	  return true;
  }
 </script>
</head>
<body> 
   <section>
      <form method="post" onsubmit="return filecheck(this)" action="atr_up_ok" enctype="multipart/form-data">
       <input type="hidden" name="id" value="${avo.id}">
       <input type="hidden" name="page" value="${page}">
	     <table width="1200" align="center" border="1">
	        <cation> <h3> 어트랙션 수정 </h3> </cation> 
	        <tr>
	           <td> 기구 이름 </td>
	           <td> <input type="text" name="title" value="${avo.title}"> </td>
	        </tr>
	        <tr>
	           <td> 메인 이미지 </td>
	           <td> 
	             <img src="../resources/attraction/${avo.aimg}" width="100" class="vimg">
	             <input type="file" name="aimg" class="fileb" style="visibility:hidden;">
	                       사진 변경 시 체크 <input type="checkbox" class="ck" onclick="viewfile(0,this)"> 
	           </td>
	        </tr>
	        <tr>
	           <td> 리스트 이미지 </td>
	           <td> 
	             <img src="../resources/attraction/${avo.alistimg}" width="100" class="vimg">
	             <input type="file" name="elistimg" class="fileb" style="visibility:hidden;">
	                       사진 변경 시 체크 <input type="checkbox" class="ck" onclick="viewfile(1,this)"> 
	           </td>
	        </tr>
	        <tr>
	           <td> 지 도 </td>
	           <td> 
	             <img src="../resources/attraction/${avo.map}" width="100" class="vimg">
	             <input type="file" name="map" class="fileb" style="visibility:hidden;">
	                       사진 변경 시 체크 <input type="checkbox" class="ck" onclick="viewfile(2,this)"> 
	           </td>
	        </tr>
	        <tr>
	           <td> 놀이기구 설명 </td>
	           <td> <textarea name="content">${avo.content}</textarea> </td>
	        </tr>
	        <tr>
	           <td> 정원 </td>
	           <td> <input type="text" name="inwon" value="${avo.inwon}"> </td>
	        </tr>
	        <tr>
	           <td> 소요 시간 </td>
	           <td> <input type="text" name="time" value="${avo.time}"> </td>
	        </tr>
	        <tr>
	           <td> 신장 제한 </td>
	           <td> <input type="text" name="jehan" value="${avo.jehan}"> </td>
	        </tr>
	        <tr>
	           <td colspan="2" align="center">
	              <input type="submit" value="수정">
	           </td>
	        </tr>
	     </table>
	  </form>
   </section>
</body>
</html>