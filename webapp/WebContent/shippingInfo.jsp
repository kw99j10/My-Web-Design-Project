<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/uni.css">
<title>배송 정보</title>
</head>
<body>
	<jsp:include page="menu2.jsp"/>
	<header class="header">
	  <div class="text-box">
	    <h1 class="heading-primary">
	      <span class="heading-primary-main"><strong>배송 정보</strong></span>
	    </h1>
	  </div>
	</header>
	<hr><br>
	
	<div class="container">
	<form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
		<input type="hidden" name="cartId" value="<%= request.getParameter("cartId") %>"/>
		<div class="form-group row">
			<label class="col-sm-2"><strong>성명</strong></label>
			<div class="col-sm-3">
				<input name="name" type="text" class="form-control"/>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><strong>배송일</strong></label>
			<div class="col-sm-3">
				<input name="shippingDate" type="text" class="form-control" 
				placeholder="yyyy/mm/dd"/>
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><strong>우편번호</strong></label>
			<div class="col-sm-3">
				<input name="zipCode" type="text" class="form-control"/>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><strong>주소</strong></label>
			<div class="col-sm-5">
				<input name="addressName" type="text" class="form-control"/>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
				<a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-danger" role="button"> 이전</a>
				<input type="submit" class="btn btn-success" value="등록"/>
				<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a>
			</div>
		</div>		
	</form>
</div>
	<hr>
	<jsp:include page="footer.jsp"/>
</body>
</html>