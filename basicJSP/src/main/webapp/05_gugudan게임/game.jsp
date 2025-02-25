<%@page import="gugudan.GugudanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   GugudanDAO dao = null;
   if(session.getAttribute("dao")==null){
		response.sendRedirect("./index.jsp");
		return;
   }else{
	   dao = (GugudanDAO)session.getAttribute("dao");
	 
   }

   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게임화면</title>
</head>
<body>

<h1> 구구단 게임 </h1>

<% if(dao.getCnt() < 5){ %>
<form action="gamePro.jsp" method="post">
  <h2> <%= dao.getQuiz() %> =  <input type="number" name="answer" required /> <%= dao.getScore() %> 점</h2>
  <button> 전송</button>
</form>
<%}else{ %>

<h2> 게임 종료! 당신의 총 점수는 <%= dao.getScore() %> 점</h2>
<a href="./index.jsp"> 처음으로 </a>

<%} %>
</body>
</html>