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
      height:1000px;
      margin:auto;
      position:relative;
      font-family: 'GangwonEduPowerExtraBoldA';
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
      /* font-family:'휴먼둥근헤드라인'; */
      padding-left:250px;
      font-weight:bold;
   }
   
   section a {
      text-decoration:none;
      color:#0D3EA3;
   }
   
   #map {
      margin-top:50px;
      margin-left:300px;
      padding-left:450px;
   }
   
   #mcontent {
      margin-left:300px;
      padding-top:30px;
   }
 </style>
 <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDo-UhpKjqlHeVRAKB5ANwiPnjmLXWeBz0&callback=initMap&region=kr"></script>
  <script>
    function initMap() {
      var univ = { lat: 34.665451 ,lng: 135.432338 };
      var map = new google.maps.Map(
        document.getElementById('map'), {
          zoom: 15,
          center: univ
        });
      
      var marker = new google.maps.Marker({position:univ, map: map});
    }
  </script>
</head>
<body>
	<section>
		<div>
          <div id="blueline"> 찾아오는 길 </div>
        </div>
        <p>
        <div id="submenu">
          <a href="../main/main"> 유니버설 스튜디오 코리아  > </a> 　
          <a href=""> 유니버설  > </a> 　
          <a style="color:#00086D;"> 찾아오는 길 </a>
        </div>
        
		<div id="map" style="width:700px; height: 700px;"></div>
		
		
		<div id="mcontent">
		   ▶ 한신고속도로 완간선의 홋코 JCT를 타고 유니버설 시티 출구 <br>
		   ▶ 주소: 〒554-0031 <br>
                           ▶ 오사카부 오사카시 고노하나구 사쿠라지마 2-1-33 <br>
        </div>
  
	</section>
</body>
</html>
