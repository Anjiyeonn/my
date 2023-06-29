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
         /* height:600px; */
         margin:auto;
         text-align:center;
      }
      section table {
         border-spacing:0px; /* 셀과 셀의 공간 */
         margin-top:30px;
      }
      section table tr:first-child td {
         border-top:2px solid #0368DA;
      }
      section table tr:last-child td {
         border-bottom:2px solid #0368DA;
      }
      section table td {
         font-size:14px;
         height:30px;
         padding-left:10px;
      }
      section table tr td:first-child {
         background:#eeeeee;
         padding-right:10px;
      }
      section #bs {
         font-size:14px;
         font-weight:100;
         display:inline-block;
         width:75px;
         height:20px;
         border:2px solid #0368DA;
         padding:4px;
         margin-left:20px;
         cursor:pointer;
         background:#FaFaFa;
      }
      section #bs:hover {
         background:#0368DA;
         color:white;
      }
      
      section #submit {
         margin-top:20px;
      }
      section input[type=submit] {
         width:400px;
         height:50px;
         border:2px solid #0368DA;
         background:white;
         font-size:17px;
         cursor:pointer;
      }
      section #hover:hover {
         background:#0368DA;
         color:white;
      }
      section .pay {
         width:800px;
         height:100px;
         display:none;
         padding:10px;
         border:1px solid #aaaaaa;
         margin-top:15px;
      }
      section hr {
         border-color:#eeeeee;
         border-top:none;
      }
   </style>
   <script>
      function member_phone()
      {
    	  if(confirm("휴대폰번호를 변경하시겠습니까?"))
    	  {
    		  var phone=document.gform.phone.value;
    	  
    	      var chk=new XMLHttpRequest();
    	      chk.onload=function()
    	      {
    		      if(chk.responseText=="1")
    		    	  alert("오류");
    	      }
    	      chk.open("get","member_phone?phone="+phone);
    	      chk.send();
    	      
    	      alert("휴대폰번호가 변경되었습니다.");
    	  }
      }
      
      function pay_change(n)
      {
 	     var pay=document.getElementsByClassName("pay");
 	  
 	     for(i=0;i<pay.length;i++)
 	     {
 		     pay[i].style.display="none";
 		     document.gform.gibonpay[i].checked=false;
 	     }
 	  
 	     pay[n].style.display="block";
 	     document.gform.gibonpay[n].checked=true;
      }
   </script>
