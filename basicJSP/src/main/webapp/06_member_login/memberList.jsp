<%@page import="member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./header.jsp" %>  
<h3> 회원 목록 </h3>

<table>

<tr>
	<th>아이디</th>
	<th>패스워드</th>
	<th>이름</th>
	<th>성별</th>
	<th>삭제</th>
</tr>

<%= dao.getListAsTableData() %>

</table>

<%@ include file="./footer.jsp" %>  