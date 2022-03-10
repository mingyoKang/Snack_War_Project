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

<script>

	function postReply(){
		
		$.ajax({
			url:"/Chat/usPost.go",
			type:"GET",
			datatype:"html",
			data:{"comment":$("#comment").val()},
			success:function(result){
				// alert(result);
				getReplyList();
			},
			error:function(){
				alert("There is a problem!!");
			}
		});
		
	}
	
	function getReplyList(){
		
		$.ajax({
			url:"/Chat/usList.go",
			type:"GET",
			datatype:"html",
			success:function(result){
				$("#replyDiv").empty();
				$("#replyDiv").append(result);
			},
			error:function(){
				alert("There is a problem!!");
			}
		});
		
	}
	
	getReplyList();

</script>

<div style = "width:1000px; height:700px; border:2px solid olive; margin:20px auto; padding:20px 50px;">
	
	<h2 style = "text-align:center;">=오늘의 한마디=</h2>
	<div style = "text-align:center; border:2px solid white; font-size:20px; padding-top:10px; border-radius:20px; color:gray; margin:20px;">
		<p style = "font-size:22px;">나는 역경 속에서도 미소지을 수 있는 사람을 사랑한다.</p>
		<p>I love those who can smile in trouble.</p>
		<p>-레오나르도 다빈치-</p>
	</div>
	
	<div class = "row" style = "height:110px; padding:10px; margin:10px;">
		<div class = "col-10">
			<textarea id = "comment" rows = "3" class = "form-control"></textarea>
		</div>
		<div class = "col-2">
			<a onclick="postReply()" class = "btn btn-outline-warning h-100 w-100 p-3" style = "line-height:50px;">POST</a>
		</div>
	</div>
	
	<div id ="replyDiv" style = "border:1px solid black; height:300px; padding:20px; overflow:auto;">

												
	</div>

</div>

</body>
</html>