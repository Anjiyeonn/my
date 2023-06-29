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
      height:650px;
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
   
   section #bc {
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
   
   section #abab {
      margin-top:50px;
   }
   section td {
      width:300px;
      height:35px;
   }
   section #ab1 {
      font-size:35px;
      color:#152B76;
      cursor:default;
   }
   section #ab2 {
      font-size:20px;
      color:#0368DA;
   }
   section td > a {
      cursor:pointer;
      text-decoration:none;
      color:#0368DA;
   }
   
   /* section #ab12:hover {
      font-size:40px;
   }
   section #ab13:hover {
      font-size:40px;
   }
   section #ab14:hover {
      font-size:40px;
   }
   section #ab15:hover {
      font-size:40px;
   }
   section #ab16:hover {
      font-size:40px;
   } */
   
   section #ab21:hover {
      font-size:25px;
   }
   section #ab22:hover {
      font-size:25px;
   }
   section #ab23:hover {
      font-size:25px;
   }
   section #ab24:hover {
      font-size:25px;
   }
   section #ab25:hover {
      font-size:25px;
   }
   section #ab26:hover {
      font-size:25px;
   }
   section #ab27:hover {
      font-size:25px;
   }
   section #ab28:hover {
      font-size:25px;
   }
   section #ab29:hover {
      font-size:25px;
   }
   section #ab210:hover {
      font-size:25px;
   }
   section #ab211:hover {
      font-size:25px;
   }
   section #ab212:hover {
      font-size:25px;
   }
   section #ab213:hover {
      font-size:25px;
   }
   section #ab214:hover {
      font-size:25px;
   }
 </style>
</head>
<body>
   <section>
      <div>
         <div id="blueline"> 사이트 맵 </div>
      </div>
      <p>
      <div id="submenu">
         <a id="bc" href="../main/main"> 유니버설 스튜디오 코리아  > </a> 　
         <a style="color:#00086D;"> 사이트 맵 </a>
      </div>
      
      <div id="abab">
         <table width="1200" align="center">
            <tr id="ab1" align="center">
               <td id="ab12"> 유니버설 </td>
               <td id="ab13"> 이벤트&어트랙션 </td>
               <td id="ab14"> 영업시간 </td>
            </tr>
            <tr id="ab2" align="center">
               <td id="ab21"> <a href="../main/universal"> 유니버설 소개 > </a> </td>
               <td id="ab22"> <a href="../event/elist"> 이벤트 소개 > </a> </td>
               <td id="ab23"> <a href="../schedule/schedule"> 운영시간 > </a> </td>
            </tr>
            <tr id="ab2" align="center">
               <td id="ab24"> <a href="../map/map"> 찾아오는 길 > </a> </td>
               <td id="ab25"> <a href="../attraction/attraction_list"> 어트랙션 소개 > </a> </td>
               <td id="ab26"> <a href="../schedule/close"> 운휴안내 > </a> </td>
            </tr>
            <tr id="ab2" align="center">
               <td id="ab27"> <a href="../map/maps"> 파크 맵 > </a> </td>
               <td>  </td>
               <td>  </td>
            </tr>
            <tr align="center">
               <td>  </td>
               <td>  </td>
               <td>  </td>
            </tr>
         </table>
      </div>
      <div id="abab">
         <table width="1200" align="center">
            <tr id="ab1" align="center">
               <td id="ab15"> 티켓정보 </td>
               <td id="ab16"> 즐기기 </td>
               <td>  </td>
            </tr>
            <tr id="ab2" align="center">
               <td id="ab28"> <a href="../ticket/tlist"> 예매권 > </a> </td>
               <td id="ab29"> <a href="../gongji/gongji_list"> 공지사항 > </a> </td>
               <td>  </td>
            </tr>
            <tr id="ab2" align="center">
               <td id="ab210"> <a href="../ticket/tcontent?pcode=T01"> 스튜디오 패스(대인) > </a> </td>
               <td id="ab211"> <a href="../hugi/hlist"> 후기 > </a> </td>
               <td>  </td>
            </tr>
            <tr id="ab2" align="center">
               <td id="ab212"> <a href="../ticket/tcontent?pcode=T02"> 스튜디오 패스(소인) > </a> </td>
               <td id="ab214"> <a href="../main/enjoy"> 즐기기 팁 > </a> </td>
               <td>  </td>
            </tr>
            <tr id="ab2" align="center">
               <td id="ab213"> <a href="../ticket/tcontent?pcode=T03"> 익스프레스 패스 > </a> </td>
               <td>  </td>
               <td>  </td>
            </tr>
         </table>
      </div>
   </section>
</body>
</html> 