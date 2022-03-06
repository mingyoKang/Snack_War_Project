<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- link 경로(head포함) -->
<%@include file = "../module/link.jsp" %>

<style>

	img{
		width:100px;
		height:100px;
	}
	
</style>

<body>

<%@include file = "../module/nav.jsp" %>

<div style = "width:1000px; height:830px;margin:15px auto; padding:20px 10px;" >

<h1 style = "font-weight:bold; font-size:50px; text-align:center;">Choose Your Memory</h1>
<div class="row row-cols-1 row-cols-md-2 g-4 mt-2">
  <div class="col">
    <div class="card h-100 p-4 border-danger bg-transparent">
      <img src="Resources/images/lotte.svg" class="card-img-top" alt="...">
      <div class="card-body">
        <a href = "/Board/lotteList.go" class = "btn btn-outline-danger w-100">Lotte</a>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100 p-4 border-info bg-transparent">
      <img src="Resources/images/nongshim.svg" class="card-img-top" alt="...">
      <div class="card-body">
        <a href = "/Board/nongshimList.go" class = "btn btn-outline-info w-100">NongShim</a>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100 p-4 border-warning bg-transparent">
      <img src="Resources/images/orion.svg" class="card-img-top" alt="...">
      <div class="card-body">
        <a href = "/Board/orionList.go" class = "btn btn-outline-warning w-100">Orion</a>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100 p-4 border-success bg-transparent">
      <img src="Resources/images/haitai.svg" class="card-img-top" alt="...">
      <div class="card-body">
        <a href = "/Board/haitaiList.go" class = "btn btn-outline-success w-100">Haitai</a>
      </div>
    </div>
  </div>
    <div class="col">
    <div class="card h-100 p-4 border-dark bg-transparent">
      <img src="Resources/images/conversation.svg" class="card-img-top" alt="...">
      <div class="card-body">
      	<a href = "/Chat/chatListSnack.go" class = "btn btn-dark w-100">Let's Chat</a>
      </div>
    </div>
  </div>
    <div class="col">
    <div class="card h-100 p-4 border-primary bg-transparent">
      <img src="Resources/images/screwdriver-solid.svg" class="card-img-top" alt="...">
      <div class="card-body">
        <a href = "/Complaint/opinion.go?flag=init" class = "btn btn-primary w-100">Let Us Know</a>
      </div>
    </div>
  </div>
</div>

</div>

</body>
</html>