<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script>
$(function(){
	$("#btnSave").click(function(){
		document.form9.submit();
	});
});

</script>
</head>
<body>
<h2 style="text-align: center;">글쓰기</h2>
<form name="form9" method="post" 
action="${path}/board_servlet/insert.do" 
enctype="multipart/form-data">
<table class="table table-hover" border="1">
  <tr>
    <td>이름</td>
    <td><input class="form-control" name="writer" id="writer"></td>
  </tr>
  <tr>
    <td>제목</td>
    <td><input class="form-control" name="subject" id="subject" size="60"></td>
  </tr>
  <tr>
    <td>본문</td>
    <td><textarea class="form-control col-sm-5" rows="5" cols="60" 
    name="content" id="content"></textarea></td>
  </tr>
  <tr>
    <td>첨부파일</td>
    <td><input class="btn btn-default" type="file" name="file1"></td>
  </tr>
  <tr>
    <td>비밀번호</td>
    <td><input class="form-control"  type="password" name="passwd" id="passwd"></td>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <input class="btn btn-default" type="button" value="확인" id="btnSave">
    </td>
  </tr>
</table>
</form>
<br><br>
</body>
</html>