<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<c:set var="path" value="${pageContext.request.contextPath}" />  
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="${path}/include/js/bootstrap.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/travel.css" type="text/css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href="../css/travel.css" type="text/css">
<footer class="footer">
   <div class="container">
      <br>
      <div class="row">
         <div class="col-sm-3" style="text-align: center;">
         <h5>&copy; 저작권 or 출저: <a href="http://google.com">Google</a></h5>
         <h5>미래개발능력개발원</h5>
         <h5>30대는 청춘이다.</h5>
         <h5>스타크래프트</h5>
         <h5>빨무의 신 성호형</h5>
         </div>
         <div class="col-sm-3"><h3>사이트 소개</h3><p>이 영광을 세뇨르에게 바칩니다.<br> 성호형은 술한잔하고, 양학이는 롤하자</p></div>
         <div class="col-sm-2"><h4 style="text-align: center;">뭘 넣지</h4>
            <div class="list-group">
               <a onclick="log()" class="list-group-item">쇼핑하기</a>
               <a onclick="log()" class="list-group-item">정보게시판</a>
               <a onclick="log()" class="list-group-item">회사정보</a>                  
            </div>
         </div>
         <div class="col-sm-2"><h4 style="text-align: center;">SNS</h4>
            <div class="list-group">
               <a onclick="log()" class="list-group-item">페이스북</a>
               <a onclick="log()" class="list-group-item">인스타그램</a>
               <a onclick="log()" class="list-group-item">싸이월드</a>            
            </div>
         </div>
         <div class="col-sm-2"><h4 style="text-align: center;"><span class="glyphicon glyphicon-ok"></span>
         by 동전딜캐</h4>
         </div>
       </div>
   </div>
</footer>



 