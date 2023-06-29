<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
   <style>
      section {
         width:1000px;
         height:auto;
         margin:auto;
         padding-top:50px;
      }
      section #a1 {
         text-align:center;
         font-size:20px;
         font-weight:900;
         height:40px;
         padding-top:10px;
      }
      section #a11 {
         padding-top:20px;
      }
      section #a2 {
         font-size:20px;
         color:#0368DA;
         font-weight:900;
         width:990px;
         height:40px;
         padding-top:10px;
         border:1px solid #cccccc;
         padding-left:10px;
      }
      section table {
         margin-top:20px;
      }
      section #a3 {
         font-size:20px;
         text-align:left;
         height:40px;
      }
      section td {
        height:30px;
        font-size:14px;
      }
   
      section #a4 {
        text-align:center;
        margin-top:20px;
      }
      section #a4 span {
        display:inline-block;
        width:200px;  
        height:30px;
        border:1px solid #0368DA;
        padding-top:8px;
        cursor:pointer;
        margin-bottom:50px;
      }
      section #a4 span:hover {
         background:#0368DA;
         color:white;
      }
   </style> 
</head>
<body>
   <c:choose>
      <c:when test="${tmap.get(0).pay==0}">
         <c:set var="pay" value="계좌이체"/>
      </c:when>
      <c:when test="${tmap.get(0).pay==1}">
         <c:set var="pay" value="신용/체크카드"/>
      </c:when>
      <c:when test="${tmap.get(0).pay==2}">
         <c:set var="pay" value="휴대폰"/>
      </c:when>
      <c:when test="${tmap.get(0).pay==3}">
         <c:set var="pay" value="무통장입금"/>
      </c:when>
   </c:choose>
           
   <section>
      <h2> 예매 완료 </h2>
      <hr>
      <div id="a1"> 예매가 완료되었습니다 </div>
      <hr>
      <h2 id="a11"> 예매 정보 </h2>
      <c:forEach items="${tmap}" var="map">
         <div id="a2"> [${map.jumuncode}] ${map.title} : ${map.day} (${map.su}매) </div>
      </c:forEach>
      <div>
         <table width="900">
            <tr>
               <th id="a3"> 결제정보 </th>
            </tr>
            <tr>
               <td style="color:red; font-size:18px;"> <b> 결제 금액 :  <fmt:formatNumber value="${totalprice}" pattern="#,###" type="number"/>원 </b> </td>
            </tr>
            <tr>
               <td> └ 티켓 금액 : <fmt:formatNumber value="${totalprice}" pattern="#,###" type="number"/>원 </td>
            </tr>
            <tr>
               <td> └ 할인 금액 : - <fmt:formatNumber value="${totalhalin}" pattern="#,###" type="number"/>원 </td>
            </tr>
         </table>
      </div>
      <div id="a4">
         <span onclick="location='../member/jumun_view'"> 주문 내역보기 </span>
         <span onclick="location='../main/main'"> 메인으로 </span>
      </div>
   </section>
</body>
</html>




