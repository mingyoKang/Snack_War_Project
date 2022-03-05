<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- link 경로(head)포함 -->
<%@include file = "../../module/link.jsp" %>

<body>

<h1 style = "text-align:center; margin-top:10px;">Lotte Snack List</h1>
<div style = "width:1000px; height:830px; border:1px solid tomato; margin:20px auto; overflow:auto; padding:20px 10px;">
	
<div class="row row-cols-1 row-cols-md-3 g-3">
  <div id = "one" class="col">
    <div class="card h-100 p-2 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">
      <img src="../Resources/lotteSnacks/bebe.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">배배</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">배배</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/lotteSnacks/bebe.png">
        <p>롯데 제과 과자 "배배"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
  
  <div class="col">
    <div class="card h-100 p-2">
      <img src="../Resources/lotteSnacks/bebe.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a short card.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100 p-2">
      <img src="../Resources/lotteSnacks/bebe.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text"></p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100 p-2">
      <img src="../Resources/lotteSnacks/bebe.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100 p-2">
      <img src="../Resources/lotteSnacks/bebe.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100 p-2">
      <img src="../Resources/lotteSnacks/bebe.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100 p-2">
      <img src="../Resources/lotteSnacks/bebe.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100 p-2">
      <img src="../Resources/lotteSnacks/bebe.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100 p-2">
      <img src="../Resources/lotteSnacks/bebe.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>    
</div>	
	
</div>

<script>


</script>
</body>
</html>