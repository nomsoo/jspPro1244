<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	$("#btnUpdate").click(function(){
		document.form6.action="${path}/board_servlet/update.do";
		document.form6.submit();
	});
	$("#btnDelete").click(function(){
		document.form6.action="${path}/board_servlet/delete.do";
		document.form6.submit();
	});	
});
</script>
<style type="text/css">
.manu {
 text-align: center;
}

</style>
</head>
<body>
<h2 style="text-align: center;">수정/삭제</h2>
<form name="form6" method="post" 
action="${path}/board_servlet/insert.do" 
enctype="multipart/form-data">
<table class="table table-hover" border="1">
  <tr>
    <td class="manu">이름</td>
    <td><input class="form-control" name="writer" id="writer" 
       value="${dto.writer}"></td>
  </tr>
  <tr>
    <td class="manu">제목</td>
    <td><input class="form-control" name="subject" id="subject" size="60"
       value="${dto.subject}"></td>
  </tr>
  <tr>
    <td class="manu">본문</td>
    <td><textarea class="form-control col-sm-5" rows="8" cols="60" 
    name="content" id="content">${dto.content}</textarea></td>
  </tr>
  <tr>
    <td class="manu">첨부파일</td>
    <td>
      <c:if test="${dto.filesize > 0}">
        ${dto.filename} (${dto.filesize / 1024} KB )
        <input class="form-control" type="checkbox" name="fileDel">첨부파일 삭제
        <br>
      </c:if>
    <input type="file" name="file1"></td>
  </tr>
  <tr>
    <td class="manu">비밀번호</td>
    <td><input class="form-control" type="password" name="passwd" id="passwd"></td>
  </tr>
  <tr>
    <td colspan="2" align="center">
    <!-- 수정,삭제를 위한 글번호 -->
      <input class="btn btn-default" type="hidden" name="num" value="${dto.num}">
      <input class="btn btn-default" type="button" value="수정" id="btnUpdate">
      <input class="btn btn-default" type="button" value="삭제" id="btnDelete">
    </td>
  </tr>
</table>
</form>
<br><br>
</body>
</html>