<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Travel Blog</title>
<c:set var="path" value="${pageContext.request.contextPath}" /> 
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script> 
<link rel="stylesheet" href="../css/travel.css" type="text/css">
<script type="text/javascript">
function update() {
   var userid = $("#userid").val();
   var passwd2 = $("#passwd").val();
   var name = $("#name").val();
   var gender = $("#gender").val();
   var email = $("#email").val();
   var phone = $("#phone").val();
   
   alert("수정이 완료되었습니다."); 
   document.form3.action="${path}/user_servlet/update.do";
   document.form3.submit();
   
}
</script>
</head>
<body>    
      <div class="modal-header" style="background-color: black;">        
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h4 class="modal-title" style="color:white;">회원정보/수정</h4>
      </div>
      <!-- body -->
      <form name="form3" method="post">
      <div class="modal-body"><br>   
       <input name="userid" id="userid" readonly="readonly" type="text" value="${dto.userid}" class="form-control" placeholder="아이디를 입력하세요"><br>
       <input name="passwd" id="passwd2" type="password" value="${dto.passwd}" autocomplete="off" class="form-control" placeholder="비밀번호를 입력하세요"><br>
       <input name="name" id="name" type="text" value="${dto.name}" autocomplete="off" class="form-control" placeholder="이름을 입력하세요"><br>
       <input name="gender" id="gender" type="text" value="${dto.gender}" autocomplete="off" class="form-control" placeholder="이메일주소를 입력하세요"><br>
       <input name="email" id="email" type="text" value="${dto.email}" autocomplete="off" class="form-control" placeholder="성별을 입력하세요"><br>
       <input name="phone" id="phone" type="text" value="${dto.phone}" autocomplete="off" class="form-control" placeholder="전화번호를 입력하세요"><br>
       <button onclick="update()" class="btn btn-default">수정</button>      
         </div>
      </form>
</body>
</html>