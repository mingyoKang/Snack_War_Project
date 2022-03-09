<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- link 경로(head)포함 -->
<%@include file = "../../module/link.jsp" %>

<body>

<%@include file = "../../module/nav.jsp" %>

<%
	int totalCount = 0; // 전체 게시물 수
	int numPerPage = 10; // 페이지당 보여줄 게시물 수
	
	int pagePerBlock = 10; // pagination에서 한 블럭당 표시될 페이지 수
	
	int totalPage = 0; // 전체 페이지 개수
	int totalBlock = 0; // pagination에서 모든 블럭 수
	
	int currentPage = 1; // 현재 있는 페이지
	int currentBlock = 1; // 현재 있는 블럭
	
	int start = 0; // 읽을 게시물 시작위치
	int count = 10; // 읽어들일 행 개수
	
	// 현재 있는 페이지 받기(chatListSnackController에서 받음)
	if(request.getParameter("currentPage") !=null){
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
	}
	
	// 페이지 처리하기
	totalCount = (Integer) request.getAttribute("totalCount");
	totalPage = (int) Math.ceil((double) totalCount/numPerPage);
	
	// 블럭 처리하기
	totalBlock = (int) Math.ceil((double) totalPage/pagePerBlock);
	currentBlock = (int) Math.ceil((double) currentPage/pagePerBlock);
%>

<h1 style = "text-align:center; margin-top:5px;">속닥속닥</h1>

<ul class="nav nav-tabs w-50" style ="text-align:center; margin-left:24%;">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/Chat/chatListSnack.go" style = "font-size:20px;">과자추천</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/Chat/chatListChat.go" style = "font-size:20px;">채팅</a>
  </li>
</ul>

<div style = "width:1000px; height:700px; border:2px solid olive; margin:20px auto; padding:20px 40px;">

	<!-- 상단 헤더(현재 페이지/전체 페이지) -->
	<table class = "mt-3 mb-5 ms-1">
		<tr>
			<td>PAGE: <%=currentPage %>/<%=totalPage %></td>
		</tr>
	</table>
	
	<!-- 게시물 리스트 -->
	<table class = "table mt-4">
		<tr>
			<td>NUMBER</td>
			<td>TITLE</td>
			<td>DATE</td>
			<td>VIEW</td>
		</tr>
		
		<!-- 본문 -->
		<%@page import = "java.util.*, VO.*" %>
		<%
			Vector<BoardVO> list = (Vector<BoardVO>) request.getAttribute("list");
		
			for(int i=0; i<list.size(); i++){
				%>
					<tr>
						<td><%=list.get(i).getNumber() %></td>
						<td><a href="#" style = "text-decoration:none;"><%=list.get(i).getTitle() %></a></td>
						<td><%=list.get(i).getRegdate() %></td>
						<td><%=list.get(i).getView() %></td>
					</tr>
				<%	
			}
		%>
	</table>
	
	<script>
		
		// 현재 페이지를 받을 함수 구현
		function paging(page){
			// page번호를 잘 받는지 확인
			// alert(page);
			
			document.pageForm.currentPage.value = page;
			
			var numPerPage = <%=numPerPage%>; // 10
			
			// 페이지 번호에 따라 보여주는 게시물의 시작이 다르다.
			document.pageForm.start.value = (page*numPerPage)-numPerPage;
			document.pageForm.count.value = numPerPage;
			
			document.pageForm.action = "/Chat/chatListSnack.go";
			document.pageForm.submit();
		}
		
		// 블럭 이동 함수 구현
		function moveBlock(value){
			
			var numPerPage = <%=numPerPage %>; // 10
			var pagePerBlock = <%=pagePerBlock %>; // 10
			
			document.pageForm.currentPage.value = pagePerBlock*(value-1)+1;
			
			var page = pagePerBlock*(value-1)+1;
			
			document.pageForm.start.value = (page*numPerPage)-numPerPage;
			document.pageForm.count.value = numPerPage;
			
			document.pageForm.action = "/Chat/chatListSnack.go";
			document.pageForm.submit();			
		}
		
		// 제일 처음 블럭으로 돌아가기 함수 구현
		function moveToFirst(){
			
			var numPerPage = <%=numPerPage %>;
			
			document.pageForm.currentPage.value = 1;
			
			document.pageForm.start.value = 0;
			document.pageForm.count.value = numPerPage;
			
			document.pageForm.action = "/Chat/chatListSnack.go";
			document.pageForm.submit();
		}
	</script>
	
	<!-- 페이지 관련 정보를 전달하는 form -->
	<form name = "pageForm" method = "get">
		<input type = "hidden" name = "number">
		<input type = "hidden" name = "start">
		<input type = "hidden" name = "count">
		<input type = "hidden" name = "currentPage">
	</form>
	
	<%
		int pageStart = ((currentBlock-1)*pagePerBlock)+1;
		// 삼항 연산자
		int pageEnd = ((pageStart+pagePerBlock)<=totalPage)?(pageStart+pagePerBlock):totalPage+1;
	%>
	
	<!-- 페이지 처리하기(Pagination과 버튼들) -->
	<table class = "table">
		<tr>
		<%
			if(totalPage !=0){
		%>
			<td>
				<nav aria-label="Page navigation example">
				  <ul class="pagination justify-content-end">
				  <!-- 이전 블럭으로 이동 -->
				  <%
				  	if(currentBlock>1){
				  %>
				    <li class="page-item">
				      <a class="page-link" href="javascript:moveBlock(<%=currentBlock-1 %>)" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <%
				  		}
				    %>
				    <!-- 페이지 번호 -->
				    <%
				    	for(int i=pageStart; i<pageEnd; i++){
				    %>
				    <li class="page-item"><a class="page-link" href="javascript:paging(<%=i%>)"><%=i %></a></li>
				    <%
				    	}
				    %>
				    <!-- 다음 블럭으로 이동 -->
				    <%
				    	if(totalBlock>currentBlock){
				    %>
				    <li class="page-item">
				      <a class="page-link" href="javascript:moveBlock(<%=currentBlock+1 %>)" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				    <%
				    	}
				    %>
				  </ul>
				</nav>		
			</td>
			<%
				}
			%>
			<td align="right">
				<a href ="javascript:moveToFirst()" class = "btn btn-warning">처음으로</a>
				<a href ="#" class = "btn btn-danger">글쓰기</a>
			</td>
		</tr>
	</table>

</div>

</body>
</html>