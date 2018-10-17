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
        <div class="row">     
         <div class="col-xs-6 col-lg-6">
              <h2>케리어</h2>
              <img src="../images1/carrier2.jpg" style="width: 100%;" class="img-thumbnail"><br>
              <br>              
			  <p><a class="btn btn-default" style="margin: 1em;" href="#" role="button">장바구니 담기 »</a></p>
            </div>                       
             <div class="col-xs-6 col-lg-4" style="center;" id="sidebar">
          <div class="list-group" style="padding: 100px 0px;">
           <p>노란색캐리어</p>
			  <p>가격 : 30.000 원</p>
			  <p>정보 : 산뜻한 노란색 캐리어</p>
			  <p>짐을 많이 넣을수 있어요</p>
			  <p>여행에 가방은 필수에요!</p>
			  <p>더이상 딱히 설명할 거리가 없네요..</p>
			  <p>그냥 가방이잖아요...</p>
			  <p>수량 : <select>
			   <option value=1 >1</option>
             <option value=2 >2</option>
             <option value=3 >3</option>
             <option value=4 >4</option>
             <option value=5 >5</option>
             <option value=6 >6</option></select></p>
			  <p><a class="btn btn-default" style="margin: 1em;" href="#" role="button">구매하기 »</a></p>
          </div>
        </div>
        </div>
        </div>
        </div>
        
           
<%@ include file="../include/footer.jsp" %>
</body>
</html>