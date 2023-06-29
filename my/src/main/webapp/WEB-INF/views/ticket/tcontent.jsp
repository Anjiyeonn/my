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
         width:1675px;
         margin:auto;
         font-family: 'GangwonEduPowerExtraBoldA';
      }
      section #title {
         width:1000px;
         height:400px;
         margin:auto;
      }
      section #title > #left {
         width:500px;
         height:400px;
         float:left;
      }
      section #title > #right {
         width:500px;
         height:400px;
         float:right;
         position:relative;
      }
   
      section #content {
         width:1000px;
         height:600px;
         margin:auto;
         margin-top:40px;
      }
      section #hugi {
         width:1000px;
         height:200px;
         margin:auto;
         background:red;
      }
      section #mun  {
         width:1000px;
         height:200px;
         margin:auto;
         background:pink;
      }
      section #etc {
         width:1000px;
         margin:auto;
         text-align:center;
         margin-top:50px;
         margin-bottom:30px;
      }
      section #su {
         outline:none;
         width:40px;
         height:20px;
      }
      section #ptitle {
         font-size:35px;
         color:#0368DA;
        font-weight:900;
      }
      section #hal {
         height:30px;
         color:red;
         font-size:15px;
      }
    
      section #pri {
         font-size:20px;
         color:#0368DA;
         font-weight:900;
      }
      section #juk span {
         margin-top:10px;
         display:inline-block;
         width:125px;
         height:16px;
         border:1px solid #0368DA;
         border-radius:8px;
         font-size:12px;
         text-align:center;
         padding:2px;
      }
      section #date {
         margin-top:15px;
         font-size:14px;
      }
      section #suform {
         margin-top:20px;
      }
      section #btn {
         margin-top:20px;
      }
      section #btn span {
         display:inline-block;
         font-size:14px;
         width:90px;
         height:18px;
         border:1px solid #0368DA;
         padding-top:12px;
         padding-bottom:4px;
         text-align:center;
         background:white;
      }
      section #btn #hover:hover {
         background:#0368DA;
         color:white;
      }
       
      section #cal {
         position:absolute;
         background:white;
         border:2px solid #0368DA;
         top:151px;
         left:135px;
         padding:5px;
         cursor:pointer;
      }
      section #cal td {
         padding-top:5px;
         border:1px solid #0368DA;
      }
      section #cart_move {
         position:absolute;
         left:200px;
         top:300px;
         width:180px;
         height:60px;
         font-size:12px;
         border:2px solid #0368DA;
         background:white;
         padding-top:12px;
         text-align:center;
         visibility:hidden;
      }
      section #cart_move #btn2 {
         display:inline-block;
         width:120px;
         height:20px;
         border:1px solid black;
         padding-top:10px;
         margin-top:-10px;
      }
      section #cart_move #btn2:hover {
         background:#0368DA;
         color:white;
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
         padding-bottom:80px;
      }
      #submenu > a {
         text-decoration:none;
     	 color:#0D3EA3;
     	 font-family: 'GangwonEduPowerExtraBoldA';
      }
   </style>
   <script src="https://code.jquery.com/jquery-latest.js"></script>
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> 
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
   <script>
      $(function()
      {
	      $("#su").spinner(
	      {
		      min:1,
		      max:100,
		      spin:function(e,ui)
	          {
			      var price=ui.value*${pvo.price-(pvo.price*(pvo.halin/100))};
		    	  price=new Intl.NumberFormat().format(price);
				  document.getElementById("pri").innerText=price+"원";
	          }
	      });
      });
   
      function cart_add()
      {
          var su=document.pform.su.value;
          var day=document.pform.day.value;
    	  var chk=new XMLHttpRequest();
    	  
    	  if(day=="")
    	  {
    		  alert("입장일이 입력되지 않았습니다.")
    	  }
    	  else
    	  {
    	      chk.onload=function()
    	      {
    		      if(chk.responseText=="0")
   		          {
    			      document.getElementById("cart_move").style.visibility="visible";
   			          setTimeout(function()
   			          {
   			              document.getElementById("cart_move").style.visibility="hidden";
   			          }, 3000);
   		          }	
   		          else
   		          {
   			          alert("오류");
   		          }
    	      }
    	      chk.open("get","cart_add?pcode=${pvo.pcode}&su="+su+"&day="+day);
    	      chk.send();
    	  }
      }
      
      function gumae()
      {
    	  var day=document.pform.day.value;
    	  if(day=="")
    		  alert("입장일이 입력되지 않았습니다.")
    	  else
    	      document.pform.submit();
      }
      
      function views(yy,mm)
      {
    	  if(!yy)
    	  {
    		  var today=new Date();
              var yy=today.getFullYear();
              var mm=today.getMonth(); // 1월~12월(0~11)
    	  }
    	  
    	  if(mm==-1)
    	  {
    		  yy=yy-1;
    		  mm=11;
    	  }
    	  if(mm==12)
    	  {
    		  yy=yy+1;
    		  mm=0;
    	  }
    	  
          var mon=[31,28,31,30,31,30,31,31,30,31,30,31]; // 1월~12월(0~11)
          
          var chong=mon[mm];
          
          if(mm==1) // 2월인 경우 
          {
        	  if((yy%4==0 && yy%100!=0) || yy%400==0) // 윤년인 경우
        		  chong++;
          }
          
          var xday=new Date(yy,mm,1);
          var yoil=xday.getDay();
          
          var ju=Math.ceil((chong+yoil)/7);
          
          var str="<table>";
    	        str=str+"<caption>";
    	        
    	        str=str+"<span onclick='views("+yy+","+(mm-1)+")'> ← </span> &nbsp;&nbsp;";
    	        str=str+yy+"년 "+(mm+1)+"월";
    	        str=str+"&nbsp;&nbsp; <span onclick='views("+yy+","+(mm+1)+")'> → </spane>";
    	        
    	        str=str+"</caption>";
    	        str=str+"<tr align='center'>";
    	           str=str+"<td style='color:red;'> 일 </td>";
                   str=str+"<td> 월 </td>";
                   str=str+"<td> 화 </td>";
                   str=str+"<td> 수 </td>";
                   str=str+"<td> 목 </td>";
                   str=str+"<td> 금 </td>";
                   str=str+"<td style='color:blue;'> 토 </td>";
                str=str+"</tr>";
          
          var day=1;
             
          for(i=0;i<ju;i++)
          {
              str=str+"<tr align='center'>";
    	      
              for(j=0;j<7;j++)   
              {
            	  if((j<yoil && i==0) || chong<day)
            	  {
            	      str=str+"<td> </td>"
            	  }
            	  else
            	  {
    	    	      var tt;
    	    	      switch(j)
    	    	      {
    	    	          case 0: tt="style='color:red'"; break;
    	    	          case 6: tt="style='color:blue'"; break;
    	    	          default: tt="";
    	    	      }
    	    	      
    	    	      str=str+"<td "+tt+" onclick='move("+yy+","+(mm+1)+","+day+")'>"+day+"</td>";
    	    	      day++;
            	  }
              }
    	      
              str=str+"</tr>";
          }
          str=str+"</table>"
          
          
          document.getElementById("cal").innerHTML=str;
          document.getElementById("cal").style.display="block";
      }
      
      function move(y,m,d) // 월, 일 두자리로 표시
      {
    	  m=m+"";
    	  d=d+"";
    	  if(m.length==1)
    		  m="0"+m;
    	  if(d.length==1)
    		  d="0"+d;
    	  document.getElementById("day").value=y+"-"+m+"-"+d;
    	  document.getElementById("cal").innerText="";
    	  document.getElementById("cal").style.display="none";
      }
   </script>
