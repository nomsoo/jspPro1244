<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Travel Blog</title>
<link rel="stylesheet" href="../css/travel.css" type="text/css">
</head>
<body>
<%@ include file="../include/header.jsp" %>
<script>
alert("로그아웃되었습니다."); 
document.location.href="main.jsp"; 
</script> 
<%
session.invalidate();
%>
<%@ include file="../include/footer.jsp" %>
</body>
</html>