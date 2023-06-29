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
      section a {
  	     text-decoration:none;
  	     color:#0D3EA3;
      }
      section table #td {
         padding:20px;
      }
      #elistimg {
         cursor:pointer;
         border:2px solid #0270E3;
         padding:5px;
         box-shadow: 2px 2px 10px grey;
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
         padding-bottom:30px;
         font-weight:bold;
      }
   </style>
</head>
<body>
   <section>
      <div>
         <div id="blueline"> 진행중인 이벤트 </div>
      </div>
      <p>
      <div id="submenu">
         <a href="../main/main"> 유니버설 스튜디오 코리아  > </a> 　
         <a href=""> 이벤트&어트랙션  > </a> 　
         <a style="color:#00086D;"> 이벤트 </a>
      </div>
      <table align="center" id="table" align="center">
         <tr>
            <c:forEach items="${elist}" var="evo" varStatus="sts">
               <td width="250" id="td">
                  <img src="../resources/event/${evo.elistimg}" onclick="location='event_page?id=${evo.id}'" width="250" id="elistimg">
               </td>
               <c:if test="${sts.count%4 == 0}">
         </tr>
         <tr>
               </c:if>
           </c:forEach>
         </tr>
         
         <!-- 페이지 출력 -->
         <tr>
            <td align="center" colspan="4">
               <!-- 10페이지 왼쪽으로 -->
               <c:if test="${pstart != 1}">
                  <a href="elist?page=${pstart-1}"> << </a>
               </c:if>
               <c:if test="${pstart == 1}">  
                  <<
               </c:if>
               <c:forEach var="i" begin="${pstart}" end="${pend}">
                  <c:if test="${page != i}">
                     <a href="elist?page=${i}"> ${i} </a>
                  </c:if>
                  <c:if test="${page == i}">  
                     <span style="color:red;"> ${i} </span>
                  </c:if> 
               </c:forEach>  
               <!-- 10페이지 오른쪽 -->
               <c:if test="${pend != chong}">
                  <a href="elist?page=${pend+1}"> >> </a>
               </c:if>
               <c:if test="${pend == chong}">
                  >>
               </c:if>
            </td>
         </tr>
      </table>
   </section>
</body>
</html>