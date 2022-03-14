<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- link 경로(head)포함 -->
<%@include file = "../../module/link.jsp" %>

<body>

<%@include file = "../../module/nav.jsp" %>

<h1 style = "text-align:center; margin-top:5px;">속닥속닥</h1>

<ul class="nav nav-tabs w-50" style ="text-align:center; margin-left:24%;">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/Chat/chatListSnack.go" style = "font-size:20px;">과자추천</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/Chat/chatListChat.go" style = "font-size:20px;">채팅</a>
  </li>
</ul>

<%@page import = "VO.*, java.time.*" %>

<%
	MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
	LocalDate now = LocalDate.now();
%>

<div style = "width:1000px; height:700px; border:2px solid olive; margin:20px auto; padding:100px 40px;">

<form method = "post" action = "/Chat/chatListSnackWrite.go?flag=false">

	<table class = "table" style = "font-size:18px;">
		<tr>
			<th>EMAIL</th>
			<td><input name = "email" class = "form-control" value = "<%=memberVO.getEmail() %>" disabled></td>
			<th>DATE</th>
			<td><input name = "date" class = "form-control" value = "<%=now%>" disabled></td>
		</tr>
		<tr>
			<th>TITLE</th>
			<td colspan = "3"><input name = "title" class = "form-control"></td>
		</tr>
		<tr>
			<td colspan = "4">
				<textarea name = "content" class = "form-control" rows="10" cols="50"></textarea>
			</td>
		</tr>
		<tr>
			<th>PASSWORD</th>
			<td>
				<input name = "password" class = "form-control" type = "password">
			</td>
		</tr>
	</table>
	
	<table class = "table">
		<tr>
			<td>
				<input type = "button" value = "BACK" class = "btn btn-secondary" onClick = "history.back()">
			</td>
			<td align = "right">
				<input type = "submit" value = "POST" class = "btn btn-success">
				<input type = "reset" value = "RESET" class = "btn btn-warning">
			</td>
		</tr>
	</table>
	
</form>

</div>

</body>
</html>