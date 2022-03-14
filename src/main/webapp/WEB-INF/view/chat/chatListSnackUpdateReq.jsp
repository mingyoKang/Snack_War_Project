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

<div style = "width:1000px; height:500px; border:2px solid olive; margin:20px auto; padding:80px 40px;">

	<h1 style = "text-align:center;">비밀번호 확인</h1>

	<form method = "post" action = "/Chat/chatListSnackUpdateReq.go">
		<table class = "table w-50" style = "margin:80px auto; font-size:20px;">
			<tr>
				<th>PASSWORD</th>
				<td>
					<input type = "password" name = "password" class = "form-control">
				</td>
			</tr>
		</table>
		
		<table class = "table w-50" style = "margin:0px auto; font-size:20px;">
			<tr>
				<td>
					<input type = "submit" value = "확인" class = "btn btn-outline-success w-100">
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