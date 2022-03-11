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

<h1 style = "text-align:center;">Haitai Snack List</h1>
<div style = "width:1000px; height:750px; border:2px solid green; margin:20px auto; overflow:auto; padding:20px 10px;">

<!-- 01 -->
<div class="row row-cols-1 row-cols-md-3 g-3">

  <div class="col">
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal01">
      <img src="../Resources/haitaiSnacks/uhsingsing.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">어싱싱해</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
<!-- Modal01 -->
<div class="modal fade" id="modal01" tabindex="-1" aria-labelledby="modal01Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal01Label">어싱싱해</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/uhsingsing.jpg">
        <p style = "font-size:20px;">해태 과자 "어싱싱해"</p>
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
      <img src="../Resources/haitaiSnacks/goups.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">굽스</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal02 -->
<div class="modal fade" id="modal02" tabindex="-1" aria-labelledby="modal02Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal02Label">굽스</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/goups.jpg">
        <p style = "font-size:20px;">해태 과자 "굽스"</p>
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
      <img src="../Resources/haitaiSnacks/sandy.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">샌디</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal03 -->
<div class="modal fade" id="modal03" tabindex="-1" aria-labelledby="modal03Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal03Label">샌디</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/sandy.jpg">
        <p style = "font-size:20px;">해태 과자 "샌디"</p>
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
      <img src="../Resources/haitaiSnacks/soboro.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">바삭바삭소보로</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal04 -->
<div class="modal fade" id="modal04" tabindex="-1" aria-labelledby="modal04Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal04Label">바삭바삭소보로</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/soboro.jpg">
        <p style = "font-size:20px;">해태 과자 "바삭바삭소보로"</p>
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
      <img src="../Resources/haitaiSnacks/chipschips.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">ChipsChips</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal05 -->
<div class="modal fade" id="modal05" tabindex="-1" aria-labelledby="modal05Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal05Label">ChipsChips</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/chipschips.jpg">
        <p style = "font-size:20px;">해태 과자 "ChipsChips"</p>
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
      <img src="../Resources/haitaiSnacks/hamons.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">하몬스</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal06 -->
<div class="modal fade" id="modal06" tabindex="-1" aria-labelledby="modal06Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal06Label">하몬스</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/hamons.jpg">
        <p style = "font-size:20px;">해태 과자 "하몬스"</p>
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
      <img src="../Resources/haitaiSnacks/twocops.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">투캅스</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal07 -->
<div class="modal fade" id="modal07" tabindex="-1" aria-labelledby="modal07Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal07Label">투캅스</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/twocops.png">
        <p style = "font-size:20px;">해태 과자 "투캅스"</p>
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
      <img src="../Resources/haitaiSnacks/pettitmong.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">쁘띠몽</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal08 -->
<div class="modal fade" id="modal08" tabindex="-1" aria-labelledby="modal08Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal08Label">쁘띠몽</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/pettitmong.jpg">
        <p style = "font-size:20px;">해태 과자 "쁘띠몽"</p>
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
      <img src="../Resources/haitaiSnacks/atti.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">아띠</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal09 -->
<div class="modal fade" id="modal09" tabindex="-1" aria-labelledby="modal09Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal09Label">아띠</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/atti.jpg">
        <p style = "font-size:20px;">해태 과자 "아띠"</p>
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
      <img src="../Resources/haitaiSnacks/colormagic.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">칼라매직</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal10 -->
<div class="modal fade" id="modal10" tabindex="-1" aria-labelledby="modal10Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal10Label">칼라매직</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/colormagic.jpg">
        <p style = "font-size:20px;">해태 과자 "칼라매직"</p>
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
      <img src="../Resources/haitaiSnacks/fren.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">프랜</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal11 -->
<div class="modal fade" id="modal11" tabindex="-1" aria-labelledby="modal11Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal11Label">프랜</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/fren.jpg">
        <p style = "font-size:20px;">해태 과자 "프랜"</p>
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
      <img src="../Resources/haitaiSnacks/modnie.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">모드니에</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal12 -->
<div class="modal fade" id="modal12" tabindex="-1" aria-labelledby="modal12Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal12Label">모드니에</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/modnie.jpg">
        <p style = "font-size:20px;">해태 과자 "모드니에"</p>
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
      <img src="../Resources/haitaiSnacks/squidchip.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">오징어칩</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal13 -->
<div class="modal fade" id="modal13" tabindex="-1" aria-labelledby="modal13Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal13Label">오징어칩</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/squidchip.jpg">
        <p style = "font-size:20px;">해태 과자 "오징어칩"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger">LIKE</button>
        <button type="button" class="btn btn-primary">DISLIKE</button>
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>s
      </div>
    </div>
  </div>
</div>

<!-- 14 -->
  <div class="col">
    <div class="card h-100 p-3 btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal14">
      <img src="../Resources/haitaiSnacks/uhsingsing.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">어싱싱해</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal14 -->
<div class="modal fade" id="modal14" tabindex="-1" aria-labelledby="modal14Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal14Label">어싱싱해</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/uhsingsing.jpg">
        <p style = "font-size:20px;">해태 과자 "어싱싱해"</p>
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
      <img src="../Resources/haitaiSnacks/uhsingsing.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">어싱싱해</h5>
        <p class="card-text">생산중단 년도</p>
      </div>
    </div>
  </div>
  
  <!-- Modal15 -->
<div class="modal fade" id="modal15" tabindex="-1" aria-labelledby="modal15Label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal15Label">어싱싱해</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style = "text-align:center;">
        <img src = "../Resources/haitaiSnacks/uhsingsing.jpg">
        <p style = "font-size:20px;">해태 과자 "어싱싱해"</p>
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