<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Snack_War</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body>

<div style = "margin:100px auto; text-align:center;">
	<h1 style = "font-family:cursive; font-weight:800; font-size:90px;">
	<span style ="color:dodgerblue;">S</span><span style ="color:tomato;">n</span><span style ="color:gold;">a</span><span style ="color:dodgerblue;">c</span><span style ="color:green;">k</span> <span style = "color:tomato;">War</span>
	</h1>
</div>

<div style = "width:600px; height:300px; margin:100px auto; border:1px solid black; text-align:center; border-radius:20px;">
	<h2 style = "margin-bottom:40px; margin-top:10px; font-family:cursive; font-weight:bold;">LOGIN</h2>
<form>
  <div class="row mb-3 mt-3">
    <label for="userEmail" class="col-sm-3 col-form-label">Email</label>
    <div class="col-sm-8">
      <input type="email" class="form-control" id="userEmail">
    </div>
  </div>
  <div class="row mb-3 mt-3">
    <label for="userPassword" class="col-sm-3 col-form-label">Password</label>
    <div class="col-sm-8">
      <input type="password" class="form-control" id="userPassword">
    </div>
  </div>
  <div class = "col-sm-5 mt-3" style = "display:inline-block;">
  	<input type = "submit" value = "login" class = "btn btn-outline-success w-50">
  </div>
  <div class = "col-sm-5" style = "display:inline-block;">
  	<a href = "MemberJoin.jsp" class = "btn btn-outline-warning w-50">Newbie</a>
  </div>
  
</form>
</div>
</body>
</html>