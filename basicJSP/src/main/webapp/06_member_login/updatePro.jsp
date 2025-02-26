<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file='./common.jsp' %>
    
     <%
 
     String id = request.getParameter("id");
     String pw = request.getParameter("pw");
     String name = request.getParameter("name");
     String gender = request.getParameter("gender");
     
 	if(!dao.isMatchPW(pw)){
 		%>
 		<script>
 		goBack('비밀번호 불일치 수정 불가');
 		</script>
 		<%
 		return;
 	}
 
 	dao.updateAMember(name, gender);
 	
 %>
 <script>
    msgGoMain('회원 정보 수정 완료');
 </script>
 