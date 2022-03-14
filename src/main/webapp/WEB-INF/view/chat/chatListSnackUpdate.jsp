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

<%@page import = "VO.*,java.time.*" %>

<%
	BoardVO boardVO = (BoardVO) session.getAttribute("boardVO");
	LocalDate now = LocalDate.now();
%>

<div style = "width:1000px; height:700px; border:2px solid olive; margin:20px auto; padding:100px 40px;">

<form method = "post" action = "/Chat/chatListSnackUpdate.go">
	<table class = "table" style = "font-size:18px;">
		<tr>
			<th>EMAIL</th>
			<td><%=boardVO.getEmail() %></td>
			<th>DATE</th>
			<td><%=now %></td>
		</tr>
		<tr>
			<th>TITLE</th>
			<td><input name = "title" value = "<%=boardVO.getTitle()%>" class = "form-control"></td>
		</tr>
		<tr>
			<td colspan = "4">
				<textarea name = "content" class = "form-control" rows="10" cols="50"><%=boardVO.getContent() %></textarea>
			</td>
		</tr>
		<tr>
			<td colspan = "4" align = "right">View:<%=boardVO.getView() %></td>
		</tr>
	</table>
	
	<table class = "table">
		<tr>
			<td>
				<a href="/Chat/chatListSnack.go" class = "btn btn-light">CANCEL</a>
			</td>
			<td align = "right">
				<input type = "submit" value = "UPDATE" class = "btn btn-warning">
			</td>
		</tr>
	</table>
	
		<input type = "hidden" name = "start" value = <%=request.getParameter("start")%>>
		<input type = "hidden" name = "count" value = <%=request.getParameter("count")%>>
		<input type = "hidden" name = "currentPage" value = <%=request.getParameter("currentPage")%>>	
	
</form>

</div>

</body>
</html>