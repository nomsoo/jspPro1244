<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Travel Blog</title>
<%@ include file="../include/header.jsp" %>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
<style type="text/css">
.jumbotron {
   background-image: url('../images1/travel.jpg');
   background-size: cover;
   text-shadow: black 0.2em 0.2em 0.2em;
   color: white;
}
</style>
<link rel="stylesheet" href="../css/travel.css" type="text/css">
</head>
<body>
<div class="container">
  <div class="jumbotron" style="color: white;">
   <h1 class="text-center" >즐거운 여행을 추구합니다.</h1>
   <p class="text-center">MY TRAVEL는 즐겁고 편한한 여행을 추구합니다. 여행자에게 최고의 시간을 선물하겠습니다.</p>
   <p class="text-center"><a class="btn btn-primary btn-lg" href="info.jsp" role="button">여행지둘러보기</a>  
  </div>
  <div class="row">
  	 <div class="col-md-12">
  	 <h2 style="text-align: center;">즐거운 여행을 위해 당신에게 제시합니다.</h2><br><hr>
  	 </div>
  <div class="row">
  <div class="col-md-4" style="text-align: center;">
     <h3>여행이 자신이 없으시다구요?</h3>
     <p>저희 My Travel에서 당신에게 필요한<br> 	여행정보를 추천합니다.</p>
     <p><a class="btn btn-default" href="info.jsp">여행정보 알아보기</a></p> 
  </div>
  <div class="col-md-4" style="text-align: center;">
     <h3>여러분의 여행지를 공유해보세요.</h3>
     <p>여행을 즐겁게 즐기려면 정보가 우선입니다.<br> Traveler의 정보을 공유하고, 물어보세요! </p>
     <p><a class="btn btn-default" href="../board/index.jsp">정보게시판 들어가기</a></p> 
  </div>
  <div class="col-md-4" style="text-align: center;">
     <h3>여행에도 준비물은 필수입니다.</h3>
     <p>Traveler는 필수적으로 챙겨야 할 준비물이 많습니다. <br> 다양하고 알찬 준비물 지금 준비하세요! </p>
     <p><a class="btn btn-default" href="../travel/shop.jsp">쇼핑샵 들어가기</a></p> 
  </div>
  </div>
  </div>
  <hr>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>