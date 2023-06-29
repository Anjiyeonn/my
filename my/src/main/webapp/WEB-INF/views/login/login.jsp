<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style>
   section {
      width:1000px;
      height:600px;
      margin:auto;
      text-align:center;
      padding-top:100px;
   }
   section div {
     margin-top:12px;
   }
   section input[type=text] {
      width:300px;
      height:33px;
      border:1px solid #0270E3;
      outline:none;
   }
   section input[type=password] {
      width:300px;
      height:33px;
      border:1px solid #0270E3; 
      outline:none;
   }
   section input[type=submit] {
      width:306px;
      height:36px;
      border:1px solid #0270E3; 
      background:#0270E3;
      color:white;
      cursor:pointer;
      outline:none;
   }
   section input[type=submit]:hover {
      background:#0D3EA3;
      cursor:pointer;
   }
   
   section input[type=button] {
      width:306px;
      height:36px;
      border:1px solid #0270E3; 
      background:#0270E3;
      color:white;
      cursor:pointer;
      outline:none;
      font-weight:900;
   }
   section input[type=button]:hover {
      background:#0D3EA3;
      cursor:pointer;
   }
   
   section #ss {
      display:inline-block;
      width:86px;
      height:20px;
      border:1px solid #0270E3;
      font-size:13px;
      padding:5px;
      color:#0270E3;
   }
   section a:hover,
   section #ss:hover {
      background:#0270E3;
      color:white;
      cursor:pointer;
   }
   #uform ,#pform {
      display:none;
   }
   section a {
      text-decoration:none;
      cursor:pointer;
      color:white;
   }
  </style>
  <script>
    <c:if test="${chk == 2}">
      alert("회원가입이 완료되었습니다.");
    </c:if>
    
    function view_uform()
    {
       document.getElementById("sview").innerText="";	
 	   document.getElementById("uform").style.display="block";
 	   document.getElementById("pform").style.display="none";
    }
    function view_pform()
    {
       document.getElementById("sview").innerText="";	
 	   document.getElementById("pform").style.display="block";
 	   document.getElementById("uform").style.display="none";
    }
    
    function userid_search()
    {
 	   
       var chk=new XMLHttpRequest();
 	   var name=document.uform.name.value;
 	   var email=document.uform.email.value;
 	   
 	   chk.onload=function()
 	   {
 		   var userid=chk.responseText.trim();
 		   if(userid=="1")
 		   {
 			 document.getElementById("sview").innerText="입력 정보가 잘못되었습니다.";
 		     document.getElementById("sview").style.color="red";
 		   }
 		   else
 	       {		   
 			 document.getElementById("sview").innerText="찾으신 아이디는 : "+userid+" 입니다.";
 			 document.getElementById("uform").style.display="none"; 
 	       }
 	   }
 	   
 	   chk.open("get","userid_search?name="+name+"&email="+email);
 	   chk.send();
    }
    
    function pwd_search()
    {     	
       var chk=new XMLHttpRequest();
       var userid=document.pform.userid.value;
       var name=document.pform.name.value;
 	   var email=document.pform.email.value;
 	   
 	   chk.onload=function()
 	   {
 		   var pwd=chk.responseText.trim();
 		   if(pwd=="1")
 		   {
 			  document.getElementById("sview").innerText="입력 정보가 잘못되었습니다.";
 			  document.getElementById("sview").style.color="red";
 		   }	
 		   else
 		   {
 			  document.getElementById("sview").innerText="찾으신 비밀번호는 : "+pwd+" 입니다.";
 			  document.getElementById("pform").style.display="none";
 		   }	   
 	   }
 	   
 	   chk.open("get","pwd_search?userid="+userid+"&name="+name+"&email="+email);
 	   chk.send();
    }
  </script>
</head>
<body> <!-- login.jsp -->
   <section>
      <form method="post" action="login_ok">
         <h2> 로그인 </h2>
         <div> <input type="text" name="userid" placeholder="아이디" value="admin"> </div>
         <div> <input type="password" name="pwd" placeholder="비밀번호" value="123"> </div>
         <div> <input type="submit" value="로그인"> </div>
         <c:if test="${chk == 1}">
            <div id="msg" style="font-size:12px; color:red;"> 입력 정보가 잘못되었습니다. </div>
         </c:if>
      </form>
      
      <div align="center">
         <span id="ss" onclick="view_uform()"> 아이디 찾기 </span> 
         <span id="ss" onclick="view_pform()"> 비밀번호 찾기 </span>
         <span id="ss" onclick="location='../member/member_input'"> 회원가입 </span>
      </div>
      
      <div id="sview" align="center"></div>
      <br>
      
      <form name="uform" id="uform">
         <input type="text" name="name" placeholder="이 름"> <p>
         <input type="text" name="email" placeholder="이메일"> <p>
         <input type="button" onclick="userid_search()" value="아이디찾기">
      </form>
      
      <form name="pform" id="pform">
         <input type="text" name="userid" placeholder="아이디"> <p>
         <input type="text" name="name" placeholder="이 름"> <p>
         <input type="text" name="email" placeholder="이메일"> <p>
         <input type="button" onclick="pwd_search()" value="비밀번호찾기">
      </form>
   </section>
</body>
</html>