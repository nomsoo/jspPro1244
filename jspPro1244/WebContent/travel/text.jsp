<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function checkId(){
    var userid = $('#userid').val();
    $.ajax({
        url:'idcheck.do',
        type:'post',
        data:{userid:userid},
        success:function(data){
            if($.trim(data)==0){
                $('#chkMsg').html("<p style="COLOR: blue">사용가능</p>");                
            }else{
                $('#chkMsg').html("<p style="COLOR: red">사용불가</p>");
            }
        },
        error:function(){
                alert("에러입니다");
        }
    });
};
</script>
</head>
<body>
<input type="text" id = "id" oninput = "checkId()" />
<span id = "chkMsg"></span> 
</body>
</html>