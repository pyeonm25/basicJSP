<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>

<%-- 
process page 는 나중에 서블렛 자바 클래스 부분 

자바랑 자바스크립트만 쓴다 : 화면에 보이는 부분이 아니라 
사용자의 요청을 처리하는 부분 
그리고 다른 페이지로 연결해준다
 --%>

 <%
 
   String id = request.getParameter("id");
 
 	if(dao.isExistId(id)){
 		%>
 		<script>
 		goBack('이미 존재하는 id 입니다');
 		</script>
 		
 		<%
 		return;
 	}
 
   String pw = request.getParameter("pw");
   String name = request.getParameter("name");
   String gender = request.getParameter("gender");
 
   dao.insertAMember(id, pw, name, gender);
 %>
 <script>
    msgGoMain('회원 가입을 축하합니다');
 </script>
 
 