<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- link 경로(head)포함 -->
<%@include file = "../../module/link.jsp" %>

<style>
	img{
		height:180px;
	}
</style>

<body>

<%@include file = "../../module/nav.jsp" %>

<h1 style = "text-align:center;">Lotte Snack List</h1>
<div style = "width:1000px; height:750px; border:2px solid tomato; margin:20px auto; overflow:auto; padding:20px 10px;">

<!-- 01 -->
<div class="row row-cols-1 row-cols-md-3 g-3">

  <div class="col">
    <div class="card h-100 p-2 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal01">
      <img src="../Resources/lotteSnacks/minibadook.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">미니바둑</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
<!-- Modal01 -->
<div class="modal fade" id="modal01" tabindex="-1" aria-labelledby="modal01Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal01Label">미니바둑</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/lotteSnacks/minibadook.jpg">
        <p style = "font-size:20px;">롯데 과자 "미니바둑"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- 02 -->
  <div class="col">
    <div class="card h-100 p-2 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal02">
      <img src="../Resources/lotteSnacks/outer.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">아우터</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal02 -->
<div class="modal fade" id="modal02" tabindex="-1" aria-labelledby="modal02Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal02Label">아우터</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/lotteSnacks/outer.jpg">
        <p style = "font-size:20px;">롯데 과자 "아우터"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- 03 -->
  <div class="col">
    <div class="card h-100 p-2 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal03">
      <img src="../Resources/lotteSnacks/freshcandy.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">생캔디</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal03 -->
<div class="modal fade" id="modal03" tabindex="-1" aria-labelledby="modal03Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal03Label">생캔디</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/lotteSnacks/freshcandy.jpg">
        <p style = "font-size:20px;">롯데 과자 "생캔디"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>  

<!-- 04 -->  
  <div class="col">
    <div class="card h-100 p-2 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal04">
      <img src="../Resources/lotteSnacks/tacos.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">타코스</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal04 -->
<div class="modal fade" id="modal04" tabindex="-1" aria-labelledby="modal04Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal04Label">타코스</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/lotteSnacks/tacos.jpg">
        <p style = "font-size:20px;">롯데 과자 "타코스"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- 05 --> 
  <div class="col">
    <div class="card h-100 p-2 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal05">
      <img src="../Resources/lotteSnacks/tinkle.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">팅클</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal05 -->
<div class="modal fade" id="modal05" tabindex="-1" aria-labelledby="modal05Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal05Label">팅클</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/lotteSnacks/tinkle.jpg">
        <p style = "font-size:20px;">롯데 과자 "팅클"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- 06 --> 
  <div class="col">
    <div class="card h-100 p-2 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal06">
      <img src="../Resources/lotteSnacks/dotdot.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">점점..</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal06 -->
<div class="modal fade" id="modal06" tabindex="-1" aria-labelledby="modal06Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal06Label">점점..</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/lotteSnacks/dotdot.jpg">
        <p style = "font-size:20px;">롯데 과자 "점점.."</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- 07 --> 
  <div class="col">
    <div class="card h-100 p-2 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal07">
      <img src="../Resources/lotteSnacks/essen.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">에센</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal07 -->
<div class="modal fade" id="modal07" tabindex="-1" aria-labelledby="modal07Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal07Label">에센</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/lotteSnacks/essen.jpg">
        <p style = "font-size:20px;">롯데 과자 "에센"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- 08 --> 
  <div class="col">
    <div class="card h-100 p-2 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal08">
      <img src="../Resources/lotteSnacks/choice.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">쵸이스</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal08 -->
<div class="modal fade" id="modal08" tabindex="-1" aria-labelledby="modal08Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal08Label">쵸이스</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/lotteSnacks/choice.jpg">
        <p style = "font-size:20px;">롯데 과자 "쵸이스"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- 09 -->  
  <div class="col">
    <div class="card h-100 p-2 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal09">
      <img src="../Resources/lotteSnacks/whity.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">화이티</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal09 -->
<div class="modal fade" id="modal09" tabindex="-1" aria-labelledby="modal09Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal09Label">화이티</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/lotteSnacks/whity.jpg">
        <p style = "font-size:20px;">롯데 과자 "화이티"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- 10 -->
  <div class="col">
    <div class="card h-100 p-2 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal10">
      <img src="../Resources/lotteSnacks/eclipse.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">이클립스</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal10 -->
<div class="modal fade" id="modal10" tabindex="-1" aria-labelledby="modal10Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal10Label">이클립스</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/lotteSnacks/eclipse.jpg">
        <p style = "font-size:20px;">롯데 과자 "이클립스"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- 11 -->
  <div class="col">
    <div class="card h-100 p-2 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal11">
      <img src="../Resources/lotteSnacks/leafpie.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">립파이</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal11 -->
<div class="modal fade" id="modal11" tabindex="-1" aria-labelledby="modal11Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal11Label">립파이</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/lotteSnacks/leafpie.jpg">
        <p style = "font-size:20px;">롯데 과자 "립파이"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- 12 -->
  <div class="col">
    <div class="card h-100 p-2 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal12">
      <img src="../Resources/lotteSnacks/popori.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">뽀뽀리</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal12 -->
<div class="modal fade" id="modal12" tabindex="-1" aria-labelledby="modal12Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal12Label">뽀뽀리</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/lotteSnacks/popori.png">
        <p style = "font-size:20px;">롯데 과자 "뽀뽀리"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

    
</div>	
	
</div>

<script>


</script>
</body>
</html>