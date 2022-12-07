<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>상품 아이디 오류</title>
</head>
<body>
	<jsp:include page="menu2.jsp"/>
	<div class="jumbotron">
		<div class="container text-center">
			<h2 class="alert alert-danger">해당 아이디에 일치하는 상품이 존재하지 않습니다.</h2>
		</div>
		
		<div class="container text-center">
			<p><%=request.getRequestURL()%>?<%=request.getQueryString() %>
			
			<p><a href="uniforms.jsp" class="btn btn-danger text-center">
			상품목록 &raquo;</a>
		</div>	
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>