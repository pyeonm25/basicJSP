<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file='./common.jsp' %>
    
 <%
 
 String pw = request.getParameter("pw");
 
 if(dao.isDeleteMember(pw)){
	 %>
	 <script>
	   msgGoMain('회원 탈퇴 성공');
	 </script>
	 <%
 }else{
	 %>
	
	  <script>
	   goBack('비밀번호 불일치');
	 </script>
 <%}%>