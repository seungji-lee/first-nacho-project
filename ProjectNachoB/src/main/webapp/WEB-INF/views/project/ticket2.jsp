<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri= "http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- <link rel="stylesheet"  type= "text/css" href="../../../resources/css/bootstrap.min.css"/> --><!-- header 부트스트랩 -->
<style type="text/css">
   @font-face {
  font-family: testFontGB;
  src: url('/resources/css/font/GmarketSansTTFBold.ttf');
}
.testFontGB{font-family : "testFontGB", serif; }

@font-face {
  font-family: testFontGL;
  src: url('/resources/css/font/GmarketSansTTFLight.ttf');
}
.testFontGL{font-family : "testFontGL", serif;}

@font-face {
  font-family: testFontGM;
  src: url('/resources/css/font/GmarketSansTTFMedium.ttf');
}
.testFontGM{font-family : "testFontGM", serif;}

@font-face {
  font-family: testFontEDB;
  src: url('/resources/css/font/EliceDigitalBaeum_Bold.ttf');
}
.testFontEDB{font-family : "testFontEDB", serif;}

@font-face {
  font-family: testFontEDR;
  src: url('/resources/css/font/EliceDigitalBaeum_Regular.ttf');
}
.testFontEDR{font-family : "testFontEDR", serif;}

   .ticket-head{
      width: 1000px;
      height: 80px;
      /* border: 1px solid black; */
      margin: auto;
      padding-top : 0
   }
   .ticketing-values{
      float: left;
      width: 200px;
      height: 200px;
      margin: auto; 
      text-align: center;
      border-right-width: 1px;
      border-right-style : solid;
      border-right-color : black;
      border-color : black;
      padding: auto;
      background-color: #d3d3d3;
   }
   .ticketing-values1{
      float: left;
      width: 90px;
      height: 200px;
      margin: auto; 
      text-align: center;
      /* border : 1px solid black; */
      padding: auto;
   }
   .ticketing-values2{
      float: left;
      width: 90px;
      height: 200px;
      margin: auto; 
      text-align: center;
      /* border : 1px solid black; */
      padding: auto;
   }
   .ticketing-values3{
      float: left;
      width: 200px;
      height: 200px;
      margin: auto; 
      text-align: center;
      /* border : 1px solid black; */
      padding: auto;
      background-color: #d3d3d3;
   }
   .mingid{
      text-align: center;
      margin-right: 0;
   }
    .ticketing-select{
       clear : left;
      width: 1000px;
      height: 80px;
      /* border: 1px solid black; */
      text-align: center;
      margin: auto;
      background-color: #F6F0E3;
   }
   .select-theater, .select-date, .select-time, .select-people{
      width: 200px;
      height: 30px;
      text-align: center;
      margin-top: 20px;
   }
   .theater-seat{
      width: 1000px;
      height: 800px;
      /* border: 1px solid black; */
      text-align: center;
      margin: auto;
   }
   table{
      width: 800px;
      height: 500px;
      margin: auto;
      border-collapse: collapse;
      padding: 0;
   }
   tr, td{
      border: 10px solid white;
      background-color: #d3d3d3;
      border-radius: 10px;
      
   }
   .screen{
      width:800px;
      height: 80px;
      background-color: #d3d3d3;
      text-align: center;
      margin: auto;
   }
   .screen2{
      width:800px;
      height: 80px;
      text-align: center;
      margin: auto;
   }
   .seat-resultt{
      background-color: red;
      color: white;
   }
   #ticketing{
      background-color: red;
      font-size: 20px;
      color: white;
      width: 200px;
      height: 40px;
      border: 0px;
      border-radius: 10px;
   }
   #reset{
      background-color: #d3d3d3;
      font-size: 20px;
      color: black;
      width: 200px;
      height: 40px;
      border: 0px;
      border-radius: 10px;
   }
   .normal{
      background-color: #d3d3d3;
      color: black;
   }

</style>
<script type="text/javascript">
function search_dynamic(f){
   if(f.value.value  ==''){
      alert("검색어를 입력하세요");
      return;
   }
   f.action="/search/searchResult";
   f.submit();
}
</script>
</head>
<body>
   
