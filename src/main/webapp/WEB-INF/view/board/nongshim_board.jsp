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

<h1 style = "text-align:center;">Nongshim Snack List</h1>
<div style = "width:1000px; height:750px; border:2px solid dodgerblue; margin:20px auto; overflow:auto; padding:20px 10px;">

<!-- 01 -->
<div class="row row-cols-1 row-cols-md-3 g-3">

  <div class="col">
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal01">
      <img src="../Resources/nongshimSnacks/pickstars.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">별따먹자</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
<!-- Modal01 -->
<div class="modal fade" id="modal01" tabindex="-1" aria-labelledby="modal01Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal01Label">배배</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/pickstars.jpg">
        <p style = "font-size:20px;">농심 과자 "별따먹자"</p>
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
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal02">
      <img src="../Resources/nongshimSnacks/b29.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">비29</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal02 -->
<div class="modal fade" id="modal02" tabindex="-1" aria-labelledby="modal02Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal02Label">비29</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/b29.jpg">
        <p style = "font-size:20px;">농심 과자 "비29"</p>
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
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal03">
      <img src="../Resources/nongshimSnacks/chavi.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">차비라면</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal03 -->
<div class="modal fade" id="modal03" tabindex="-1" aria-labelledby="modal03Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal03Label">차비라면</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/chavi.jpg">
        <p style = "font-size:20px;">농심 과자 "차비라면"</p>
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
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal04">
      <img src="../Resources/nongshimSnacks/creopatra.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">크레오파트라</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal04 -->
<div class="modal fade" id="modal04" tabindex="-1" aria-labelledby="modal04Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal04Label">크레오파트라</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/creopatra.jpg">
        <p style = "font-size:20px;">농심 과자 "크레오파트라"</p>
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
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal05">
      <img src="../Resources/nongshimSnacks/donuts.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">도너츠 꼬깜</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal05 -->
<div class="modal fade" id="modal05" tabindex="-1" aria-labelledby="modal05Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal05Label">도너츠 꼬깜</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/donuts.jpg">
        <p style = "font-size:20px;">농심 과자 "도너츠 꼬깜"</p>
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
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal06">
      <img src="../Resources/nongshimSnacks/mouthfriend.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">입친구</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal06 -->
<div class="modal fade" id="modal06" tabindex="-1" aria-labelledby="modal06Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal06Label">입친구</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/mouthfriend.jpg">
        <p style = "font-size:20px;">농심 과자 "입친구"</p>
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
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal07">
      <img src="../Resources/nongshimSnacks/mouthpiece.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">마우스피스</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal07 -->
<div class="modal fade" id="modal07" tabindex="-1" aria-labelledby="modal07Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal07Label">마우스피스</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/mouthpiece.jpg">
        <p style = "font-size:20px;">농심 과자 "마우스피스"</p>
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
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal08">
      <img src="../Resources/nongshimSnacks/potatopain.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">감자빵</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal08 -->
<div class="modal fade" id="modal08" tabindex="-1" aria-labelledby="modal08Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal08Label">감자빵</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/potatopain.jpg">
        <p style = "font-size:20px;">농심 과자 "감자빵"</p>
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
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal09">
      <img src="../Resources/nongshimSnacks/potatoring.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">감자링</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal09 -->
<div class="modal fade" id="modal09" tabindex="-1" aria-labelledby="modal09Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal09Label">감자링</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/potatoring.jpg">
        <p style = "font-size:20px;">농심 과자 "감자링"</p>
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
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal10">
      <img src="../Resources/nongshimSnacks/squidkkang.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">오징어깡</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal10 -->
<div class="modal fade" id="modal10" tabindex="-1" aria-labelledby="modal10Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal10Label">오징어깡</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/squidkkang.jpg">
        <p style = "font-size:20px;">농심 과자 "오징어깡"</p>
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
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal11">
      <img src="../Resources/nongshimSnacks/squidtaste.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">자갈치 오징어맛</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal11 -->
<div class="modal fade" id="modal11" tabindex="-1" aria-labelledby="modal11Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal11Label">자갈치 오징어맛</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/squidtaste.jpg">
        <p style = "font-size:20px;">농심 과자 "자갈치 오징어맛"</p>
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
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal12">
      <img src="../Resources/nongshimSnacks/icecone.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">아이스콘</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal12 -->
<div class="modal fade" id="modal12" tabindex="-1" aria-labelledby="modal12Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal12Label">아이스콘</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/icecone.jpg">
        <p style = "font-size:20px;">농심 과자 "아이스콘"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- 13 -->
  <div class="col">
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal13">
      <img src="../Resources/nongshimSnacks/potatobiskit.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">감자구이 비스켓</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal13 -->
<div class="modal fade" id="modal13" tabindex="-1" aria-labelledby="modal13Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal13Label">감자구이 비스켓</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/potatobiskit.jpg">
        <p style = "font-size:20px;">농심 과자 "감자구이 비스켓"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- 14 -->
  <div class="col">
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal14">
      <img src="../Resources/nongshimSnacks/redbean.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">팥사리</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal14 -->
<div class="modal fade" id="modal14" tabindex="-1" aria-labelledby="modal14Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal14Label">팥사리</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/redbean.jpg">
        <p style = "font-size:20px;">농심 과자 "팥사리"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- 15 -->
  <div class="col">
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal15">
      <img src="../Resources/nongshimSnacks/whiba.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">화이바 뻥튀기</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal15 -->
<div class="modal fade" id="modal15" tabindex="-1" aria-labelledby="modal15Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal15Label">화이바 뻥튀기</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/nongshimSnacks/whiba.jpg">
        <p style = "font-size:20px;">농심 과자 "화이바 뻥튀기"</p>
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