<%@page import="member.MemberBean"%>
<%@page import="member.MemberServiceImpl"%>
<%@page import="member.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../../global/top.jsp"/>	
<jsp:include page="../../global/header.jsp"/>	
<jsp:include page="../../global/navi.jsp"/>
<style type="text/css">
iframe.ifrm {
	border: none;
	width: 400px;
	height: 400px;
}
</style>

	<div class="box">
	<h2>내정보검색</h2><br/>
	<%
	MemberService service = MemberServiceImpl.getInstance();
	MemberBean result = service.findBy();	
		if(result == null){
			%>
			<h2>로그인을 해주세요</h2>
			<a href="#{context }/member/service/login.jsp">로그인 하러가기</a>
			<%
		}else{
			%>
			<%=result %>
	<br/><a href="#{context }/member/main.jsp"><img src="#{img}/user.jpg" alt="user" style="width: 30px"/></a>
			<% 
		}
	
%>

	</div>
<jsp:include page = "../../global/footer.jsp"/>
<jsp:include page = "../../global/end.jsp"/>