<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- link 경로(head)포함 -->
<%@include file = "../../module/link.jsp" %>
    
<body>

<%@include file = "../../module/nav.jsp" %>

<%@page import = "VO.*" %>

<%
	MemberVO memberVO = (MemberVO) request.getAttribute("memberVO");
%>

<div style = "width:1000px; height:500px; border:2px solid olive; margin:170px auto; padding:20px 10px;">
	<h1 style = "text-align:center;">내 계정 정보</h1>
	
	<div style = "width:800px; height:300px; margin-left:100px; margin-top:60px; font-size:22px;">
		<p style = "margin-top:20px;">EMAIL: <span style = "font-weight:bold; color:tomato;"><%=memberVO.getEmail() %></span></p>
		<p>PASSWORD: <span style = "color:dodgerblue;"><%=memberVO.getPassword() %></span></p>
		<p>ADDRESS01: <span style = "color:green;"><%=memberVO.getAddress01() %></span></p>
		<p>ADDRESS02: <span style = "color:indigo;"><%=memberVO.getAddress02() %></span></p>
		<p>AGE: <span style = "color:orange;"><%=memberVO.getAge() %></span></p>
	</div>
</div>


</body>
</html>