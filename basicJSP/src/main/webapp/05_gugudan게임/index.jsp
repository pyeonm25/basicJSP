<%@page import="gugudan.GugudanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   GugudanDAO dao = null;
   if(session.getAttribute("dao")==null){
    dao = new GugudanDAO();
    session.setAttribute("dao", dao);
   }else{
	   dao = (GugudanDAO)session.getAttribute("dao");
	   if(dao.getCnt() == 5){
		   session.invalidate();
			response.sendRedirect("./index.jsp");
			return;
	   }
   }

   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게임 홈화면 </title>
</head>
<body>

<h1> 구구단 게임</h1>

<h2> 5문제를 모두 맞추면 게임 종료! </h2>
<a href="./game.jsp"> 게임 시작</a>
</body>
</html>