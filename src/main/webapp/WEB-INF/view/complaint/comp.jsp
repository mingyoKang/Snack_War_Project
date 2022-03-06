<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- link 경로(head)포함 -->
<%@include file = "../../module/link.jsp" %>

<body>

<%@include file = "../../module/nav.jsp" %>

<div style = "width:1000px; height:400px; border:2px solid olive; margin:180px auto; padding:20px 10px;">
	<h1 style = "text-align:center; font-weight:bold;">의견을 남겨주세요!</h1>
	<form method = "post" action = "/Complaint/opinion.go">
		<div class="mb-3">
		  <label for="complaintTextarea" class="form-label">Opinion</label>
		  <textarea class="form-control" id="complaintTextarea" name = "opinion" rows="5"></textarea>
		</div>
		<div style ="text-align:right;">
			<input type = "submit" value = "SEND" class = "btn btn-success">
			<input type = "reset" value = "RESET" class = "btn btn-warning">
			<a href = "/Home.go" class = "btn btn-danger">CANCEL</a>
		</div>
	</form>
</div>

</body>
</html>