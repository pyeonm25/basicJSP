<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='./common.jsp' %>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	boolean pass = dao.isValidLogin(id, pw);
	String msg ="";
	if(pass){
		if(id.equals("admin")){
			session.setAttribute("admin", "admin");
			msg="관리자님 환영합니다";	
		}else{
			msg="로그인 성공";
		}
	}else{ msg="로그인 실패";}
	
	
%>
	
<script>
  msgGoMain('<%=msg %>');
</script>
	