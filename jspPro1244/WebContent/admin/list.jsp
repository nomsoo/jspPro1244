<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<style type="text/css">
th {
 text-align: center;
}
h2 {
 text-align: center;
}
input {
 text-align: center;
}
</style>
</head>
<body>
<h2>회원목록</h2>
<table style="width: 90%; margin:0 auto;" class="table table-hover" style="text-align: center;">
<tr>
	<th>아이디</th>
	<th>비밀번호</th>
	<th>이름</th>
	<th>성별</th>
	<th>이메일</th>
	<th>연락처</th>
	<th>삭제</th>
</tr>
<c:forEach var="dto" items="${list}">
<script>
function userDelete(){
	if(confirm("삭제하시겠습니까?")){
		location.href="${path}/user_servlet/delete.do?userid=${dto.userid}";
	}
}
</script>
<tr>
	<td><input readonly="readonly" class="form-control" name= "userid" id="userid" value="${dto.userid}"></td>
	<td><input readonly="readonly" class="form-control" name= "passwd" id="passwd" value="${dto.passwd}"></td>
	<td><input readonly="readonly" class="form-control" name= "name" id="name" value="${dto.name}"></td>
	<td><input readonly="readonly" class="form-control" name= "gender" id="gender" value="${dto.gender}"></td>
	<td><input readonly="readonly" class="form-control" name= "email" id="email" value="${dto.email}"></td>
	<td><input readonly="readonly" class="form-control" name= "phone" id="phone" value="${dto.phone}"></td>
	<td><a href="${path}/user_servlet/delete.do?userid=${dto.userid}" onclick="return confirm(${dto.userid}+'님을 삭제처리 하시겠습니까?');">
<input readonly="readonly" class="form-control" type="button" value="삭제"></a></td>
</tr>
</c:forEach>
</table>
</body>
</html>