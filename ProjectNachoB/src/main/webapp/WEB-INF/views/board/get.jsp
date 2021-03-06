<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
@font-face {
	font-family: testFontGB;
	src: url('/resources/css/font/GmarketSansTTFBold.ttf');
}

.testFontGB {
	font-family: "testFontGB", serif;
}

@font-face {
	font-family: testFontGL;
	src: url('/resources/css/font/GmarketSansTTFLight.ttf');
}

.testFontGL {
	font-family: "testFontGL", serif;
}

@font-face {
	font-family: testFontGM;
	src: url('/resources/css/font/GmarketSansTTFMedium.ttf');
}

.testFontGM {
	font-family: "testFontGM", serif;
}

@font-face {
	font-family: testFontEDB;
	src: url('/resources/css/font/EliceDigitalBaeum_Bold.ttf');
}

.testFontEDB {
	font-family: "testFontEDB", serif;
}

@font-face {
	font-family: testFontEDR;
	src: url('/resources/css/font/EliceDigitalBaeum_Regular.ttf');
}

.testFontEDR {
	font-family: "testFontEDR", serif;
}

@font-face {
	font-family: testFontCafeOh;
	src: url('/resources/css/font/Cafe24Ohsquareair.ttf');
}

.testFontCafeOh {
	font-family: "testFontCafeOh", serif;
}

.contents {
	text-align: center;
}

textarea {
	resize: none;
	overflow-y: scroll;
	border: none;
	border-right: 0px;
	border-top: 0px;
	boder-left: 0px;
	boder-bottom: 0px;
	height: 400px;
	width: 100%;
	padding: 0;
	border-width: 0;
}

.input_t {
	border: none;
	border-right: 0px;
	border-top: 0px;
	boder-left: 0px;
	boder-bottom: 0px;
	width: 100%;
	height: 100%;
	padding: 0;
	border-width: 0;
}

.bTable {
	border: 1px solid black;
	border-collapse: collapse;
	margin: auto;
	height: 400px;
	width: 700px;
}

._td {
	background-color: #F4EAB4;
}

.bTd {
	border: 1px solid black;
	border-collapse: collapse;
}

.btnarea {
	margin-top: 0.5%;
	text-align: center;
}


.rTable {
	border: 1px solid black; border-collapse : collapse;
	margin: auto;
	height: 80px;
	width: 850px;
	border-collapse: collapse;
	
}

.rTn {
	border: 1px solid black;
	border-collapse: collapse;
	width: 10%;
}

.rTn1 {
	border-collapse: collapse;
	width: 10%;
}

.rCont1 {
	width: 60%;
}

.rCont2 {
	width: 20%;
}

.rCont3 {
	width: 50%;
}

.cTable {
	margin-top: 0.7%;
	border: 0px;
	
}

/* .regiBtn {
	border: 1px solid black;
	background-color: #FFFFFF;
	margin: auto;
	padding: 0.4%;
	font-weight: bold;
} */



.regiBtn1 {
	background-color: #FFFFFF;
	margin: auto;
	padding: 0.4%;
	font-weight: bold;
}
/* 
.regiBtn:hover {
	border-color: red; */
}

.DeleteReBo {
	border-bottom: none;
	border-right: none;
	border-top: none;
}

.DelReBo {
	width: 40px;
	height: 30px;
}

.aInput1 {
	padding-left: 7px;
	padding-top: 1px;
	width: 96%;
}

.aInput2 {
	padding-left: 7px;
	padding-top: 5px;
	width: 98%;
}

._tdThTest {
	background-color: #F4EAB4;
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
	width: 50px;
}

._tdTdTest{
	border-collapse: collapse;
	text-align: center;
	
}

._tdCont{
	width: 400px;
	text-align: center;
	padding-left: 10px;
	border-bottom: 1px solid #F0E9C5;
	padding-bottom:3px;
}
._tdCont1{
	width: 100px;
	text-align: left;
	padding-left: 10px;
	padding-right: 2px;
	padding-bottom:3px;
	border-bottom: 1px solid #F0E9C5;
	
}
._tdCont2{
	padding-right: 10px;
}

</style>
<title>Insert title here</title>

