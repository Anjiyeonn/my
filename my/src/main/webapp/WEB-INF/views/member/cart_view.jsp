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
      @font-face {
        font-family: 'GangwonEduPowerExtraBoldA';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduPowerExtraBoldA.woff') format('woff');
        font-weight: normal;
        font-style: normal;
      }
      section {
         width:1000px;
         margin:auto;
         text-align:center;
         padding-top:50px;
      }
      section table {
         border-spacing:0px;
      }
      section > table > caption {
         font-family: 'GangwonEduPowerExtraBoldA';
      }
      section table td {  
         height:80px;
         font-size:14px;
         border-bottom:1px solid #0368DA;
      }
      section table tr:first-child td {  
         border-top:2px solid #0368DA;
         height:50px;
         border-bottom:double #0368DA;
         background:#FaFaFa;
      }
      section table tr:last-child td {  
         border-bottom:2px solid #0368DA;
      }
      section table .cdel {
         display:inline-block;
         width:90px;
         height:21px;
         border:1px solid #0368DA;
         text-align:center;
         cursor:pointer;
      }
      section .cdel {
         width:70px;
         background:white;
      }
      section .cdel:hover {
         background:#0368DA;
         color:white;
      }
      section .su {
         width:40px;
         height:20px;
         outline:none;
      }
      
      section input[type=button] {
         width:408px;
         height:54px;
         background:white;
         font-size:23px;
         font-size:18px;
         border:2px solid #0368DA;
         cursor:pointer;
      }
       section input[type=submit] {
         width:408px;
         height:54px;
         background:white;
         font-size:23px;
         font-size:18px;
         border:2px solid #0368DA;
         cursor:pointer;
         color:black;
      }
      section input[type=submit]:disabled {
         background:white;
         color:#C2C2C2;
         border:2px solid #C2C2C2;
      }
      section input[type=submit]:hover
      {
         background:#0368DA;
         color:white;
      }
      section input[type=submit]:hover:disabled
      {
         background:white;
         color:#C2C2C2;
      }
      
      section #cprice {
         font-size:20px;
         color:red;
         font-weight:900;
      }
      #chongprice,#halin,#bprice {
         font-size:16px;
         color:#FF6C6C;
         font-weight:900;
      }
  </style>
  <script>
   function maincheck(my)
   {
	   var csub=document.getElementsByClassName("csub");
	   
	   var len=csub.length; // 상품의 갯수
	   
	   if(my.checked)
	   {
		   // 체크가 되었다면 => 상품의 체크박스에 전부 체크
		   for(i=0;i<len;i++)
		   {
			   csub[i].checked=true;
		   } 	   
		   // 전체선택 체크박스도 체크
		   document.getElementById("up").checked=true;
		   document.getElementById("down").checked=true;
	   }	
	   else
	   {
		   // 체크가 안되었다면 => 상품의 체크박스에 전부 해제
		   for(i=0;i<len;i++)
		   {
			   csub[i].checked=false;
		   } 	   
		   // 전체선택 체크박스도 체크
		   document.getElementById("up").checked=false;
		   document.getElementById("down").checked=false;
	   }
	   
	   // 전체선택이 클릭되었을때 submit버튼 사용여부
	   var n=0;
	   for(i=0;i<len;i++)
	   {
		   if(csub[i].checked)
			   n++; // 체크가 된 상품의 갯수
	   }
       if(n==0)
       { 
    	   document.gform.submit.disabled=true;
       }
       else
       {
           document.gform.submit.disabled=false;	   
       }
	   
	   price_cal();
   }
   
   function subcheck()
   {
	   var csub=document.getElementsByClassName("csub");
	   var len=csub.length; // 총상품의 갯수
	   
	   // 상품의 체크박스가 몇개 체크되었나를 계산
	   var n=0;
	   for(i=0;i<len;i++)
	   {
		   if(csub[i].checked)
			   n++; // 체크가 된 상품의 갯수
	   }

       if(len==n)
       {
    	   document.getElementById("up").checked=true;
		   document.getElementById("down").checked=true;
       }	
       else
       {
    	   document.getElementById("up").checked=false;
		   document.getElementById("down").checked=false;
       }
       
       //checked가 하나도 안되어 있으면 전송버튼 사용불가
       if(n==0)
       { 
    	   document.gform.submit.disabled=true;
       }
       else
       {
           document.gform.submit.disabled=false;	   
       }
       
       price_cal();
   }
   
   var proprice=[${proprice}]; // [5000,6000,8000]
   var prohalin=[${prohalin}]; // [500,300,100]
   function price_cal() // 체크박스가 클릭될때마다 실행
   {
	   // 체크박스가 체크된 것을 확인 (subcheck)
	   var csub=document.getElementsByClassName("csub")
	   var len=csub.length; // 상품의 갯수
	   
	   var chongprice=0;
	   var halin=0;
	   var totalpcode="";
	   var totalsu="";
	   var totalday="";
	   for(i=0;i<len;i++)
	   {
		   if(csub[i].checked)
		   {
			   var su=parseInt(document.getElementsByClassName("su")[i].value);
			   // 총상품가격 product.price
			   chongprice=chongprice+(proprice[i]*su);
			   // 총할인금액 product.halin
			   halin=halin+(prohalin[i]*su);
			   
			   // 체크된 상품코드 추가
			   totalpcode=totalpcode+document.getElementsByClassName("pcode")[i].value+",";
               // 체크된 상품수량 추가
			   totalsu=totalsu+document.getElementsByClassName("su")[i].value+",";
               totalday=totalday+document.getElementsByClassName("day")[i].value+",";
               
		   }	   
	   }
	   // 체크된 상품코드와 수량을 form태그에 전달
	   document.gform.pcode.value=totalpcode;
	   document.gform.su.value=totalsu;
	   document.gform.day.value=totalday;
	   // 총결제금액
	   cprice=chongprice-halin;
	   
	   // 가격에 ,(콤마) 추가
	   chongprice=new Intl.NumberFormat().format(chongprice);
	   halin=new Intl.NumberFormat().format(halin);
	   cprice=comma(cprice);
	   
	   // 문서에 출력
	   document.getElementById("chongprice").innerText=chongprice+"원";
	   if(halin==0)
		   document.getElementById("halin").innerText=halin+"원";
	   else
	       document.getElementById("halin").innerText="-"+halin+"원";

	   document.getElementById("cprice").innerText=cprice+"원";
	   
	   
   }
   
   function comma(num)
   {
	   return new Intl.NumberFormat().format(num);
   }
   
   function cart_del()
   {
	   var id="";
	   var csub=document.getElementsByClassName("csub");
	   var len=csub.length; 
  
       for(i=0;i<len;i++)
       {
		    if(csub[i].checked)
		       id=id+csub[i].value+",";
       }
	   
	   // 하나이상의 상품의 cart테이블의 id를  , 로 구분하여 전달
	   if(id!="")   
	      location="cart_del?id="+id;
   }
   </script>
   <script src="https://code.jquery.com/jquery-latest.js"></script>
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> 
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
   <script>
      $(function()
      {
    	  var $imsi=$(".su");
	      $(".su").spinner(
	      {
		      min:1,
		      max:100,
		      spin:function(e,ui)  
	          {
			      var n=$imsi.index(this);
			      var pr=document.getElementsByClassName("pr")[n].value; // 단가
			      var price=parseInt(ui.value*pr); // 수량
			      price=comma(price);
			      document.getElementsByClassName("prin")[n].innerText=price+"원";
			      
			      // ajax
			      var pcode=document.getElementsByClassName("pcode")[n].value;
			      var su=ui.value;
			      var day=document.getElementsByClassName("pcode")[n].value;
			      
			      var chk=new XMLHttpRequest();
			      chk.onload=function()
			      {
			    	  if(chk.responseText=="1")
			    		  alert("오류");
			      }
			      chk.open("get", "cart_su?pcode="+pcode+"&su="+su+"&day="+day);
			      chk.send();
	          }
	      });
      });
   </script>
