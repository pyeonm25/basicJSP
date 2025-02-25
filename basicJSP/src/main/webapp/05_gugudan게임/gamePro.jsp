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
 
String answer = request.getParameter("answer");
if(answer == null){
	response.sendRedirect("./game.jsp");
	return;
}
boolean check = dao.isCorrectAnswer(answer); 
 
if(check){
 %>
 <script>
 
 alert('정답입니다~');
 location.href='./game.jsp'
 
 </script>
 
 <%}else{ %>
  <script>
 
 alert('오답입니다~');
 location.href='./game.jsp'
 
 </script>
 <% } %>