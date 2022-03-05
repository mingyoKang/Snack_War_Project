<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- link 경로(head포함) -->
<%@include file = "/WEB-INF/module/link.jsp" %>

<body>

<div style = "width:600px; height:650px; margin:100px auto; border:2px solid olive; border-radius:20px; padding:100px 30px;">

	<h2 style = "text-align:center; font-weight:300; color:olive; margin-bottom:20px; font-size:50px;">[Join in]</h2>
<form class="row g-3">

  <div class="col-md-6 mt-3">
    <label for="userEmail" class="form-label">Email</label>
    <input type="email" class="form-control" id="userEmail">
  </div>
  
  <div class="col-md-6">
    <label for="userPassword" class="form-label">Password</label>
    <input type="password" class="form-control" id="userPassword">
  </div>
  
  <div class="col-12">
    <label for="userAddress01" class="form-label">Address</label>
    <input type="text" class="form-control" id="userAddress01" placeholder="Road/Jibun Address">
  </div>
  
  <div class="col-12">
    <label for="userAddress02" class="form-label">Address 2</label>
    <input type="text" class="form-control" id="userAddress02" placeholder="Apartment, villa, etc">
  </div>
  
   <div class="col-md-4 mb-3">
    <label for="inputState" class="form-label">Age</label>
    <select id="inputState" class="form-select">
      <option selected>10-20</option>
      <option>20-30</option>
      <option>40-50</option>
      <option>50-60</option>
      <option>60-70</option>
    </select>
  </div>
  
  <div class="col-12" style = "text-align:center;">
    <button type="submit" class="btn btn-outline-danger w-50">Join</button>
  </div>
</form>

</div>

</body>
</html>