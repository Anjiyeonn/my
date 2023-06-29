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
	  var elen=my.eimg.value.length;
	  var mlen=my.map.value.length;
	  var e2len=my.eimg2.value.length;
	  var ellen=my.elistimg.value.length;
	  
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
		  if(mlen==0)
		  {
			  alert("지도 이미지 사진을 추가해주세요.")
			  return false;
		  }  
	  }
	  if(document.getElementsByClassName("ck")[2].checked)
	  {
		  if(e2len==0)
		  {
			  alert("서브 이미지 사진을 추가해주세요.")
			  return false;
		  }  
	  }
	  if(document.getElementsByClassName("ck")[3].checked)
	  {
		  if(ellen==0)
		  {
			  alert("리스트 이미지 사진을 추가해주세요.")
			  return false;
		  }  
	  }
	  
	  return true;
  }
 </script>
</head>
<body>
   <section>
      <form method="post" onsubmit="return filecheck(this)" action="event_up_ok" enctype="multipart/form-data">
       <input type="hidden" name="id" value="${evo.id}">
       <input type="hidden" name="page" value="${page}">
	     <table width="1200" align="center" border="1">
	        <cation> <h3> 이벤트 수정 </h3> </cation> 
	        <tr>
	           <td> 이벤트 제목 </td>
	           <td> <input type="text" name="title" value="${evo.title}"> </td>
	        </tr>
	        <tr>
	           <td> 서브 제목 </td>
	           <td> <input type="text" name="subtitle" value="${evo.subtitle}"> </td>
	        </tr>
	        <tr>
	           <td> 메인 이미지 </td>
	           <td> 
	             <img src="../resources/event/${evo.eimg}" width="100" class="vimg">
	             <input type="file" name="eimg" class="fileb" style="visibility:hidden;">
	                       사진 변경 시 체크 <input type="checkbox" class="ck" onclick="viewfile(0,this)"> 
	           </td>
	        </tr>
	        <tr>
	           <td> 지 도 </td>
	           <td> 
	             <img src="../resources/event/${evo.map}" width="100" class="vimg">
	             <input type="file" name="map" class="fileb" style="visibility:hidden;">
	                       사진 변경 시 체크 <input type="checkbox" class="ck" onclick="viewfile(1,this)"> 
	           </td>
	        </tr>
	        <tr>
	           <td> 서브 이미지 </td>
	           <td> 
	             <img src="../resources/event/${evo.eimg2}" width="100" class="vimg">
	             <input type="file" name="eimg2" class="fileb" style="visibility:hidden;">
	                       사진 변경 시 체크 <input type="checkbox" class="ck" onclick="viewfile(2,this)"> 
	           </td>
	        </tr>
	        <tr>
	           <td> 리스트 이미지 </td>
	           <td> 
	             <img src="../resources/event/${evo.elistimg}" width="100" class="vimg">
	             <input type="file" name="elistimg" class="fileb" style="visibility:hidden;">
	                       사진 변경 시 체크 <input type="checkbox" class="ck" onclick="viewfile(3,this)"> 
	           </td>
	        </tr>
	        <tr>
	           <td> 이벤트 설명 </td>
	           <td> <textarea name="content">${evo.content}</textarea> </td>
	        </tr>
	        <tr>
	           <td> 이벤트 기간 </td>
	           <td> <input type="text" name="gigan" value="${evo.gigan}"> </td>
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