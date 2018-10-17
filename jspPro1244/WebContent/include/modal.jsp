<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<c:set var="path" value="${pageContext.request.contextPath}" />  
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
function view() {
	   var userid = $("#userid").val();
	   var passwd = $("#passwd").val();
	   var name = $("#name").val();
	   var gender = $("#gender").val();
	   var email = $("#email").val();
	   var phone = $("#phone").val();	   
	   if(passwd == ""){
	      alert("암호를 입력하세요");
	      $("#passwd").focus();
	      return;
	   }
	   if(name == ""){
	      alert("이름을 입력하세요");
	      $("#name").focus();
	      return;
	   }	  
	   if(gender == ""){
	      alert("성별을 입력하세요");
	      $("#gender").focus();
	      return;
	   }
	   if(email == ""){
	      alert("이메일을 입력하세요");
	      $("#email").focus();
	      return;
	   }
	   if(phone == ""){
	      alert("전화번호를 입력하세요");
	      $("#phone").focus();
	      return;
	   }
	   alert("수정이 완료되었습니다.");
	   document.form3.action="${path}/user_servlet/view.do";
	   document.form3.submit();
	}
function check(){		
	var userid1 = document.form1.userid.value;
	var passwd1 = document.form1.passwd.value;
	var name = document.form1.name.value;
	var gender = document.form1.gender.value;
	var email = document.form1.email.value;
	var phone = document.form1.phone.value;			
	if(userid1==""){
		alert("아이디를 입력하세요.");
		$("#userid").focus(); //입력 포커스 이동
		return;
	}
	if(passwd1==""){
		alert("패스워드를 입력하세요.");
		$("#passwd").focus(); 
	return;
	}
	if(name==""){
		alert("이름을 입력하세요.");
		$("#name").focus(); 
	return;
	}
	if(gender==""){
		alert("성별을 입력하세요.");
		$("#gender").focus();
	return;
	}
	if(email==""){
		alert("이메일을 입력하세요.");
		$("#email").focus(); 
	return;
	}
	if(phone==""){
		alert("전화번호를 입력하세요.");
		$("#phone").focus(); 
	return;	
	}
	document.form1.action="${path}/user_servlet/join.do";
	document.form1.submit();
	alert("회원가입을 환영합니다.");
	alert("로그인 화면으로 넘어갑니다.");
	}
function login(){
	var userid = document.form2.userid.value;
	var passwd = document.form2.passwd.value;
	if(userid==""){
		alert("아이디를 입력하세요.");
		$("#userid").focus(); //입력 포커스 이동
		return;
	}
	if(passwd==""){
		alert("패스워드를 입력하세요.");
		$("#passwd").focus(); 
	return;
	}
	document.form2.action="${path}/user_servlet/login.do";
	document.form2.submit();	
	}

</script>


<!-- 회원가입 팝업 -->
<div class="modal fade" id="layerpop2" style="text-align:center;"  >
  <div class="modal-dialog">
    <div class="modal-content">      
      <div class="modal-header" style="background-color: black;">        
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h4 class="modal-title" style="color:white;">회원가입</h4>
      </div>
      <!-- body -->
      <form name="form1" method="post">
      <div class="modal-body">
      <br>
       <input name="userid" id="userid1" type="text" autocomplete="off" class="form-control" placeholder="아이디를 입력하세요"><br>
       <input name="passwd" id="passwd1" type="password" autocomplete="off" class="form-control" placeholder="비밀번호를 입력하세요"><br>
       <input name="name" id="name" type="text" autocomplete="off" class="form-control" placeholder="이름을 입력하세요"><br>
       <input name="gender" id="gender" type="text" autocomplete="off" class="form-control" placeholder="이메일주소를 입력하세요"><br>
       <input name="email" id="email" type="text" autocomplete="off" class="form-control" placeholder="성별을 입력하세요"><br>
       <input name="phone" id="phone" type="text" autocomplete="off" class="form-control" placeholder="전화번호를 입력하세요"><br>
       <button onclick="check()" class="btn btn-default">회원가입</button>        
      </div>
      </form>
    </div>
  </div>
</div>


<!-- 로그인 팝업 -->
<form name="form2" method="post">
<div class="modal fade" id="layerpop" style="text-align:center;" >
<div class="modal-dialog">
    <div class="modal-content">      
      <div class="modal-header" style="background-color: black;">        
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h4 class="modal-title" style="color:white;">로그인</h4>
      </div>
      <!-- body -->      
      <div class="modal-body">
      <br>
       <input name="userid" id="userid" type="text" autocomplete="off" class="form-control" placeholder="username"> <br><br>
       <input  name="passwd" id="passwd" type="password" autocomplete="off"  class="form-control" placeholder="passward"> <br>
      <br>
        <button onclick="login()" class="btn btn-default">로그인</button>        
      </div>     
    </div>
  </div>
</div>
</form>


 