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
         height:auto;
         margin:auto;
         font-family: 'GangwonEduPowerExtraBoldA';
      }
      section table {
         border-spacing:30px; /* 셀과 셀의 공간 */
      }
      section #table td {
         width:220px;
         vertical-align:top;
         height:200px;
         border:1px solid white;
         padding:10px;
      }
      section #table td div {
         width:220px;
      }
      section #table td:hover {
         border:2px solid #0368DA;
         box-shadow: 2px 2px 10px 10px grey;
         cursor:pointer;
      }
      section #table > caption {
         margin-top:50px;
         margin-bottom:100px;
      }
      section #table {
         margin-bottom:200px;
      }
      
      section a {
         text-decoration:none;
         color:black;
         cursor:pointer;
      }
      section #ticketmain {
      font-size:40px;
      font-weight:900;
    }
    section #ticketmainsub1 {
      font-size:19px;
    }
    section #ticketmainsub2 {
      font-size:19px;
      color:blue;
    }
    section #buyq {
      width:980px;
      height:50px;
      background:#0368DA;
      color:white;
      padding:10px;
    }
    section #resticket {
      width:850px;
      margin-left:70px;
      margin-top:80px;
    }
    section #warning {
      width:850px;
      height:180px;
      align:center;
      background:#FFDDDD;
      border:3px solid red;
      border-radius:7px;
      font-size:18px;
    }
    section #wmsg {
      margin:20px;
      text-align:left;
    }
    section #tourteam {
       margin-top:80px;
       margin-bottom:50px;
    }
    section #daelilink {
      width:400px;
      height:50px;
      color:white;
      background:#0030DB;
      border-radius:4px;
      text-align:center;
    }
    section #ticketmap {
      padding-left:40px;
    }
   
    #atag {
      font-size:19px;
      text-decoration:none;
      color:#0030DB;
      font-weight:950;
    }
    h {
      font-size:38px;
      font-weight:950;
    }
    
    #tt2 {
       width:1000px;
       padding-left:337.5px;
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
      padding-left:250px;
      font-weight:bold;
      padding-bottom:100px;
   }
   #submenu > a {
      text-decoration:none;
  	  color:#0D3EA3;
  	  font-family: 'GangwonEduPowerExtraBoldA';
   }
   </style>
</head>
<body>
   <section>
      <div>
         <div id="blueline"> 티켓 예매 </div>
      </div>
      <p>
      <div id="submenu">
         <a href="../main/main"> 유니버설 스튜디오 코리아  > </a> 　
         <a href=""> 티켓정보  > </a> 　
         <a style="color:#00086D;"> 예매권 </a>
      </div>
     <div id="tt">
      <table align="center" width="1500" id="table">
         <tr align="center">
         <c:forEach items="${plist}" var="pvo" varStatus="sts">
            <td width="220" onclick="location='tcontent?pcode=${pvo.pcode}'"> 
               <div align="center" style="height:190px;">
                  <img src="../resources/ticket/${pvo.pimg}" width="200" height="160">
               </div>
               <div> <b>${pvo.title}</b> </div>
               <div> 
                  <b><fmt:formatNumber value="${pvo.price-(pvo.price*(pvo.halin/100))}" type="number" pattern="#,###"/>원</b>
               </div>
            </td>
            <c:if test="${sts.count%3 == 0}">
         </tr>
         <tr>
            </c:if>
         </c:forEach>
         </tr>
      </table>
    </div>
     
     
     
     <p><br><p><br>
     <div id="tt2">
     <span id="ticketmain"> 스튜디오 패스(파크 입장권) </span> <br>
     <span id="ticketmainsub1"> 입장권에는 파크 입장과 모든 어트랙션 이용이 포함 됩니다. </span> <br> <p>
     <span id="ticketmainsub2"> <a href="../np" id="atag"> 티켓에는 파크에 입장하기 위한 입장권, 놀이기구 대기 시간을 단축시키는 유니버설 익스프레스 패스 등이 있습니다. </a> </span> <br><br><br>
     
     <div id="buyq"> <h3> 구입 방법 </h3> </div>
     
         <div id="resticket">
           <h> 예매권 </h> 
             <div id="naeyong">
           <br><br> 티켓 부스에서 교환할 필요 없이 바로 입장할 수 있습니다. <br><br><br>
           * 입장일에 따라 가격이 다릅니다. 가격 캘린더는 여행사 사이트를 확인하여 주세요. <br><br>
           
           * 3월 2일 학기 시작일로 하여, 같은 해 3월에 중학교 입학 예정자일 경우, 파크 입장일 3월 1일까지는 어린이 요금, 3월 2일 이후로는 성인 요금으로 합니다. 단, 위의 경우에 해당하지 않는 경우 파크에 입장할 때의 나이가 만 4~11세일 경우는 어린이 요금으로, 만 12세 이상일 경우는 성인 요금으로 합니다. <br><br>
           
           * 연간 스튜디오 패스 이외의 입장권은 재입장을 할 수 없습니다. <br><br>
           
           * 이 밖에도 다양한 종류의 티켓이 있습니다. 일정이나 목적에 따라 원하는 티켓을 이용해 주십시오. <br><br>
           
           * 200명 이상은 단체 할인이 적용됩니다. 상세한 내용은 여행사에 문의해 주십시오. <br><br><br><br><br><br>
               <div id="warning">
                 <div id="wmsg">
                   <b>【주의해 주시기 바랍니다! 전매 티켓은 엄격히 금지되어 있습니다. 전매한 티켓은 파크에서 사용할 수 없습니다.】</b> <br>
                   <hr> 티켓 매매 사이트나 인터넷 옥션 사이트 등에서 전매자가 판매한 티켓에 대해 2015년 11월 1일 (일) 입장 티켓부터 QR코드를 비활성화 합니다. <br><br>
                   <a href="" id="atag"> 상세히 보기 </a>
                 </div>
               </div>
               
               <div id="tourteam">
               <h> 여행사 </h>
                 <div> <img src="../resources/ticket/tour1.png" width="850" style="margin-bottom:20px;"> </div>
               
               * 판매 장소에 따라 구매할 수 있는 티켓이 다릅니다. <br><br><br>
               
               * 파트너 제휴 호텔에서는 숙박 당일과 그다음 날 티켓만 판매합니다. <br><br><br><br>
               </div>
               
               <div id="ticktetmap">
               <h> 게이트에서 티켓 받기 </h> <br><br>
               
               * 티켓 부스에서 입장 당일 구매 가능. <br><br><br>
               
               * 티켓 부스는 파크 영업 시작 시간 1시간 전부터 파크 영업 종료 시간 2시간 전까지 이용 가능합니다. <br><br><br><br><br>
                 <img src="../resources/ticket/ticketboose.png">
               </div>
           </div>
         </div>
         <p><br><p><br>
     </div>
   </section>
</body>
</html>