</head>
<body>
   <section>
      <div>
         <div id="blueline"> 티켓 예매 </div>
      </div>
      <p>
      <div id="submenu">
         <a href="../main/main"> 유니버설 스튜디오 코리아  > </a> 　
         <a href="../ticket/tlist"> 티켓정보  > </a> 　
         <a style="color:#00086D;"> ${pvo.title} </a>
      </div>
      <div id="title">
         <div id="left" align="center"> <img src="../resources/ticket/${pvo.pimg}" width="400"> </div>
         <div id="right">
            <div id="cart_move">
               <span> 상품을 장바구니에 담았습니다 </span> <p>
               <span id="btn2" onclick="location='../member/cart_view'" style="cursor:pointer"> 장바구니로 가기 </span>
            </div>
            <form name="pform" method="post" action="gumae">
               <input type="hidden" name="pcode" value="${pvo.pcode}">
               <div id="ptitle" style="color:#0368DA;"> ${pvo.title} </div>
      <hr>
               <div id="hal">
                  <c:if test="${pvo.halin!=0}"> <a style="color:red; font-weight:bold;">${pvo.halin}%</a> <s style="font-size:12px;"> <fmt:formatNumber value="${pvo.price}" type="number"/>원 </s> </c:if>
                  <c:if test="${pvo.halin==0}"> <a style="color:red;">TIP.</a> <a style="cursor:pointer;">패스권 할인 받는 방법!</a> </c:if>
               </div>
               <div style="font-size:25px;">
                  <c:if test="${pvo.pcode=='T01'}"> <div style="font-size:15px;"> (1인) </div> </c:if>
                  <c:if test="${pvo.pcode=='T02'}"> <div style="font-size:15px;"> (만 11세 이하 1인) </div> </c:if>
                  <c:if test="${pvo.pcode=='T03'}"> <div style="font-size:15px;"> (1회) </div> </c:if>
                  <fmt:formatNumber value="${pvo.price}" pattern="#,###" type="number"/>원
               </div> <br>
               
               <!-- 달력 -->
               <div id="calendar"> 입장일 : 
                  <input type="text" onfocus="views()" id="day" name="day" size="6" readonly style="cursor:pointer;">
                  <div id="cal" style="display:none"></div>
               </div>
               
               <div id="suform">
                  <input type="text" name="su" id="su" value="1" readonly>
               </div> <p>
      <hr><br>
               <div align="right"> 총 상품금액 : </div>
               <div id="pri" align="right" style="color:red;font-size:25px;">
                  <fmt:formatNumber value="${pvo.price-(pvo.price*(pvo.halin/100))}" pattern="#,###" type="number"/>원
               </div>
               <div align="right" id="btn" style="clear:both;">
                  <span onclick="cart_add()" style="cursor:pointer" id="hover"> 장바구니 </span>
                  <span onclick="gumae()" style="cursor:pointer" id="hover"> 구매하기 </span>
               </div>
            </form>
         </div>
      </div>
      
      <hr>
      <hr>
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



