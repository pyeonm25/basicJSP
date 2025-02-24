<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 값 전송 파일</title>
</head>
<body>

<%--

클라이언트가 서버에 값을 준다 => 요청 : request 
서버가 클라이언트에게 값을 준다 => 응답 : response

--%>

<form action="ex04_form02.jsp" method="get">
이름 : <input type="text" name="myName" id="name" /> <br>
나이 : <input type="number" name="myAge" id="age" /> <br>
<button> 전송 </button>
</form>

</body>
</html>