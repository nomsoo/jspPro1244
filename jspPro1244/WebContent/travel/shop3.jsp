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
</style>
<link rel="stylesheet" href="../css/travel.css" type="text/css">
</head>
<body style="text-align: center;">
 <div class="container">

      <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <div class="jumbotron">
            <h1>여행에서 준비물은 필수죠!</h1>
            <p>Traveler는 필수적으로 챙겨야 할 준비물이 많습니다. <br> 다양하고 알찬 준비물 지금 준비하세요! </p>
          </div>
          <br>
          <hr>
          <div class="row">
            <div class="col-xs-6 col-lg-4">
              <h2>고데기</h2>
              <img src="../images1/heardry.jpg" style="width: 100%;" class="img-thumbnail"><br>
              <p><a class="btn btn-default" style="margin: 1em;" href="#" role="button">자세히 보기 »</a></p>
            </div>
            <div class="col-xs-6 col-lg-4">
               <h2>목배게</h2>
              <img src="../images1/neck.jpg" style="width: 100%;" class="img-thumbnail"><br>
              <p><a class="btn btn-default" style="margin: 1em;" href="#" role="button">자세히 보기 »</a></p>
            </div>
            <div class="col-xs-6 col-lg-4">
               <h2>셀카봉</h2>
              <img src="../images1/selfcamera.jpg" style="width: 100%;" class="img-thumbnail"><br>
              <p><a class="btn btn-default" style="margin: 1em;" href="#" role="button">자세히 보기 »</a></p>
            </div>     
          </div>
        </div>

        <div class="col-sm-3 sidebar-wrapper" id="sidebar">
          <div class="list-group">
            <a href="shop.jsp" class="list-group-item">추천상품</a>
            <a href="shop2.jsp" class="list-group-item">케리어</a>
            <a href="shop3.jsp" class="list-group-item active">생활용품</a>            
          </div>
        </div>
      </div>

      <hr>

    </div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>