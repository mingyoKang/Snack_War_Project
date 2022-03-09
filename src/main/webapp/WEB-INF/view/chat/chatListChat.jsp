<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- link 경로(head)포함 -->
<%@include file = "../../module/link.jsp" %>

<body>

<%@include file = "../../module/nav.jsp" %>

<h1 style = "text-align:center; margin-top:5px;">속닥속닥</h1>

<ul class="nav nav-tabs w-50" style ="text-align:center; margin-left:24%;">
  <li class="nav-item">
    <a class="nav-link" href="/Chat/chatListSnack.go" style = "font-size:20px;">과자추천</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active"aria-current="page" href="/Chat/chatListChat.go" style = "font-size:20px;">채팅</a>
  </li>
</ul>

<div style = "width:1000px; height:700px; border:2px solid olive; margin:20px auto; padding:150px 50px;">

	<div style = "height:400px; width:800px; margin:0px auto; padding:50px 80px;">
		<div style = "float:left; width:300px; height:300px;">
			<a href="#" class = "btn btn-outline-primary h-100 w-100 border-4" style = "font-size:30px; line-height:250px;">About SNACK</a>
		</div>
		<div style = "float:right; width:300px; height:300px;">
			<a href="#" class = "btn btn-outline-danger h-100 w-100 border-4" style = "font-size:30px; line-height:250px;">About US</a>
		</div>
	</div>

</div>

<script>
	
</script>

</body>
</html>