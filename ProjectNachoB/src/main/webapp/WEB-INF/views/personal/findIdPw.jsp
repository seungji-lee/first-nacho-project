<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/headerTest.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

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

@font-face {
  font-family: testFontCafeOh;
  src: url('/resources/css/font/Cafe24Ohsquareair.ttf');
}
.testFontCafeOh{font-family : "testFontCafeOh", serif;}


   .color_blue{
      color : blue;
   }
   .idFinder, .pwFinder{
      float: left;
      position: relative;
      top: 0px;
      left : 10px;
   }
   .idFinder{
      position : relative;
      top : 5px;
      left : 250px;
   }
   .pwFinder{
      position : relative;
      top : 10px;
      left : 400px;
   }
   .birthInput{
      width : 30px;
   }
   .phoneInput{
      width: 50px;
   }

   .pnumSize{
      width: 30px;
   }
   .firstCol{
      width: 100px;
   }
   fieldset{
      width : 1000px;
      margin : auto;   
   }
   
/*    h4{
      background-color : #e2e2e0;
   } */
   h4:nth-child(1) {
      width : 300px;
      margin : auto;
      background-color : #e2e2e0;
      border-top : 1px solid black;
   }

  /*  #btn-pw{
      width : 80px;
      margin : auto;
      position : relative;
      top : 10px;
      left : -5px;
   }
   #btn-id{
      width : 60px;
      margin : auto;
      position : relative;
      top : 10px;
      left : -10px;
   } */
/*    .btn-submit{
      
      width : 100px;
      border : 1px solid black;
      background-color: #e2e2e0;
   } */
   
   
/*    #button1Detail{
      position : relative;
      top : 18px;
      left : -5px;
   } */

   #headerSpace{
      width : 100%;
      height: 75px;

   }
   #hrSize{
      width : 60%;
      border: 1px solid #fdcf77;
      
   }
   .space{
      width : 100%;
      height : 160px;
      /* background-color : pink; */
   }
   
   ._table{
   		margin-top: -20px;
   }
   
   ._table1{
   		padding: 6%;
   		margin-left: 140px; 
   		margin-right: auto;
		margin-top: -35px;
   }

   ._table2{
   		padding: 1%;
   }
   
   ._btn{
   		width: 60px;
   		margin-bottom: 100px;
   }
   
   ._btn1{
   		margin-left: 230px;
   		width: 130px;
   		height: 33px;
   }
   
   ._btn2{
   		margin-left: 70px;
   		margin-top: 30px;
   		width: 130px;
   		height: 33px;
   }
   
   ._thTd{
   		text-align: center; 
   		background-color: #F5E797; 
   		padding: 5px;
   		
   }
   
   td{
   	padding: 1%;
   }
   
</style>
<script type="text/javascript">
   window.onload = function(){
      if(${result eq 0}){
         alert("????????? ????????? ????????????.");
      }
   }
   
   
   function idFinder(f){
      
      f.action = "/personal/findIdPw";
      f.submit();
   }

   function pwFinder(f){
      f.action = "/personal/foundPw";
      f.submit();
   }
   
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><br><br>
      <div>
         <fieldset style="padding: 15px; border: 2px solid #bac8d3;">
            <label class="testFontEDR">
               ???????????? ???????????? ????????? ???????????? ???????????? ????????? ???????????? ????????????????????? ???????????? ?????? ?????? ?????????, ????????? ??????????????? ???????????? ??? ???????????? ???????????? ???????????? 
               ????????? ??? ???????????? ?????? ???????????? ??????????????? ???????????? ????????? ????????????. (???????????? ??? ????????????????????? ?????? ?????? : ??????????????????????????????)
               ???????????? ??? ???????????? ????????? ?????? ?????????????????? ?????? ????????????, ?????? ????????? ????????? ?????? ?????? ????????????????????????.
            </label>
            <br><br>
            <div style="text-align: center;">
           	<label class="testFontEDB"> ???????????? ???????????? :  
           	</label><label class="color_blue testFontEDB">1111-1111</label>
           	<label class="testFontEDB">(9:00 ~ 21:00)</label>
           	</div>
         </fieldset>
         <br>
         <hr id="hrSize">
         <br>
         <br>
      </div>

			<div class="idFinder">
               <form method="post">
                  <table class="_table1 _table">
                  	<thead>
                  		<tr>
                  			<td class="testFontEDB _thTd" colspan="2" style="width: 280px;">????????? ??????</td>
                  			<td></td>
                  		</tr>
                  	</thead>
                  	<tbody>
                     <tr>
                        <td class="firstCol testFontEDB" style="padding-top: 20px;" >??????</td>
                        <td><input type="text" class="testFontEDR" name="mname"  style="margin-top: 20px;" placeholder="?????? ??????"></td>
                     </tr>
                     <!-- <tr>   ?????? ????????? ??????
                        <td  class="firstCol">????????????</td>
                        <td>
                           <input class="birthInput" type="text" name="year">???
                           <input class="birthInput" type="text" name="month">???
                           <input class="birthInput" type="text" name="day">???
                        </td>
                     </tr> -->
                     <tr>
                        <td class="firstCol testFontEDB">?????????</td>
                        <td>
                           <input type="email" class="testFontEDR" name="memail" placeholder="????????? ??????">
                        </td>
                     </tr>
                     </tbody>
                  </table>
                  
                
                     <input class="testFontEDR _btn _btn1" type="button" value="??????" onclick="idFinder(this.form);">               
                
                                          
               </form>
            </div>


            <div class = "pwFinder">
               <form method="post"> 
                  <table class="_table2 _table" >
	                  <thead>
	                  		<tr>
	                  			<td class="testFontEDB _thTd" colspan="2" style="width: -10px;">???????????? ??????</td>
	                  			<td></td>
	                  		</tr>
	                  	</thead>
	                  	<tbody>
		                     <tr>
		                        <td class="firstCol testFontEDB" style="padding-top: 20px;">?????????</td>
		                        <td>
		                           <input type="text" style="margin-top: 20px;" class="testFontEDR" name="mid" placeholder = "????????? ??????">
		                        </td>
		                     </tr>
		                     <tr>
		                        <td class="firstCol testFontEDB">??????</td>
		                        <td><input type="text" class="testFontEDR" name="mname" placeholder="?????? ??????"></td>
		                     </tr>
		                     <tr>
		                        <td class="firstCol testFontEDB">?????????</td>
		                        <td><input type="email" class="testFontEDR" name="memail" placeholder="????????? ??????"></td>
		                     </tr>
		               </tbody>
                  </table>
                  
                     <input class="testFontEDR _btn _btn2" type="button" value="??????" onclick="pwFinder(this.form);">
                  
               </form>
            </div>

   			
   
   <%@include file="../include/footerTest.jsp" %>
   
</body>
</html>