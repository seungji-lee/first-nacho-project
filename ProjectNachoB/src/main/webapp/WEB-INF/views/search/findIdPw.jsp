<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <link rel="stylesheet"  type= "text/css" href="../../../resources/css/bootstrap.min.css"/> --><!-- header 부트스트랩 -->
<style type="text/css">
	.color_blue{
		color : blue;
	}
	.idFinder, .pwFinder{
		width :50%;
		float: left;
	}
	.birthInput{
		width : 30px;
	}
	.phoneInput{
		width: 50px;
	}
	.finderTitle{
		float :left;
		width : 50%;
	}
	.pnumSize{
		width: 30px;
	}
	.firstCol{
		width: 80px;
	}
	
	.testhead{
		padding: 20px;
		top: 0px;
		left: 0px;
		width: 100%;
		border: 1px black solid;
		background-color: #F5E797;
		color: black;
		position: fixed;
		/* padding: 10px 0; */
		
	}
	ul{
		padding: 0;
	}
	.testhead ul li{
		list-style: none;
		text-align: center;
		width: 100px;
		float: left;
		margin: auto;
		color: black;
		font-size: 18px;
	}
	.testhead ul li a{
		text-decoration: none;
		color: black;
	}
	.logo{
		float: left;
		margin: auto;
		padding: auto;
	}
	.blank{
		float: left;
		width: 340px;
		
	}
	.blank2{
		float: left;
		width: 250px;
	}
	.footer{
		text-align: center;
	}
	.space{
		width : 100%;
		height : 102px;
		background-color : pink;
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../include/header.jsp" %>
	<div class="space"></div>
			<h2>ID/PW 찾기</h2>
			<fieldset>
				<label>
					아이핀을 이용하여 회원에 가입하신 경우에는 회사가 회원님의 주민등록번호를 보유하고 있지 않은 관계로, 아이핀 등록기관의 실명확인 및 본인인증 서비스와 연계하여 
					아이디 및 패스워드 찾기 서비스가 제공되오니 참고하여 주시기 바랍니다. (실명확인 및 본인인증서비스 제공 기관 : 나이스신용평가정보㈜)
					본인인증 시 제공되는 정보는 해당 인증기관에서 직접 수집하며, 인증 이외의 용도로 이용 또는 저장하지않습니다.
				</label>
				<br><br>
				이용안내 고객센터 > 1:1문의 또는 ARS : <label class="color_blue">1111-1111</label> (9:00 ~ 21:00)
			</fieldset>
	<div class="finderTitle">
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디 찾기</h3>
	</div>
	<div class="finderTitle">
		<h3>비밀번호 찾기</h3>
	</div>
	<table>
		<tr>
			<td>
				<div class="idFinder">
					<form method="post">
						<table style="width : 500px;">
							<tr>
								<td class="firstCol">이름</td>
								<td><input type="text" placeholder="이름 입력"></td>
							</tr>
							<tr>
								<td  class="firstCol">생년월일</td>
								<td>
									<input class="birthInput" type="text" name="year">년
									<input class="birthInput" type="text" name="month">월
									<input class="birthInput" type="text" name="day">일
								</td>
							</tr>
							<tr>
								<td class="firstCol">휴대폰</td>
								<td>
									<select name="pnum1">
										<option value="">없음</option>
										<option value="011">011</option>
										<option value="010">010</option>
										<option value="017">017</option>
									</select>
									-
									<input class="pnumSize" type="text" name="pnum2">
									-
									<input  class="pnumSize" type="text" name="pnum3">
								</td>
							</tr>
							<tr>
								<td><input type="button" value="찾기" onclick="location.href='/search/foundId'"></td>
							</tr>
						</table>
					</form>
				</div>
			</td>
			<td>
				<div class = "pwFinder">
					<form method="post">
						<table style="width : 500px;">
							<tr>
								<td class="firstCol">아이디</td>
								<td>
									<input type="text" name="id" placeholder = "아이디 입력">
								</td>
							</tr>
							<tr>
								<td class="firstCol">이름</td>
								<td><input type="text" placeholder="이름 입력"></td>
							</tr>
							<tr>
								<td class="firstCol">휴대폰</td>
								<td>
									<select name="pnum1">
										<option value="">없음</option>
										<option value="011">011</option>
										<option value="010">010</option>
										<option value="017">017</option>
									</select>
									-
									<input class="pnumSize" type="text" name="pnum2">
									-
									<input class="pnumSize" type="text" name="pnum3">
								</td>
							</tr>
							<tr>
								<td><input type="button" value="찾기" onclick="location.href='/search/foundPw'"></td>
							</tr>
						</table>
					</form>
				</div>
			</td>
		</tr>
	</table>
	    <!-- footer 시작-->
	<div class="footer">
	  <hr>
      <p> 대표자 : 백건희 / 메일 : kunheeb@naver.com / 1지점 : 인천시 남동구 간석로 41길 10-14 청산그린맨션 1층</p>
      <p>2지점 : 서울시 구로구 시흥대로 163길 33 주호타워 2층 / 대표번호 : 010-3384-0780 / 문자 문의 : 010-3384-0780</p>
      <p>운영 시간 : 평일 06:00 - 24:00 / 토요일 08:00 - 18:00 / 일요일 휴무 <p>
      <p>COPYRIGHT © NACHOBOX ALL RIGHTS with Wix.com</p>
	</div>
    <!-- footer 끝-->
</body>
</html>