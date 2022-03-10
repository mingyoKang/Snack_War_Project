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

<div style = "width:1000px; height:700px; border:2px solid olive; margin:20px auto; padding:20px 50px;">
	
	<h2 style = "text-align:center;">=오늘의 한마디=</h2>
	<div style = "text-align:center; border:2px solid white; font-size:20px; padding-top:10px; border-radius:20px; color:gray; margin:20px;">
		<p style = "font-size:22px;">나는 역경 속에서도 미소지을 수 있는 사람을 사랑한다.</p>
		<p>I love those who can smile in trouble.</p>
		<p>-레오나르도 다빈치-</p>
	</div>
	
	<div style = "border:1px solid black; height:400px; padding:20px; overflow:auto;">

		<div class = "row" style = "border:2px solid dodgerblue; padding:5px; width:700px; margin:5px; border-radius:20px;">
			<div class = "col-2 me-2" style = "padding:7px 20px;">
				<img src = "/Resources/images/person-circle.svg" width=50px height=50px>
			</div>
			<div class = "col-9">
				<small style = "color:orange;">Example@gmail.com</small>
				<p>Blah Blah Blah</p>
			</div>
		</div>

		<div class = "row" style = "border:2px solid dodgerblue; padding:5px; width:700px; margin:5px; border-radius:20px;">
			<div class = "col-2 me-2" style = "padding:7px 20px;">
				<img src = "/Resources/images/person-circle.svg" width=50px height=50px>
			</div>
			<div class = "col-9">
				<small style = "color:orange;">Example@gmail.com</small>
				<p>Blah Blah Blah</p>
			</div>
		</div>
		
		<div class = "row" style = "border:2px solid dodgerblue; padding:5px; width:700px; margin:5px; border-radius:20px;">
			<div class = "col-2 me-2" style = "padding:7px 20px;">
				<img src = "/Resources/images/person-circle.svg" width=50px height=50px>
			</div>
			<div class = "col-9">
				<small style = "color:orange;">Example@gmail.com</small>
				<p>Blah Blah Blah</p>
			</div>
		</div>
		
		<div class = "row" style = "border:2px solid dodgerblue; padding:5px; width:700px; margin:5px; border-radius:20px;">
			<div class = "col-2 me-2" style = "padding:7px 20px;">
				<img src = "/Resources/images/person-circle.svg" width=50px height=50px>
			</div>
			<div class = "col-9">
				<small style = "color:orange;">Example@gmail.com</small>
				<p>Blah Blah Blah</p>
			</div>
		</div>
		
		<div class = "row" style = "border:2px solid dodgerblue; padding:5px; width:700px; margin:5px; border-radius:20px;">
			<div class = "col-2 me-2" style = "padding:7px 20px;">
				<img src = "/Resources/images/person-circle.svg" width=50px height=50px>
			</div>
			<div class = "col-9">
				<small style = "color:orange;">Example@gmail.com</small>
				<p>Blah Blah Blah</p>
			</div>
		</div>
		
		<div class = "row" style = "border:2px solid dodgerblue; padding:5px; width:700px; margin:5px; border-radius:20px;">
			<div class = "col-2 me-2" style = "padding:7px 20px;">
				<img src = "/Resources/images/person-circle.svg" width=50px height=50px>
			</div>
			<div class = "col-9">
				<small style = "color:orange;">Example@gmail.com</small>
				<p>Blah Blah Blah</p>
			</div>
		</div>
		
		<div class = "row" style = "border:2px solid dodgerblue; padding:5px; width:700px; margin:5px; border-radius:20px;">
			<div class = "col-2 me-2" style = "padding:7px 20px;">
				<img src = "/Resources/images/person-circle.svg" width=50px height=50px>
			</div>
			<div class = "col-9">
				<small style = "color:orange;">Example@gmail.com</small>
				<p>Blah Blah Blah</p>
			</div>
		</div>
		
											
	</div>

</div>

</body>
</html>