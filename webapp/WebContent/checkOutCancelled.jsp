<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/uni.css">
<title>주문 취소</title>
</head>
<body>
	<jsp:include page="menu2.jsp"/>
	
	<header class="header">
	  <div class="text-box">
	    <h1 class="heading-primary">
	      <span class="heading-primary-main">주문 취소</span>
	    </h1>
	  </div>
	</header>
	<hr><br>
	<div class="container text-center">
		<h2 class="alert alert-danger">주문이 취소되었습니다.</h2>
	</div>
	<br>
	
	<div class="container">
		<p><a href="./uniforms.jsp" class="btn btn-secondary">&laquo; 상품 목록</a>
	</div>
	<hr>
	<jsp:include page="footer.jsp"/>
</body>
</html>