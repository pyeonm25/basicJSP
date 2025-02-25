<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리 페이지</title>
</head>
<body>
<%

String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String inputId = request.getParameter("inputId");
String inputPw = request.getParameter("inputPw");

boolean pass = id.equals(inputId) && pw.equals(inputPw);
%>
<h5> <%=name %></h5>
<h5> <%=id %></h5>
<h5> <%=pw %></h5>


<%
if(pass){
%>
<script> 
  msgGoUrl('./index.jsp', '로그인 성공' , <%=id%> , <%=pw%>, <%=name%> );
</script>

<%}else{ %>
<script> 
  msgGoUrl('./login.jsp', '로그인 실패' , <%=id%> , <%=pw%>, <%=name%> );
</script>

<%} %>
</body>
</html>

<script>

function msgGoUrl(url,msg, id, pw, name){
	alert(msg);
	//location.href=url+"?id="+id+"&pw="+pw+"&name="+name;
}


</script>