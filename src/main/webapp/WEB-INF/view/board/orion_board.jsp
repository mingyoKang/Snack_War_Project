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

<h1 style = "text-align:center;">Orion Snack List</h1>
<div style = "width:1000px; height:750px; border:2px solid gold; margin:20px auto; overflow:auto; padding:20px 10px;">

<!-- 01 -->
<div class="row row-cols-1 row-cols-md-3 g-3">

  <div class="col">
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal01">
      <img src="../Resources/orionSnacks/samepizza.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">이구동성</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
<!-- Modal01 -->
<div class="modal fade" id="modal01" tabindex="-1" aria-labelledby="modal01Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal01Label">이구동성</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/samepizza.jpg">
        <p style = "font-size:20px;">오리온 과자 "이구동성"</p>
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
      <img src="../Resources/orionSnacks/access.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">엑서스</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal02 -->
<div class="modal fade" id="modal02" tabindex="-1" aria-labelledby="modal02Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal02Label">엑서스</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/access.jpg">
        <p style = "font-size:20px;">오리온 과자 "엑서스"</p>
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
      <img src="../Resources/orionSnacks/potatomountain.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">감자산맥</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal03 -->
<div class="modal fade" id="modal03" tabindex="-1" aria-labelledby="modal03Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal03Label">감자산맥</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/potatomountain.jpg">
        <p style = "font-size:20px;">오리온 과자 "감자산맥"</p>
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
      <img src="../Resources/orionSnacks/potatoinpotato.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">감자 속 감자</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal04 -->
<div class="modal fade" id="modal04" tabindex="-1" aria-labelledby="modal04Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal04Label">감자 속 감자</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/potatoinpotato.jpg">
        <p style = "font-size:20px;">오리온 과자 "감자 속 감자"</p>
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
      <img src="../Resources/orionSnacks/cheesene.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">치즈네</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal05 -->
<div class="modal fade" id="modal05" tabindex="-1" aria-labelledby="modal05Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal05Label">치즈네</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/cheesene.jpg">
        <p style = "font-size:20px;">오리온 과자 "치즈네"</p>
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
      <img src="../Resources/orionSnacks/newpop.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">뉴팝</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal06 -->
<div class="modal fade" id="modal06" tabindex="-1" aria-labelledby="modal06Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal06Label">뉴팝</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/newpop.jpg">
        <p style = "font-size:20px;">오리온 과자 "뉴팝"</p>
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
      <img src="../Resources/orionSnacks/eggmong.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">에그몽</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal07 -->
<div class="modal fade" id="modal07" tabindex="-1" aria-labelledby="modal07Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal07Label">에그몽</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/eggmong.png">
        <p style = "font-size:20px;">오리온 과자 "에그몽"</p>
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
      <img src="../Resources/orionSnacks/pole.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">미니폴</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal08 -->
<div class="modal fade" id="modal08" tabindex="-1" aria-labelledby="modal08Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal08Label">미니폴</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/pole.png">
        <p style = "font-size:20px;">오리온 과자 "미니폴"</p>
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
      <img src="../Resources/orionSnacks/toonies.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">투니스</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal09 -->
<div class="modal fade" id="modal09" tabindex="-1" aria-labelledby="modal09Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal09Label">투니스</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/toonies.jpg">
        <p style = "font-size:20px;">오리온 과자 "투니스"</p>
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
      <img src="../Resources/orionSnacks/chesterpaws.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">체스터쿵</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal10 -->
<div class="modal fade" id="modal10" tabindex="-1" aria-labelledby="modal10Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal10Label">체스터쿵</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/chesterpaws.jpg">
        <p style = "font-size:20px;">오리온 과자 "체스터쿵"</p>
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
      <img src="../Resources/orionSnacks/hureki.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">초코 후레이키</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal11 -->
<div class="modal fade" id="modal11" tabindex="-1" aria-labelledby="modal11Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal11Label">초코 후레이키</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/hureki.jpg">
        <p style = "font-size:20px;">오리온 과자 "초코 후레이키"</p>
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
      <img src="../Resources/orionSnacks/inshim.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">인심</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal12 -->
<div class="modal fade" id="modal12" tabindex="-1" aria-labelledby="modal12Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal12Label">인심</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/inshim.jpg">
        <p style = "font-size:20px;">오리온 과자 "인심"</p>
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
      <img src="../Resources/orionSnacks/browning.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">브라우닝</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal13 -->
<div class="modal fade" id="modal13" tabindex="-1" aria-labelledby="modal13Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal13Label">브라우닝</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/browning.jpg">
        <p style = "font-size:20px;">오리온 과자 "브라우닝"</p>
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
      <img src="../Resources/orionSnacks/tragatraga.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">트라가트라가</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal14 -->
<div class="modal fade" id="modal14" tabindex="-1" aria-labelledby="modal14Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal14Label">트라가트라가</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/tragatraga.png">
        <p style = "font-size:20px;">오리온 과자 "트라가트라가"</p>
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
      <img src="../Resources/orionSnacks/alichip.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">엘리칩</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal15 -->
<div class="modal fade" id="modal15" tabindex="-1" aria-labelledby="modal15Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal15Label">엘리칩</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/orionSnacks/alichip.jpg">
        <p style = "font-size:20px;">오리온 과자 "엘리칩"</p>
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