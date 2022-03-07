<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- link 경로(head포함) -->
<%@include file = "/WEB-INF/module/link.jsp" %>

<body>

<%
	String MSG = (String) request.getAttribute("MSG");
	// System.out.println("MSG: " + MSG);
	
	if(MSG == null){
		MSG = "";
	}
%>

<script>
	var msg = "<%=MSG %>";
	
	if(msg !=""){
		alert(msg);
	}
</script>


<div style = "margin:100px auto; text-align:center;">
	<h1 style = "font-weight:800; font-size:90px;">
	<span style ="color:dodgerblue;">S</span><span style ="color:tomato;">n</span><span style ="color:gold;">a</span><span style ="color:dodgerblue;">c</span><span style ="color:green;">k</span> <span style = "color:tomato;">War</span>
	</h1>
</div>

<div style = "width:600px; height:300px; margin:100px auto; border:2px solid black; text-align:center; border-radius:20px;">
	<h2 style = "margin-bottom:30px; margin-top:20px; font-weight:bold;">로그인</h2>

<form method = "post" action = "/LoginProcess.go">
  <div class="row mb-3 mt-3">
    <label for="userEmail" class="col-sm-3 col-form-label">Email</label>
    <div class="col-sm-8">
      <input type="email" class="form-control" id="userEmail" name = "email">
    </div>
  </div>
  <div class="row mb-3 mt-3">
    <label for="userPassword" class="col-sm-3 col-form-label">Password</label>
    <div class="col-sm-8">
      <input type="password" class="form-control" id="userPassword" name = "password">
    </div>
  </div>
  <div class = "col-sm-5 mt-3" style = "display:inline-block;">
  	<input type = "submit" value = "LOGIN" class = "btn btn-outline-success w-50">
  </div>
  <div class = "col-sm-5" style = "display:inline-block;">
  	<a href = "MemberJoin.jsp" class = "btn btn-outline-warning w-50">회원가입</a>
  </div>
  
</form>
</div>
</body>
</html>