<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>     
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <style>
      section {
         width:1000px;
         margin:auto;
         margin-top:50px;
         margin-bottom:100px;
      }
      section table {
         border-spacing:0px;
      }
      section table td {
         border-bottom:1px solid #cccccc;
         height:103px;
      }
      section table tr:first-child td {
         border-top:3px solid #0368DA;
      } 
      section table tr:nth-last-child(1)  td {
         border-bottom:3px solid #0368DA;
      }  
      section table span {
        display:block;
        width:80px;
        height:20px;
        font-size:13px;
        border:1px solid #0368DA;
        margin-top:3px;
        cursor:pointer;
      }
      section table span:hover {
         background:#0368DA;
         color:white;
         cursor:pointer;
      }
      #hovernot:hover:not {
      }
   </style>
</head>
<body>       
   <section>
      <table width="1000" align="center">
         <caption> <h2> 주문 목록 </h2> </caption>
         <c:forEach items="${tmap}" var="map"> 
            <c:if test="${map.state==0}">
               <c:set var="state" value="결제완료"/>
            </c:if>
            <c:if test="${map.state==1}">
               <c:set var="state" value="환불신청"/>
            </c:if>
            <c:if test="${map.state==2}">
               <c:set var="state" value="환불완료"/>
            </c:if>
            <c:if test="${map.state==3}">
               <c:set var="state" value="사용완료"/>
            </c:if>
            <tr align="center">
               <td width="130"> ${map.jumuncode} </td>
               <td width="100"> 결제일 <br> ${map.writeday} </td>
               <td width="80"> <img src="../resources/ticket/${map.pimg}" width="55" height="40"> </td>
               <td width="180"> ${map.title} </td>
               <td width="100"> 입장일 <br> ${map.day} </td>
               <td width="50"> ${map.su}매 </td>
               <td width="100" align="right" style="color:red;"> <fmt:formatNumber value="${map.cprice}" pattern="#,###"/>원 </td>
               <td width="140"> ${state} </td>
               <td width="120">
                  <c:if test="${map.state==0}">
                     <span onclick="location='chgstate?state=1&id=${map.id}'"> 환불신청 </span>
                  </c:if>
                  <c:if test="${map.state==3}">
                     <c:if test="${map.hugi==0}">
                        <span onclick="location='../hugi/hugi?guid=${map.id}'"> 후기작성 </span>
                     </c:if>
                     <c:if test="${map.hugi==1}">
                        <span style="border-color:#cccccc; background:white; color:black; cursor:default;"> 작성완료 </span>
                     </c:if> 
                  </c:if>
                  <c:if test="${map.state==1}">  <!-- 결제완료로 state변경 -->
                     <span onclick="location='chgstate?state=0&id=${map.id}'"> 취소 </span>
                  </c:if>
               </td>
            </tr>
         </c:forEach>
      </table>
   </section>
</body>
</html>