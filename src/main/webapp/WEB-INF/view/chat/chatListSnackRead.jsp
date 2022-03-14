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

<%
	String MSG = (String) request.getAttribute("MSG");

	if(MSG == null){
		MSG = "";
	}
%>

<script>
	var msg = "<%=MSG%>";
	
	if(msg !=""){
		alert(msg);
	}
</script>

<%@page import = "VO.*" %>

<%
	BoardVO boardVO = (BoardVO) session.getAttribute("boardVO");

	String currentPage = (String) request.getAttribute("currentPage");
	
	int start = (int) request.getAttribute("start");
	int count = (int) request.getAttribute("count");
%>

<div style = "width:1000px; height:700px; border:2px solid olive; margin:20px auto; padding:100px 40px;">

	<table class = "table" style = "font-size:18px;">
		<tr>
			<th>EMAIL</th>
			<td><%=boardVO.getEmail() %></td>
			<th>DATE</th>
			<td><%=boardVO.getRegdate() %></td>
		</tr>
		<tr>
			<th>TITLE</th>
			<td><%=boardVO.getTitle() %></td>
		</tr>
		<tr>
			<td colspan = "4">
				<textarea class = "form-control" rows="10" cols="50"><%=boardVO.getContent() %></textarea>
			</td>
		</tr>
		<tr>
			<td colspan = "4" align = "right">View:<%=boardVO.getView() %></td>
		</tr>
	</table>
	
	<table class = "table">
		<tr>
			<td>
				<a href="/Chat/chatListSnack.go?currentPage=<%=currentPage %>&start=<%=start %>&count=<%=count %>" class = "btn btn-light">BACK</a>
			</td>
			<td align = "right">
				<a href="#" class = "btn btn-warning">EDIT</a>
				<a href="/Chat/chatListSnackDeleteReq.go?currentPage=<%=currentPage %>&start=<%=start %>&count=<%=count %>&flag=init" class = "btn btn-danger">DELETE</a>
			</td>
		</tr>
	</table>
	
</div>

</body>
</html>