<%@include file="../include/headerTest.jsp"%>
   
   <div class="ticket-head">
   </div>
   
   <div class="ticketing-values1"></div>
   <div class="ticketing-values2"></div>
   <div class="ticketing-values">
      <img id="mingid" src = "../../resources/img/${MingInfo.poster }" width="150px" height="200px">
   </div>
   <div class="ticketing-values">
      <br><br><br>
      <span>${MingInfo.title }</span><br>
      <span>${MingInfo.age }</span><br>
      <span>${MingInfo.rtime }분</span><br>
   </div>
   <div class="ticketing-values">
      <br><br><br>
      상영관<br> 
      <span id="theater-result"></span>
   </div>
   <div class="ticketing-values">
      <br><br>
      관람일<br>
      <span id="date-result"></span><br><br>
      상영 시간<br>
      <span id="time-result"></span>
   </div>
   <div class="ticketing-values">
      <br><br><br>
      인원 수 : <span id="people-result"></span>명
   </div>
   <div class="ticketing-values3">
      <br><br><br>
      선택 좌석<br>
      <span id="seat-result" class="seat-result"></span>
   </div>
   
   
   <div class="ticketing-select">
   <select class="select-theater" id="select-theater" name="theater_select">
      
   </select> &nbsp; &nbsp;
   <select class="select-date" id="select-date" name="tkdate_select">
      
   </select> &nbsp; &nbsp;
   <select class="select-time" id="select-time" name="tktime_select">
      
   </select> &nbsp; &nbsp;
   <select class="select-people" id="select-people" name="tkpeople_select">
      
   </select> &nbsp; &nbsp;
   </div>
   <div class="theater-seat">
   <br>
   <div class="screen" style="font-size: 50px;">screen</div>
   <div class="screen2"></div>
      <table>
         <tr>
            <td class="normal">A01</td>
            <td class="normal">A02</td>
            <td class="normal">A03</td>
            <td class="normal">A04</td>
            <td class="normal">A05</td>
            <td class="normal">A06</td>
            <td class="normal">A07</td>
            <td class="normal">A08</td>
            <td class="normal">A09</td>
            <td class="normal">A10</td>
            <td class="normal">A11</td>
            <td class="normal">A12</td>
         </tr>
         <tr>
            <td class="normal">B01</td>
            <td class="normal">B02</td>
            <td class="normal">B03</td>
            <td class="normal">B04</td>
            <td class="normal">B05</td>
            <td class="normal">B06</td>
            <td class="normal">B07</td>
            <td class="normal">B08</td>
            <td class="normal">B09</td>
            <td class="normal">B10</td>
            <td class="normal">B11</td>
            <td class="normal">B12</td>
         </tr>
         <tr>
            <td class="normal">C01</td>
            <td class="normal">C02</td>
            <td class="normal">C03</td>
            <td class="normal">C04</td>
            <td class="normal">C05</td>
            <td class="normal">C06</td>
            <td class="normal">C07</td>
            <td class="normal">C08</td>
            <td class="normal">C09</td>
            <td class="normal">C10</td>
            <td class="normal">C11</td>
            <td class="normal">C12</td>
         </tr>
         <tr>
            <td class="normal">D01</td>
            <td class="normal">D02</td>
            <td class="normal">D03</td>
            <td class="normal">D04</td>
            <td class="normal">D05</td>
            <td class="normal">D06</td>
            <td class="normal">D07</td>
            <td class="normal">D08</td>
            <td class="normal">D09</td>
            <td class="normal">D10</td>
            <td class="normal">D11</td>
            <td class="normal">D12</td>
         </tr>
         <tr>
            <td class="normal">E01</td>
            <td class="normal">E02</td>
            <td class="normal">E03</td>
            <td class="normal">E04</td>
            <td class="normal">E05</td>
            <td class="normal">E06</td>
            <td class="normal">E07</td>
            <td class="normal">E08</td>
            <td class="normal">E09</td>
            <td class="normal">E10</td>
            <td class="normal">E11</td>
            <td class="normal">E12</td>
         </tr>
         <tr>
            <td class="normal">F01</td>
            <td class="normal">F02</td>
            <td class="normal">F03</td>
            <td class="normal">F04</td>
            <td class="normal">F05</td>
            <td class="normal">F06</td>
            <td class="normal">F07</td>
            <td class="normal">F08</td>
            <td class="normal">F09</td>
            <td class="normal">F10</td>
            <td class="normal">F11</td>
            <td class="normal">F12</td>
         </tr>
      </table><br>
      <form method="post">
         <input id="ticketing" type="button" value="예매하기" onclick="input_ticketing(this.form);">&nbsp;&nbsp;
         <!-- <input id="reset" type="reset" value="다시 작성"> -->
         
         <input type="hidden" name="theater">
         <input type="hidden" name="tkdate">
         <input type="hidden" name="tktime">
         <input type="hidden" name="tkpeople">
         <input type="hidden" name="seat">
         <input type="hidden" name="mid" value="<sec:authentication property="principal.member.mid"/>">
         <input type="hidden" name="title" value="${MingInfo.title }">
      </form>
   </div>
   
   
   <script type="text/javascript">
      var seatarr = []; // 좌석 정보 배열
      
      function input_ticketing(f){
         
         // 선택한 사항들을 변수에 담기
         var a = $("#theater-result").html();  
         var b = $("#date-result").html();
         var c = $("#time-result").html();
         var d = $("#people-result").html();
         var e = $("#seat-result").html();
         
         // 변수에 담은 값들을 해당 name값의 value로 넣기
         $("input[name='theater']").val(a);
         $("input[name='tkdate']").val(b);
         $("input[name='tktime']").val(c);
         $("input[name='tkpeople']").val(d);
         $("input[name='seat']").val(e);
         
         
            var seatnum = seatarr.length;   // 고른 좌석 수 
            var peoplenum = $("#select-people option:selected").val();  // 고른 인원 수
            
         
            if(peoplenum > seatnum){  // 인원 수 보다 좌석수를 적게 골랐을 때
               alert("인원 수에 맞게 좌석을 선택하세요");
               return;
            }else if(peoplenum < seatnum){  // 인원 수 보다 좌석수를 많이 골랐을 때
               alert("인원 수에 맞게 좌석을 선택하세요");
               return;
            }else if(e == ""){  // 좌석정보가 입력이 안 됐을 때  
               alert("좌석을 선택해주세요.");
               return;
            }
         
         f.action="/project/ticket3";
         f.submit();
      }  
      
      $(function(){  // 맨 처음 좌석 클릭시
         
         // 좌석 선택 클릭 이벤트
         $("tr").on("click", "td", function(e){ // tr에 있는 td를 누르면 실행
            
            var seatnum = seatarr.length;   // 고른 좌석 수 
            var peoplenum = $("#select-people option:selected").val();  // 고른 인원 수
            
             // 인원수를 선택 안 하고 좌석을 누를때
            if(peoplenum == ""){
               event.preventDefault();
               alert("인원 수를 먼저 선택하세요");
               return;
            }  
            
            var obj = $(this);  // 누른 해당 좌석 정보
            if(obj.attr("class") == 'normal')
               obj.attr("class", 'seat-resultt');
            else
               obj.attr("class", 'normal');
               
               
               
           //    obj.toggleClass("seat-resultt"); // 색깔 바뀌기
            // 좌석 정보 입력하기
            if(obj.attr("class") === 'seat-resultt' ){
               seatarr.push(obj.html() + " ");   // seatarr 배열에 누른 값 넣기 
            }else{
               var idx = seatarr.indexOf(obj.html() + " ");
               seatarr.splice(idx, 1);
            }
            $("#seat-result").html(seatarr);
            
            
            var seatnum = seatarr.length;   // 고른 좌석 수 
            var peoplenum = $("#select-people option:selected").val();  // 고른 인원 수
            
            // 인원 수 보다 좌석 수를 많이 골랐을 때 
             if($("#people-result").html() != "" && peoplenum < seatnum){
               alert("좌석 수가 인원 수를 초과했습니다.");
               var idx = seatarr.indexOf(obj.html() + " ");
               seatarr.splice(idx, 1);
               obj.toggleClass("seat-resultt");
            }
            $("#seat-result").html(seatarr);  
            
          
         });
      
      });
      
      // select box 순차적으로 선택하게 하기 + 선택 변경시 입력값 초기화하기
      function showTheater(){
         $("#select-theater").html('<option value="">::상영관 선택::</option><option value="구월 CGV">구월 CGV</option><option value="부평 CGV">부평 CGV</option><option value="청라 CGV">청라 CGV</option>');
      }
      function hideTheater(){
         $("#select-theater").html('<option value="">::상영관 선택::</option>');
      }   
      function showDate(){
         $("#select-date").html('<option value="">::관람일 선택::</option><option value="2022-1-28">2022-1-28</option><option value="2022-1-29">2022-1-29</option><option value="2022-1-30">2022-1-30</option><option value="2022-1-31">2022-1-31</option><option value="2022-2-1">2022-2-1</option><option value="2022-2-2">2022-2-2</option><option value="2022-2-3">2022-2-3</option><option value="2022-2-4">2022-2-4</option><option value="2022-2-5">2022-2-5</option>');
      }
      function hideDate(){
         $("#select-date").html('<option value="">::관람일 선택::</option>');
      }
      function showTime(){
         $("#select-time").html('<option value="">::관람시간 선택::</option><option value="08 : 30 ~ 11 : 00">08 : 30 ~ 11 : 00</option><option value="11 : 30 ~ 14 : 00">11 : 30 ~ 14 : 00</option><option value="14 : 30 ~ 17 : 00">14 : 30 ~ 17 : 00</option><option value="17 : 30 ~ 20 : 00">17 : 30 ~ 20 : 00</option><option value="20 : 30 ~ 23 : 00">20 : 30 ~ 23 : 00</option>');
      }
      function hideTime(){
         $("#select-time").html('<option value="">::관람시간 선택::</option>');
      }
      function showPeople(){
         $("#select-people").html('<option value="">::인원 수 선택::</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option>');
      }
      function hidePeople(){
         $("#select-people").html('<option value="">::인원 수 선택::</option>');
      }
      
      // 상영관 정보가 바뀌었을 때
         $(function(){ 
            showTheater();
            hideDate();
            hideTime();
            hidePeople();
            
         $("#select-theater").change(function(){
         
          showDate();
          
             var obj_theater = $("#select-theater option:selected").val();
             $("#theater-result").html(obj_theater);
             
             $("#select-date").val("");
             var obj_date = $("#select-date option:selected").val(); 
             $("#date-result").html(obj_date); 
             
             $("#select-time").val("");
              var obj_time = $("#select-time option:selected").val();
             $("#time-result").html(obj_time);
             
             $("#select-people").val("");
              var obj_people = $("#select-people option:selected").val();
             $("#people-result").html(obj_people); 
             
             
            if(obj_theater == ""){
               hideDate();
               hideTime();
               hidePeople();
            }else if(obj_theater != ""){
               showDate();
               hideTime();
               hidePeople();
            }
            
             
            seatarr = [];    // 좌석 담긴 배열 비우기
            $("#seat-result").html(seatarr);  // 좌석 정보에 빈칸 입력
            
            // select box 선택값 바뀌면 좌석 색 원래대로 돌리기
            $("td").attr("class", "normal");
            
            
            
            });
         });
         
      // 관람일이 바뀌었을 때
        $(function(){     
            $("#select-date").change(function(){
               
            showTime();   
               
             var obj_date = $("#select-date option:selected").val();
             $("#date-result").html(obj_date);
             
            $("#select-time").val("");
              var obj_time = $("#select-time option:selected").val();
             $("#time-result").html(obj_time);
             
             $("#select-people").val("");
              var obj_people = $("#select-people option:selected").val();
             $("#people-result").html(obj_people);
            
             if(obj_date == ""){
               hideTime();
               hidePeople();
             }else if(obj_date !=""){
                showTime();
                hidePeople();
             }
             
            seatarr = [];    // 좌석 담긴 배열 비우기
            $("#seat-result").html(seatarr);  // 좌석 정보에 빈칸 입력
            // select box 선택값 바뀌면 좌석 색 원래대로 돌리기
            $("td").attr("class", "normal");
            });
         });
       
      //관람시간이 바뀌었을 때
         $(function(){     
            $("#select-time").change(function(){
               
               showPeople();
               
             var obj_time = $("#select-time option:selected").val();
             $("#time-result").html(obj_time);
             
             $("#select-people").val("");
              var obj_people = $("#select-people option:selected").val();
             $("#people-result").html(obj_people);
            
            if(obj_time == ""){
               hidePeople();
            }else if(obj_time !=""){
               showPeople();
            }
            
            seatarr = [];    // 좌석 담긴 배열 비우기
            $("#seat-result").html(seatarr);  // 좌석 정보에 빈칸 입력
            // select box 선택값 바뀌면 좌석 색 원래대로 돌리기
            $("td").attr("class", "normal");
            });
         });
         
         $(function(){     // 인원수 정보 입력
            $("#select-people").change(function(){
             var obj_people = $("#select-people option:selected").val();
             $("#people-result").html(obj_people);
             
            seatarr = [];    // 좌석 담긴 배열 비우기
            $("#seat-result").html(seatarr);  // 좌석 정보에 빈칸 입력
            // select box 선택값 바뀌면 좌석 색 원래대로 돌리기
            $("td").attr("class", "normal");
            });
         });
   

   </script>
   
<%@include file="../include/footerTest.jsp"%>
</body>
</html>