<%@page import="java.util.HashMap"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri= "http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>1조 프로젝트</title>
        
        
        <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
		<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <!-- Link Swiper's CSS -->
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />

    <!-- Demo styles -->
    <style>
    		.body{
				
				margin: auto;
			
				text-align: center;
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
			#ticketing:hover{
				background-color: black;
				color: red;
			}
			.ming{
				text-decoration: none;
				font-size:20px;
				color: black;			
			}
			.mingsection{
				height: 50px;
				margin-top: 0px;
				padding-top: 0px;
			}
			#mingid{
				width: 300px;
				height: 350px;
			}
       html,
      body {
        height: 100%;
      } 

      .swiper {
        width: 100%;
        height: 100%;
        margin: 0;
      } 

      .swiper-slide {
        text-align: center;
        font-size: 15px;
        background: #fff;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }

      .swiper-slide img {
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover;
      }  
   	  .body-center{
   	  	background-color: white;
   	  	text-align: center;
   	  	padding: 10px;
   	  }
 
	.mainPhoto{
		text-align: center;
		margin: 0px;
		padding: 0px;
		
	}
	
    </style>
  </head>

  <body id="page-top">
  <%@include file="../include/headerTest.jsp"%>

	
            <div class="mainPhoto">
				<img style="width: 100%;" src="../resources/img/메인완성.png" />
			</div>
      

        <div class="body-center">
        	<h3>현재 상영중</h3>
        </div>
    <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
        	<table>
        		<tr>
      				<c:forEach var="movie" items="${Ming }" end="3">
      				<td>
	      				<a class="ming" href="/project/get?mno=${movie.mno }"><img id="mingid" src = "../../resources/img/${movie.poster }" style="border-radius: 10px;"></a><br>
	      				<a class="ming" href="/project/get?mno=${movie.mno }">${movie.title }</a><br>
	      				감독 : ${movie.director }&nbsp;&nbsp;&nbsp;&nbsp;평점 : ${movie.mpoint } / 5점<br>
	      				<input type="button" value="예매하기" id="ticketing" onclick="location.href = '/project/ticket2?mno=${movie.mno}'">
      				</td>
        		</c:forEach>
        		</tr>
       		</table>
        </div>
        <div class="swiper-slide">
        <table>
        		<tr>
        		<c:forEach var="movie" items="${Ming }" begin="4" end="7">
      				<td>
	      				<a class="ming" href="/project/get?mno=${movie.mno }"><img id="mingid" src = "../../resources/img/${movie.poster }" style="border-radius: 10px;"></a><br>
	      				<a class="ming" href="/project/get?mno=${movie.mno }">${movie.title }</a><br>
	      				감독 : ${movie.director }&nbsp;&nbsp;&nbsp;&nbsp;평점 : ${movie.mpoint } / 5점<br>
	      				<input type="button" value="예매하기" id="ticketing" onclick="location.href = '/project/ticket2?mno=${movie.mno}'">
      				</td>
        		</c:forEach>
    			</tr>
        	</table>
        </div>
        <div class="swiper-slide">
        <table>
        		<tr>
        		<c:forEach var="movie" items="${Ming }" begin="8" end="11">
      				<td>
	      				<a class="ming" href="/project/get?mno=${movie.mno }"><img id="mingid" src = "../../resources/img/${movie.poster }" style="border-radius: 10px;"></a><br>
	      				<a class="ming" href="/project/get?mno=${movie.mno }">${movie.title }</a><br>
	      				감독 : ${movie.director }&nbsp;&nbsp;&nbsp;&nbsp;평점 : ${movie.mpoint } / 5점<br>
	      				<input type="button" value="예매하기" id="ticketing" onclick="location.href = '/project/ticket2?mno=${movie.mno}'">
      				</td>
        		</c:forEach>
    			</tr>
        	</table>
        </div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>

    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {/* 
    	  slidesPerView: 5,
          spaceBetween: 20,
          slidesPerGroup: 5,
          loop: true,
          loopFillGroupWithBlank: true, */
        pagination: {
          el: ".swiper-pagination",
          type: "progressbar",
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
    </script>
    
<%@include file="../include/footerTest.jsp"%>
  </body>
</html>