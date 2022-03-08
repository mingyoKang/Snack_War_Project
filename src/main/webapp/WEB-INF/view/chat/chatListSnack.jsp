<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- link 경로(head)포함 -->
<%@include file = "../../module/link.jsp" %>

<body>

<%@include file = "../../module/nav.jsp" %>

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
			<td>PAGE: 현/전</td>
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
						<td><%=list.get(i).getTitle() %></td>
						<td><%=list.get(i).getRegdate() %></td>
						<td><%=list.get(i).getView() %></td>
					</tr>
				<%	
			}
		%>
	</table>
	
	<!-- 페이지 처리하기(Pagination과 버튼들) -->
	<table class = "table">
		<tr>
			<td>
				<nav aria-label="Page navigation example">
				  <ul class="pagination justify-content-end">
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>		
			</td>
			<td align="right">
				<a href ="#" class = "btn btn-warning">처음으로</a>
				<a href ="#" class = "btn btn-danger">글쓰기</a>
			</td>
		</tr>
	</table>

</div>

</body>
</html>