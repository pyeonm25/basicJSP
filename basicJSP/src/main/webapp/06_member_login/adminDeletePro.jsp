<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file='./common.jsp' %>
 
 <%
 
if(request.getParameter("idx") == null || session.getAttribute("admin") ==null ){
	%>
<script>

goBack('잘못된 접근입니다');

</script>	
	
	<%
	return;
}
 
 int idx = Integer.parseInt(request.getParameter("idx"));
 
 if(dao.isDeleteMember(idx)){
		%>
		<script>

		msgUrl('회원삭제 성공' , 'memberList.jsp');

		</script>	
			
			<%
 }else{
		%>
		<script>

		msgUrl('회원삭제 실패' , 'memberList.jsp');

		</script>	
			
			<%
 }
 
 %>