</head>
<body>
	<%@include file="../include/headerTest.jsp"%>
	<script type="text/javascript" src="/resources/js/reply.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<h1 class="testFontGM" style="text-align: center;">????????? ??????</h1>
	<div class="contents">

		<table class="bTable">
			<tr>
				<td rowspan=2; class="_td bTd testFontEDR">??????</td>
				<td rowspan=2;><input class="form-control input_t aInput1 testFontEDR"
					name="title" value="${board.title }" readonly="readonly"></td>
				<td class="_td bTd testFontEDR">?????????</td>
				<td class="bTd"><input class="form-control input_t aInput1 testFontEDR"
					name="mid" value="${board.mid }" readonly="readonly"></td>
			</tr>
			<tr>
				<td class="_td bTd testFontEDR ">?????????</td>
				<td class="bTd "><input class="form-control input_t aInput1 testFontEDR"
					name="bno" value="${board.bno}" readonly="readonly"></td>
			</tr>

			<tr>
				<td class="_td bTn testFontEDR">?????????</td>
				<td colspan="3" class="bTd "><textarea
						class="form-control aInput2 testFontEDR" name="content" readonly="readonly">${board.content }</textarea>
				</td>
			</tr>

		</table>

		<div class="btnarea">

			<!-- <sec:authorize access = "hasRole('ROLE_ADMIN')">
               <button type="button" class="btn btn-primary testFontGL regiBtn" data-oper="modify">??????</button>
                   <button type="button" class="btn btn-danger testFontGL regiBtn" data-oper="remove">??????</button>
            </sec:authorize> -->

			<sec:authentication property="principal" var="pinfo" />

			<sec:authorize access="isAuthenticated()">
				<c:if
					test="${pinfo.username eq board.mid or pinfo.username eq 'sunde1'}">
					<button type="button" class="btn btn-primary testFontEDR regiBtn"
						data-oper="modify">??????</button>
					<button type="button" class="btn btn-danger testFontEDR regiBtn"
						data-oper="remove">??????</button>
				</c:if>
			</sec:authorize>

			<button type="button" class="btn btn-warning testFontEDR regiBtn"
				data-oper="list">???????????? ??????</button>
			<sec:authorize access="isAuthenticated()">
				<button id="addReplyBtn" onclick="location.href='#testFooter'" 
				class="btn btn-primary btn-xs pull-right btnRepl testFontEDR regiBtn" >????????????</button>
			</sec:authorize>
		</div>
		<form action="/board/remove" method="post">
			<input type="hidden" name="pageNum" value="${cri.pageNum}"> <input
				type="hidden" name="amount" value="${cri.amount}"> <input
				type="hidden" name="${_csrf.parameterName}" value="${_csfr.token }">
			<input type="hidden" name="bno" value="${board.bno}">
		</form>
	</div>
	
		<div class="testFontEDB" style="font-size: x-large; margin-left: 400px; margin-top: 20px;">?????? ??????
			<hr style="width: 500px; border: 1px solid #F5AD00; float: right; margin-right: 500px; margin-top: 20px;"> </div>
	<div class='row'>
		<div class="col-lg-12">
			<!-- /.panel -->
			<div class="panel panel-default">




				<table class="testChat rTable cTable"
					style="border-spacing: 0 10px;">

				</table>
				<!-- /.panel .chat-panel -->
			</div>
		</div>
		<!-- ./end row -->
	</div>



	<hr
		style="width: 700px; border: 0px; height: 5px; background-color: #F5E797;">
	<!-- Modal -->
	<div class="modal fade" id="MyModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<!-- <button type="button" class="close" data-dismiss="modal" ari-hidden="true">&times;</button> -->
					<h4 class="modal-title" id="myModalLabel" style="margin-left: 27%;"></h4>
				</div>
				<div class="modal-body">

					<sec:authorize access="isAuthenticated()">
					<table class="rTable">
						<tr>
							<td class="rTn _td testFontEDR" style="text-align: center;">??????</td>
							<td class="rTn rCont1 testFontCafeOh"><input
								class="form-control input_t aInput1 testFontEDR" name='reply' id="reply"
								value=''></td>
							<td class="rTn _td testFontEDR" style="text-align: center;">?????????</td>
							<td class="rTn rCont2 testFontCafeOh">
							<input
								class="form-control input_t aInput1 testFontEDR" name='replyer' id="replyer"
								value=<sec:authentication property="principal.member.mid"/>></td>
						</tr>
					</table>
					</sec:authorize>
				</div>
				<div class="modal-footer"
					style="margin-left: 67%; margin-top: 0.5%;">
					<!--            <button id='modalModBtn' type="button" class="btn btn-warning testFontGL regiBtn">??????</button>
            <button id='modalRemoveBtn' type="button" class="btn btn-danger testFontGL regiBtn">??????</button> -->
					<button id='modalRegisterBtn' type="button"
						class="btn btn-primary testFontEDR regiBtn">??????</button>
					<button id='modalCloseBtn' type="button"
						class="btn btn-default testFontEDR regiBtn">??????</button>

				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	
	var principal = null;
	   // ????????? ????????? ?????? ????????????.
	   <sec:authorize access="isAuthenticated()">
	   principal = '<sec:authentication property="principal.username"/>'; //?????? ??????????????? ???????????? ?????????
	   </sec:authorize>
	
      $(function(){
         var pageNum = "${cri.pageNum}";
         var amount = "${cri.amount}";
         var bnoValue = "${board.bno}"
         var replyStatus ="";
         $("#MyModal").hide();
         $("button").click(function(){
            var oper = $(this).data("oper");
            if(oper == undefined){
               return;
            }
            if(oper == 'list'){
               location.href="/board/list?pageNum=" + pageNum + "&amount=" + amount;
            }
            if(oper == "modify"){
               location.href="/board/modify?bno=" + bnoValue + "&pageNum=" + pageNum + "&amount=" + amount;
            }
            if(oper == "remove"){
               $("form").submit();
             }
            
         });
         
         //----------------???????????? S---------------//
         
         // ?????? ????????? ????????? ??????????
         var replyUL = $(".chat");   //?????????
         
         
         // ????????? ???????????? ?????? ????????????   --> reply??? ?????? getList??? ???????????? ????????????.
         showList();
         function showList(){
            replyService.getList({bno : bnoValue, page: pageNum}, function(list){   //???????????? 2???????????? bno??? page
               
               var str =''; // HTML????????? ????????? ????????? ??????
               if (list == null || list.length ==0){
                  replyUL.html("");      // ????????????
                  return;
               }
               /*
            
              ???????????? data-rno = '"+list[i].rno +"' ??????????????? ??? ?????? ?????? rno ?????? li ????????? ????????? ?????????
              ????????? ????????? ?????? ??????
              
              for(var i=0; i<list.length; i++){
                  str += "<li class = 'left clearfix' data-rno = '"+list[i].rno +"'>";      // ????????? ?????????[0] => 1??????
                  str +=    "<div>";
                  str +=       "<div class = 'header'>";   
                  str +=          "<strong class = 'primary-font'>????????? : " + list[i].mname + "</strong> &nbsp; &nbsp; ";   
                  str +=          "<small class = 'pull-right text-muted'> ????????? : "+ list[i].strRegdate +"</small>";
                  str +=       "</div>";                                 
                  str +=       "<p> ?????? : "+ list[i].reply + "</p>";      
                  str +=    "</div>";         
                  str += "</li>";         
               }
            */
            
            // ??????????????? li ????????? data-rno = '"+list[i].rno +"'??? ????????????
            // data-rno = '"+list[i].rno +"' ??? ??????????????? ????????? ????????? ?????????
            
            // ?????? for ?????? ???????????? ???????????? ?????? ????????? ??????????????? ???????????? ???????????? ????????? ???????????? ?????? 
            // ?????? ??????????????? ???????????? html ????????? ??????????????? ?????? for???
            
            //var strTest = "";
            var strTest = '<tr><td style="border:none; "><br></td></tr>';
            
               for(var i=0; i<list.length; i++){
            	   strTest += '<tr>';
            	   strTest += '<td class="_tdThTest testFontEDR">??????</td>';
            	   strTest += '<td class="_tdTdTest testFontEDR _tdCont">' + list[i].reply + '</td>';
            	   
            	   strTest += '<td class="_tdThTest testFontEDR">?????????</td>';
            	   strTest += '<td class="_tdTdTest testFontEDR _tdCont1">' + list[i].mid + '</td>';
            	   strTest += '<td class="_tdThTest testFontEDR">?????????</td>';
            	   strTest += '<td style="margin-left: 10px; padding-left: 10px;" class="testFontEDR _tdCont1 _tdCont2">' + list[i].strRegdate + '</td>';
            	   
            	   strTest += '<td class="testFontEDR">'
            	   if(principal == list[i].mid || principal == 'sunde1'){
            		   strTest += "<button class='testFontEDR' data-rno =' "+ list[i].rno + "'>??????</button>"
            	   }
            			   strTest += '</td>';
            		   
            			   strTest += '</tr>';
                 	   strTest += '<tr><td style="border:none;"><br></td></tr>';
               }
                
               $(".testChat").html(strTest);
               ///replyUL.html(str);
            });   
         } // end showList()
         
         $("li").click(function(){
            var oper = $(this).data("oper");
            console.log(oper);
         });
        // ?????? ?????? ?????? ?????? ?????????      ????????? ????????? ????????????????????? ?????? ?????????.
        $("#addReplyBtn").on("click", function(ReplyVo){
           $("#MyModal").show();
           $('#myModalLabel').text("?????? ??????");
           
           
           $('#reply').val("");
           $('#replyer').attr("readonly", "readonly");
            $('#replyDate').val(ReplyVo.strRegdate);
           $('#replyDate').attr("readonly","readonly");
            
           // $('#modalModBtn').hide();            // ?????? ?????? ?????????
           // $('#modalRemoveBtn').hide();         // ?????? ?????? ?????????
            $('#modalRegisterBtn').show();      
            $('#modalCloseBtn').show();         
            
            
        });
        
        
       
         //????????? E
         var rno;
       
      //?????? ??? .chat ????????? ????????? ?????? ????????? li ????????? ??????????????? ???????????? ??????
      //  $(".chat").on("click", "li", function(e){
         
         
      //?????? ??? .chat ????????? ????????? ?????? ????????? button ????????? ??????????????? ???????????? ??????
      // $(".chat").on("click", "button", function(e){
         
         
      $(".testChat").on("click", "button", function(e){
         //Reply ??????
         rno  = $(this).data("rno");
         var result = confirm('?????? ???????????????????'); 
         
         if(result) { //yes location.replace('index.php'); 
             var param = {rno:rno, bno:bnoValue};
              replyService.remove(param, function(result){
                 //$("#MyModal").hide();
                  showList();
               });
         } 
   
         //???????????? ?????? reply.js???  function get() ??? ??????
         
           /* replyService.get(rno, function(ReplyVo){      // vo????????? ????????????.
               $('#myModalLabel').text("?????? ??????");
               $('#reply').val(ReplyVo.reply)
               $('#replyer').val(ReplyVo.mname)
                $('#replyer').attr("readonly", "readonly");   // ????????? ????????? ?????? ??????
                $('#replyDate').val(ReplyVo.strRegdate)
                $('#replyDate').closest("div").show();   // ????????? ?????? ??? ?????????
                $('#replyDate').attr("readonly", "readonly");   // ????????? ?????? ??? ?????? ??????
                
                $('#modalModBtn').show();            // ?????? ?????? ?????????
                $('#modalRemoveBtn').show();         // ?????? ?????? ?????????
                $('#modalRegisterBtn').hide();      // ?????? ?????? ?????????
                $('#modalCloseBtn').hide();         // ?????? ?????? ?????????
            

                $("#MyModal").show();
             });*/ 
         
      });
         
         //?????? ????????????
        $("#modalModBtn").on("click", function(){
           console.log('??????????????????');
            var modifyReply = {rno:rno, reply:$('#reply').val()};
            
            replyService.update(modifyReply, function(result){
               $("#MyModal").hide();
               showList();
            });
        });
        $("#modalRemoveBtn").on("click", function(){
           console.log('??????????????????');
           
 
           var param = {rno:rno, bno:bnoValue};
            replyService.remove(param, function(result){
               $("#MyModal").hide();
                showList();
             });
        });
        $("#modalRegisterBtn").on("click", function(){
           console.log('??????????????????');
           var reply = {
                   bno: bnoValue,
                   reply: $('#reply').val(),
                   mid: $('#replyer').val()
             }
             replyService.add(reply, function(result){      // ???????????? ???????????? ?????????, ???????????? ????????????
                $("#MyModal").hide();
                showList();
             }); 
        });
        $("#modalCloseBtn").on("click", function(){
           console.log('??????????????????');
           $("#reply").val(""); 
           $("#MyModal").hide();
        });
         
         
         //----------------???????????? E---------------//
         

         
         
      });
   </script>
	<%@include file="../include/footerTest.jsp"%>
</body>
</html>