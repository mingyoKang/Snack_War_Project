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

<!-- Comment 기능 추가하기 -->
<script>

	function postReply(){
		
		$.ajax({
			url:"/Chat/snackPost.go",
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
			url:"/Chat/snackList.go",
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
	
	<h2 style = "text-align:center;">==오늘의 과자==</h2>
	<div style ="text-align:center; margin:20px;">
		<img src = "/Resources/images/honeybutterchip.jpg" width=180px height=200px>
	</div>
		
	<div class = "row" style = "height:110px; padding:10px; margin:10px;">
		<div class = "col-10">
			<textarea id = "comment" rows = "3" class = "form-control"></textarea>
		</div>
		<div class = "col-2">
			<a onclick="postReply()" class = "btn btn-outline-info h-100 w-100 p-3" style = "line-height:50px;">POST</a>
		</div>
	</div>
	
	<div id = "replyDiv" style = "height:250px; border:1px solid black; overflow:auto; padding:10px;">
					
		
	</div>
</div>


</body>
</html>