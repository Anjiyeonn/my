<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      height:1200px;
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
   
   section #title{
      margin-top:50px;
      margin-left:150px;
   }
   
   section input[type=button] {
      width:200px;
      height:35px;
      cursor:pointer;
      background:#0270E3;
      color:white;
      outline:none;
      border:1px solid #0270E3;
      margin-left:200px;
      margin-top:50px;
   }
   section input[type=button]:hover {
      cursor:pointer;
      background:#0D3EA3;
      border:1px solid #0D3EA3;
      outline:none;
      color:white;
   }
 </style>
</head>
<body>
   <section>
      <div>
         <div id="blueline"> 파크 맵 </div>
      </div>
      <p>
      <div id="submenu">
         <a href="../main/main"> 유니버설 스튜디오 코리아  > </a> 　
         <a href=""> 유니버설  > </a> 　
         <a style="color:#00086D;"> 파크 맵 </a>
      </div>
      
      <div id="title">
         <img src="../resources/map/map1.jpg">
      </div>
      <div>
         <input type="button" onclick="window.open('https://www.usj.co.jp/tridiondata/usj/ko/kr/files/documents/usj-pdf-studio-guide.pdf')" value="파크 맵 다운로드(pdf)">
         <span style="font-size:11px;"> (2023년 03월 17일 갱신) </span>
      </div>
   </section>
</body>
</html> 