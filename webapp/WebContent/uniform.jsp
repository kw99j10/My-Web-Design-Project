<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="dto.Product" %>
<%@page import="dao.ProductRepository" %>
<%@page errorPage="exceptionNoUniformId.jsp" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/uni.css">
<script type="text/javascript">
	function addToCart(){
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}
		else{
			document.addForm.reset();
		}
	}
</script>
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu2.jsp"/>
	<header class="header">
	  <div class="text-box">
	    <h1 class="heading-primary">
	      <span class="heading-primary-main"><strong>상품 정보</strong></span>
	    </h1>
	  </div>
	</header>
	<hr><br>
	<%
		String id=request.getParameter("id");
		ProductRepository dao=ProductRepository.getInstance();
		Product product=dao.getProductById(id);
	%>
	<div class="container text-center">
		<div class="row">
			<div class="col-md-5 text-center">
				<img src="./resources/images/<%=product.getFilename()%>"
				style="width:100%">
			</div>
			<div class="com-md-6 text-center">
				<h3><%=product.getPname() %></h3><br>
				<p><b>상품 코드 : </b><span class="badge badge-primary">
					<%=product.getProductId()%></span><br>
				<p><b>제조사</b>: <%=product.getManufacturer() %><br>
				<p><b>재고 수</b>: <%=product.getUnitsInStock() %><br>
				<h4><%=product.getUnitPrice() %>원</h4><br>
				
				
				<p><form name="addForm" action="./addCart.jsp?id=<%=product.getProductId() %>" method="post">
				<a href="#" class="btn btn-info" onclick="addToCart()">상품주문&raquo;</a>
				<a href="./cart.jsp" class="btn btn-success">장바구니&raquo;</a>
				<a href="./uniforms.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
				</form>
				
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
	</body>
</html>