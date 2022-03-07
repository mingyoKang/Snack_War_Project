<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- link 경로(head)포함 -->
<%@include file = "../../module/link.jsp" %>

<body>

<%@include file = "../../module/nav.jsp" %>

<div style = "width:1000px; height:350px; border:2px solid olive; margin:200px auto; padding:20px 10px;">
	<h1 style = "text-align:center; margin-top:40px;">환영합니다!</h1>
	<h1 style = "text-align:center;">
	<span style = "color:tomato;">W</span><span style = "color:darkorange;">e</span><span style = "color:gold;">l</span><span style = "color:green;">c</span><span style = "color:dodgerblue;">o</span><span style = "color:darkslateblue;">m</span><span style = "color:indigo;">e</span>!
	</h1>
	<div style = "text-align:center; margin-top:20px;">
		<a href ="Login.jsp" class = "btn btn-dark w-50" style = "font-size:30px;">로그인하기</a>
	</div>
</div>

</body>
</html>