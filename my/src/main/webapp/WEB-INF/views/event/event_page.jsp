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
 
   section {
      width:1675px;
      margin:auto;
      margin-bottom:80px;
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
      display:inline-block;
      padding-top:10px;
      width:1200px;
      
      margin:auto;
      margin-left:230px;
   }
   section #title > #left {
      
      float:left;
     
   }
   section #title > #mid1 {
      display:inline-block;
      font-family:'휴먼둥근헤드라인';
      font-size:35px;
      padding:10px;
      margin-left:30px;
      width:520px;
      
   }
   section #title > #mid2 {
      display:inline-block;
      font-size:16px;
      
      padding:10px;
      width:520px;
      margin-left:30px;
   }
   section #mid3 {
      display:inline-block;
      font-size:16px;
      
     
      padding-top:50px;
      height:200px;
   }
   section #title > #emap {
      float:right;
      
      margin-top:-70px;
   }
   
   
   
   section #econtent {
      width:1000px;
      overflow:hidden;
      align:center;
      background:white;
      /* color:white; */
	  margin-top:50px;
      left:350px;
   }
   section #econtent ul{
      padding:0;
      margin:0;
      list-style:none;
      width:100%;
      height:auto;
      overflow:hidden;
   }
   section #econtent ul li:hover,
   section #econtent ul li.on{
      background:#0368DA;
   }
   
   
   section #bottom {
      
   }
 </style>
 <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
 <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" >
 <link rel="stylesheet" href="/resources/demos/style.css">
 <script>
   $(function()
   {
	   $("#econtent").tabs();
   });
 </script>
