<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ include file="../include/modal.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />  
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/travel.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/travel.css" type="text/css">
 
<nav class="navbar navbar-default">
   <div class="container-fluid">
      <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
         data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
         <span class="sr-only"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>         
         </button>
         <a class="navbar-brand" href="../travel/index.jsp">MY TRAVEL</a>         
      </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
         <li><a href="../travel/info.jsp">여행정보<span class="sr-only"></span></a></li>
         <li><a href="#">회사정보</a></li>
         <li class="dropdown">
            <a href="#" class="dropdown-toogle" data-toggle="dropdown" role="button"
            aria-haspopup="true" aria-expanded="false">쇼핑<span class="caret"></span></a>
            <ul class="dropdown-menu">
               <li><a href="../travel/shop.jsp">추천상품</a>
               <li><a href="../travel/shop.jsp">전자기기</a>
               <li><a href="../travel/shop.jsp">생활용품</a>
            </ul>
         </li>
         <li><a href="../board/index.jsp">정보게시판</a></li>
      </ul>
      <form class="navbar-form navbar-left">
         <div class="form-group">
            <input type="text" class="form-control" placeholder="내용을 입력하세요.">
         </div>
         <button type="submit" class="btn btn-default">검색</button>      
       </form>
      
      <c:choose>     
      <c:when test="${sessionScope.userid == null}">
      <ul class="nav navbar-nav navbar-right">
         <li class="dropdown">
            <a href="#" class="dropdown-toogle" data-toggle="dropdown" role="button"
            aria-haspopup="true" aria-expanded="false">접속하기<span class="caret"></span></a>
            <ul class="dropdown-menu">              
               <li><a data-target="#layerpop" data-toggle="modal">로그인</a></li>
               <li><a data-target="#layerpop2" data-toggle="modal">회원가입</a></li>               
            </ul>
         </li>      
      </ul>
      </c:when>
      <c:when test="${sessionScope.userid == 'admin'}">
      <ul class="nav navbar-nav navbar-right">
         <li class="dropdown">
            <a href="#" class="dropdown-toogle" data-toggle="dropdown" role="button"
            aria-haspopup="true" aria-expanded="false">회원정보<span class="caret"></span></a>
            <ul class="dropdown-menu">              
               <li><a href="../admin/index.jsp" data-toggle="modal">회원정보</a></li>
               <li><a href="../travel/logout.jsp" data-toggle="modal">로그아웃</a></li>               
            </ul>
         </li>      
      </ul>
      </c:when>      
      <c:otherwise>
      <ul class="nav navbar-nav navbar-right">
         <li class="dropdown">
            <a href="#" class="dropdown-toogle" data-toggle="dropdown" role="button"
            aria-haspopup="true" aria-expanded="false">회원정보<span class="caret"></span></a>
            <ul class="dropdown-menu">              
               <li><a href="${path}/user_servlet/joinview.do?userid=${sessionScope.userid}" 
               data-target="#layerpop3" data-toggle="modal">개인정보</a></li>
               <li><a href="../travel/logout.jsp" data-toggle="modal">로그아웃</a></li>               
            </ul>
         </li>      
      </ul>      
      </c:otherwise>
      </c:choose>      
   </div>
   </div>
</nav>



 <div class="modal fade" id="layerpop3" style="text-align:center;"  >
  <div class="modal-dialog">
    <div class="modal-content">           
     </div>
  </div>
</div> 
 
<c:if test="${param.message == 'error' }">
  <script>
    alert("아이디 또는 비밀번호가 일치하지 않습니다.");   
  </script>
</c:if>
<c:if test="${param.message == 'login' }">
  <script>
	alert("${sessionScope.result}님 환영합니다");  
  </script>
   <p style="text-align: right; padding-right: 2em;">${sessionScope.result}님 환영합니다.</p> 
</c:if>


 