</head>
<body>
   <section>
      <table width="900" align="center">
         <caption> <h1> 장바구니 </h1> </caption>
         <tr>
            <td colspan="7" align="left"> 
              <input type="checkbox" onclick="maincheck(this)" id="up">전체선택  
              <span id="cdel" class="cdel" onclick="cart_del()">선택삭제</span>
            </td>
         </tr>
         <c:forEach items="${clist}" var="cvo">
            <input type="hidden" class="pr" value="${(cvo.price-(cvo.price*(cvo.halin/100)))}">
            <input type="hidden" class="pcode" value="${cvo.pcode}">
            <input type="hidden" class="day" value="${cvo.day }">
            <tr>
               <td> <input type="checkbox" class="csub" onclick="subcheck()" value="${cvo.id}">
               <td> <img src="../resources/ticket/${cvo.pimg}" width="100" height="70"></td>
               <td> ${cvo.title} </td>
               <td> 수량 <input type="text" name="su" class="su" value="${cvo.su}" readonly> </td>
               <td class="prin"> <fmt:formatNumber value="${(cvo.price-(cvo.price*(cvo.halin/100)))*cvo.su}" pattern="#,###" type="number"/>원</td>
               <td> 입장일 <div style="color:red;"> ${cvo.day} </div> </td>
               <td>
                  <span class="cdel" style="margin-top:5px;" onclick="location='cart_del?id=${cvo.id}'"> 삭제 </span>
               </td>
            </tr>
         </c:forEach>
         <tr>
            <td colspan="7" align="left" style="height:50px; background:#FaFaFa; border-top:double #0368DA;"> 
               <input type="checkbox" onclick="maincheck(this)" id="down">전체선택  
               <span id="cdel" class="cdel" onclick="cart_del()">선택삭제</span>
            </td>
         </tr>
         <tr>
            <td colspan="7" align="right" style="height:50px; border-bottom:2px solid #0368DA; font-size:13px;">
               - 총상품가격 : <span id="chongprice"> 0원 </span>
               - 총할인가격 : <span id="halin"> 0원 </span>
               <b style="font-size:15px;"> - 총결제금액 : </b><span id="cprice"> 0원 </span>
               <span id="cprice">  </span>
            </td>
         </tr>
         <tr>
            <td colspan="7" align="center" style="border-bottom:none;">
               <form name="gform" method="post" action="../ticket/gumae">
                  <input type="hidden" name="pcode">
                  <input type="hidden" name="su">
                  <input type="hidden" name="day">
                  <input type="submit" id="hover" value="구매하기" name="submit" disabled>
               </form>
            </td>
         </tr>
      </table>
   </section>
</body>
</html>