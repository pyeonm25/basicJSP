<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈화면</title>
</head>
<body>
<%

String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
%>

<div align="center" >
<h1>홈화면</h1>
<% if(id == null){ %>
<a href="./join.jsp"> 회원가입</a>
<a href="./login.jsp"> 로그인</a>
<%} else{ %>
  <h5> <%=name %></h5>
<h5> <%=id %></h5>
<h5> <%=pw %></h5>
<%} %>
</div>
</body>
</html>