</head>
<body>
   <section>
      <div>
         <div id="eimg"> <img src="../resources/event/${evo.eimg}" width="1675"> </div>
      </div>
      <div>
         <div id="blueline"> ${evo.title} </div>
      </div>
      <p>
      <div id="submenu">
         <a href="../main/main"> 유니버설 스튜디오 코리아  > </a> 　
         <a href="../event/elist"> 이벤트  > </a> 　
         <a style="color:#00086D;"> ${evo.title} </a>
      </div>
      
      <div id="title">
         <span id="left">
            <img src="../resources/event/${evo.eimg2}" width="280">
         </span> 
         <span id="mid1"> ${evo.subtitle} </span> <br>
         <span id="mid2"> ${evo.content} <p></p> <b>개최기간 : </b> <br> ${evo.gigan} <br> ※ 개최 기간은 변경될 수 있습니다. </span>
         
         <span id="emap"> 
            <a href=""> <img src="../resources/event/${evo.map}" width="300"> </a>
         </span>
      </div>
      
      
     <c:if test="${evo.title=='SPY x FAMILY 시크릿 미션'}">
     <div id="econtent">
         <ul>
            <li> <a href="#p1"> SPY x FAMILY 시크릿 미션 </a> </li>
            <li> <a href="#p2"> 참여 방법 </a> </li>
            <li> <a href="#p3"> 작품 소개 </a> </li>
         </ul>
         <div id="p1">
            <div style="font-size:25px;font-family:'휴먼둥근헤드라인';"> 스토리 </div> <hr> WISE의 신인 에이전트 자격으로 관리관에게 긴급 소환된 당신. 목적은 오퍼레이션 <올빼미> 극비 미션 참가. 세계 평화를 위해 절대로 실패해서는 안 되는 중요한 임무. 먼저 조직에서 준비한 시험을 치르고, 합격한 사람에게만 참가 자격이 주어진다고 한다. 작전에는 어쩐지 에이전트 <황혼>이 얽혀있는 것 같은데... 지령서의 암호를 해독하고 미션을 무사히 완수하라! <p><br><p><br>
            <b> 로이드와 요르, 아냐를 사진에 담아 가자! </b> <br> 멋있는 로이드와 가시공주 모습으로 등장한 요르, 귀여운 아냐를 즐겁게 촬영! <br> 미션 참가 기념으로 특별한 포토 모멘트를 즐기자. <p><br><p><br>
            <div style="font-size:25px;font-family:'휴먼둥근헤드라인';"> 등장인물 </div> <hr> 
            <img src="../resources/event/1spy/man.jpg"> <br> <b> 로이드 포저(황혼) </b> <br> 서국 정보국(WISE)에 소속된 최강 첩보원(에이전트). 암호명(코드 네임)은 <황혼>. 뛰어난 관찰안과 기억력의 소유자이며, 천의 얼굴을 가진 변장의 스페셜리스트. 동서 간의 전쟁을 피하기 위해 위장 가족을 만든 후 아이를 명문학교에 입학시키는 임무를 맡았다. <p><br><p><br>
            <img src="../resources/event/1spy/kid.jpg"> <br> <b> 아냐 포저 </b> <br> 어느 조직의 실험으로 인해 우연히 태어난, 타인의 마음을 읽을 수 있는 초능력자. 고아원에 있다가 로이드의 양녀가 된다. 초능력에 대해서는 주위에 비밀로 하고 있지만 그 능력으로 로이드가 스파이인 것을 알아채고 남몰래 그를 돕기 위해 노력하고 있다. 로이드의 임무를 위해 나이를 속이고 명문 초등학교의 입학시험을 치른다. 공부를 싫어하고 좋아하는 것은 “아버지”와 “어머니”, 스파이 애니메이션과 땅콩. 호기심이 왕성하며 두근두근 떨리는 것을 좋아한다. <p><br><p><br>
            <img src="../resources/event/1spy/woman.jpg"> <br> <b> 요르 포저(가시공주) </b> <br> 어릴 적부터 살인 기술을 연마해 온 최고의 암살자. 암호명(코드 네임)은 <가시공주>. 일찍 부모를 여의고 홀로 어린 남동생을 키우며 고되게 살았다. 소중한 남동생을 안심시키고 주위의 의심을 피해 암살자를 계속하고 싶다는 생각에서 아내를 찾고 있던 로이드와 이해관계가 일치하여 위장 결혼을 한다. 암살자라는 것은 남동생에게 숨기고 있다. <p>
         </div>
         <div id="p2">
            <div style="font-size:25px;font-family:'휴먼둥근헤드라인';"> 참여 방법 </div> <hr>
            <b> 체험 순서 </b> <p>
            <b> Step1. ‘극비 임무 지령서’를 받은 후 미션에 도전하자! </b>
            <br> ※ ‘극비 임무 지령서’ 배포 장소: 팰리스 시어터 <p>
            <b> Step2. 파크를 돌아다니며 암호를 해독하자! </b>
            <br> ‘극비 임무 지령서’를 받았으면 파크 곳곳에 흩어져 있는 암호를 풀자!
            <br> ※ 스크래치를 긁는 경우가 있으므로 동전을 준비해 주세요 <p>
            <b> Step3. 보고 장소에서 암호의 정답을 맞혀보자! </b>
            <br> 암호를 해독해서 나온 ‘구호’가 정답이라면 미션 클리어! ‘미션 클리어 카드’를 받은 후 기재된 지정 시간에 지정 장소로 모이자! <p>
            <b> Step4. 최종 미션(엔딩 쇼)에 참가하자! </b>
            <br> ※ 소요 시간 약 15분 <p><br><p><br>
            
            <div style="font-size:25px;font-family:'휴먼둥근헤드라인';"> 주의사항 </div>
            <hr> ● 미션 전용 책자 ‘극비 임무 지령서’(무료)를 받은 후 체험해 주십시오.
            <br> ● 많은 분이 체험할 수 있도록 ‘극비 임무 지령서’는 체험자 1명당 하루 1권만 배포합니다.
            <br> ● 체험 당사자 1명(만 4세 이상)당 ‘극비 임무 지령서’ 1권을 배포하므로, 반드시 체험할 당사자 전원이 배포 장소로
            <br> 　함께 오십시오.
            <br> ● 정원이 차는 대로 배포를 종료합니다.
            <br> ● ‘극비 임무 지령서’의 전매, 양도는 금지합니다.
            <br> ● 최종 미션(엔딩 쇼)의 시간은 지정할 수 없습니다. 시간 지정이 있는 익스프레스 패스를 소지한 경우나 시간 지정이
            <br> 　있는 이벤트에 참가할 예정이 있는 경우에는 체험할 수 없는 시간대가 있습니다. 양해 바랍니다.
            <br> ● 지정 시간에 늦은 경우 또는 해독한 ‘구호’가 오답일 경우에는 최종 미션(엔딩 쇼)에 참가할 수 없습니다.
            <br> ● 이벤트는 예고 없이 중지될 수 있습니다.
            <br> ● 문서, 구두 전달, SNS 등에 대한 투고, 그 밖의 방법, 형태, 시기, 기간과 관계없이 본 이벤트에 나오는 ‘출제 내용
            <br> 　(암호 내용)’ 및 ‘정답(구호)’을 제삼자에게 공개 또는 누설하는 것을 금지합니다. 이와 관련된 공개나 누설 행위가
            <br> 　발견된 경우에는 문서 회수 및 투고 내용의 삭제 등을 요청함과 동시에, 공개나 누설 행위로 인해 발생한 당사의
            <br> 　손해배상을 청구합니다. <p>
         </div>
         <div id="p3">
            <img src="../resources/event/1spy/title.jpg">
            <p> “소년 점프+”(슈에이샤)에서 연재 중인 엔도 타츠야의 “SPY x FAMILY”. 2022년부터 대망의 TV 애니메이션 방송 시작. 치열한 정보전이 펼쳐지는 세계. 최강 첩보원(에이전트) <황혼>에게 내려진 임무는 이웃 나라와의 전쟁을 피하기 위해 가족을 만든 후 명문학교의 친목회에 출석하여 표적과 접촉하는 것. <황혼>은 평범한 시민 로이드 포저로 위장하고 가족을 만들지만, 딸 아냐는 타인의 마음을 읽는 초능력자, 아내 요르는 최고의 암살자였다. 비밀을 감춘 가족이 세계 평화를 위해 고군분투하는 인기 절정 스파이 코미디.
         </div>
      </div>
      </c:if>
      
      
      <div id="bottom">
         <span>  </span>
      </div>
   </section>
</body>
</html> 