</head>
<body>
   <section>
      <h2 align="left"> 주문/결제 </h2>
      <hr>
      <!-- 구매자 정보 -->
     <form name="gform" method="post" action="gumae_ok" onsubmit="return check(this)">
      <input type="hidden" name="pcode" value="${pcode}">
      <input type="hidden" name="su2" value="${su}">
      <input type="hidden" name="day" value="${day}">
      <input type="hidden" name="juk" value="0">
      <input type="hidden" name="privateprice" value="${privateprice}">
      <table width="1000" align="center">
         <caption><h3 align="left"> 구매자 정보 </h3></caption>
         <tr>
            <td align="right" width="120"> 이 름 </td>
            <td align="left"> ${mvo.name} </td>
         </tr>
         <tr>
            <td align="right"> 이메일 </td>
            <td align="left"> ${mvo.email} </td>
         </tr>
         <tr>
            <td align="right"> 휴대폰번호 </td>
            <td align="left">
               <input type="text" name="phone" value="${mvo.phone}" size="10">
               <input type="button" value="수정" onclick="member_phone()">
            </td>
         </tr>
      </table>
     
      
      <!-- 결제 상품 -->
      <table width="1000" align="center">
         <caption> <h3 align="left"> 결제 상품 </h3> </caption>
         <c:forEach items="${plist}" var="pvo">
         <tr>
            <td align="left" style="font-weight:bold;"> ▶ 
               ${pvo.title} &nbsp;&nbsp;/&nbsp;&nbsp; 수량 : ${pvo.su} &nbsp;&nbsp;/&nbsp;&nbsp; ${pvo.day}
            </td>
         </tr>
         </c:forEach>
      </table>
      
      <!-- 결제정보 -->
      <table width="1000" align="center">
         <caption><h3 align="left"> 결제 정보 </h3></caption>
         <tr>
            <td align="right" width="120"> 상품가격 </td>
            <td align="left">
               <fmt:formatNumber value="${pprice}" pattern="#,###" type="number"/>원
               (수량 : ${psu}매)
            </td>
         </tr>
         <tr>
            <td align="right"> 포인트사용 </td>
            <td align="left">
               <input type="text" name="juk_use" value="<fmt:formatNumber value='0' pattern='#,###' type='number'/>" style="text-align:right" size="5">
               <a style="font-size:12px;"> [사용가능 : ${mvo.juk} Point] </a>
            </td>
         </tr>
         <tr>
            <td align="right"> 총 결제금액 </td>
            <td align="left">
               <input type="hidden" name="cprice" value="<fmt:formatNumber value='${payprice}' pattern='#' type='number'/>">
               <b><fmt:formatNumber value="${payprice}" pattern="#,###" type="number"/>원</b>
            </td>
         </tr>
         <tr>
            <td align="right" valign="top"> 결제방법 </td>
            <td align="left">
               <input type="radio" name="pay" value="0" onclick="pay_change(0)"> 계좌이체
               <input type="radio" name="pay" value="1" checked onclick="pay_change(1)"> 신용/체크카드
               <input type="radio" name="pay" value="2" onclick="pay_change(2)"> 휴대폰 결제
               <input type="radio" name="pay" value="3" onclick="pay_change(3)"> 무통장 입금
               <p>
               <div class="pay"> ▶ 은행선택 
                  <select name="bank">
                     <option value="0"> 선 택 </option>
                     <option value="1"> 우리은행 </option>
                     <option value="2"> 국민은행 </option>
                     <option value="3"> 신한은행 </option>
                     <option value="4"> 하나은행 </option>
                     <option value="5"> 농협은행 </option>
                     <option value="6"> 카카오뱅크 </option>
                     <option value="7"> 그 외 </option>
                  </select>
                  <hr>
                  <input type="checkbox" name="gibonpay" value="0"> 기본 결제 수단으로 사용
               </div>
               <div class="pay" style="display:block;"> ▶ 카드선택 
                  <select name="card">
                     <option value="0"> 선 택 </option>
                     <option value="1"> 삼성카드 </option>
                     <option value="2"> 우리카드 </option>
                     <option value="3"> 국민카드 </option>
                     <option value="4"> 신한카드 </option>
                     <option value="5"> 하나카드 </option>
                     <option value="6"> 농협카드 </option>
                     <option value="7"> 롯데카드 </option>
                     <option value="8"> 그 외 </option>
                  </select>
                  <hr> ▶ 할부기간
                  <select name="gigan">
                     <option value="0"> 선 택 </option>
                     <option value="1"> 일시불 </option>
                     <option value="2"> 2개월(무이자) </option>
                     <option value="3"> 3개월(무이자) </option>
                     <option value="4"> 4개월(부분 무이자) </option>
                     <option value="5"> 5개월(부분 무이자) </option>
                     <option value="6"> 6개월(부분 무이자) </option>
                     <option value="7"> 7개월 </option>
                     <option value="8"> 8개월 </option>
                     <option value="9"> 9개월 </option>
                     <option value="10"> 10개월</option>
                     <option value="11"> 11개월 </option>
                     <option value="12"> 12개월 </option>
                  </select> <a style="font-size:12px;">(할부는 50,000원 이상부터 가능)</a>
                  <hr>
                  <input type="checkbox" name="gibonpay" value="1" checked> 기본 결제 수단으로 사용
               </div>
               <div class="pay"> ▶ 통신사
                  <select name="tel">
                     <option value="0"> 선 택 </option>
                     <option value="1"> SKT </option>
                     <option value="2"> KT </option>
                     <option value="3"> LG </option>
                     <option value="4"> 자급제 </option>
                  </select> 
                  <hr>
                  <input type="checkbox" name="gibonpay" value="2"> 기본 결제 수단으로 사용
               </div>
               <div class="pay"> ▶ 은행선택
                  <select name="bank2">
                     <option value="0"> 선 택 </option>
                     <option value="1"> 우리은행 </option>
                     <option value="2"> 국민은행 </option>
                     <option value="3"> 신한은행 </option>
                     <option value="4"> 하나은행 </option>
                     <option value="5"> 농협은행 </option>
                     <option value="6"> 카카오뱅크 </option>
                     <option value="7"> 그 외 </option>
                  </select> 
                  <hr> ▶ 입금기한 ${gihan} 까지  <a style="font-size:12px">(입력하신 휴대폰 번호로 임시 계좌번호가 발송됩니다.)</a>
                  <hr>
                  <input type="checkbox" name="gibonpay" value="3"> 기본 결제 수단으로 사용
               </div>
               <p>
            </td>
         </tr> 
      </table>
      <br>
      <div id="submit"> <input type="submit" id="hover" value="결제하기"> </div>
      <br><br>
     </form>
   </section>
</body>
</html>