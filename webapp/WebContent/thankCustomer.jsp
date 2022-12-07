<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/uni.css">
<title>주문 완료</title>
</head>
<body>
	<%
		String cartId = session.getId();
		String shipping_cartId = "";
		String shipping_name = "";
		String shipping_shippingDate = "";
		String shipping_country = "";
		String shipping_zipCode = "";
		String shipping_addressName = "";
	
		Cookie[] cookies = request.getCookies();
	
		if(cookies != null){
			for(int i=0; i<cookies.length; i++){
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if(n.equals("Shipping_cartId"))
					shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				if(n.equals("Shipping_shippingDate"))
					shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			}
		}
	%>

	<jsp:include page="menu2.jsp"/>
	
	<header class="header">
	  <div class="text-box">
	    <h1 class="heading-primary">
	      <span class="heading-primary-main"><strong>주문 완료 !!!</strong></span>
	    </h1>
	  </div>
	</header>
	<hr><br>
	
	<div class="container text-center">
		<h2 class="alert alert-success">주문해주셔서 감사합니다.</h2>
		<p> 주문은 <% out.println(shipping_shippingDate); %>에 출고되어 이틀내에 배송 예정입니다!
		<p> 주문 번호 : <% out.println(shipping_cartId); %>
	</div>
	<br><br>
	<div class="container">
		<p><a href="./uniforms.jsp" class="btn btn-secondary">&laquo; 상품 목록</a>
	</div>
	<hr>
	<jsp:include page="footer.jsp"/>
</body>
</html>

<%
	session.invalidate();
	
	for(int i=0; i<cookies.length; i++){
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if(n.equals("Shipping_cartId"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_name"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_shippingDate"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_country"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_zipCode"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_addressName"))
			thisCookie.setMaxAge(0);
		
		response.addCookie(thisCookie);
	}
%>