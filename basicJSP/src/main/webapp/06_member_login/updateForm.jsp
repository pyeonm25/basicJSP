<%@page import="member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%-- 회원 수정은 이름하고 성별만 수정가능 , 비밀번호 일치 할때만 수정가능  --%>
    
    <%@ include file="./header.jsp" %>  
    
    <%
    
    if(dao.getLog() == -1){
    	response.sendRedirect("loginForm.jsp");
    	return;
    }
    Member m = dao.getLoginMember();
    
    %>
    
	<h1>회원 수정 페이지</h1>
	<form action="updatePro.jsp" method="post">
	<table border="1">
		<tr><td>회원가입 ID</td><td><input type="text" name="id" value="<%=m.getId() %>" readonly></td></tr>
		<tr><td>회원가입 PW</td><td><input type="text" name="pw"  required ></td></tr>
		<tr><td>회원가입 name</td><td><input type="text" name="name" value="<%=m.getName() %>" required ></td></tr>
		<tr><td>회원가입 성별</td><td><input type="radio" name="gender" value="남성" <%if(m.isGender()){ %> checked <%} %>>남성&nbsp;
                     <input type="radio" name="gender" value="여성" <%if(!m.isGender()){ %> checked <%} %>>여성&nbsp;</td></tr>
		<tr><td colspan = "2" align="center" id="submit"><input type="submit" value="회원정보수정"></td></tr>
	</table>
	</form>

<%@ include file="./footer.jsp" %>  