<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/uni.css">
<title>뉴스 등록</title>
</head>
<body>
	<jsp:include page="menu2.jsp"/>
	<fmt:setLocale value='<%=request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.inform">
	<header class="header">
	  <div class="text-box">
	    <h1 class="heading-primary">
	      <span class="heading-primary-main"><strong><fmt:message key="enroll_news"/></strong></span>
	    </h1>
	  </div>
	</header>
	<hr><br>
	
	<div class="container">
		<div class="text-right">
			<a href="?language=ko" class="btn btn-success">Korean</a>
			<a href="?language=en" class="btn btn-success">English</a>
		</div>
		<form name="newNews" action="./processAddNews.jsp" 
		class="form-horizontal" method="post" enctype="multipart/form-data">
			
			<div class="form-group row">
				<label class="col-sm-2 text-center"><strong><fmt:message key="attached_title"/></strong></label>
				<div class="col-sm-5">
					<input type="text" name="title" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 text-center"><strong><fmt:message key="attached_content"/></strong></label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2"
					class="form-control"></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 text-center" ><strong><fmt:message key="attached_image"/></strong></label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 text-right">
					<input type="submit" class="btn btn-primary pull-right" 
					value="<fmt:message key="button4"/>">
					<a href="news.jsp" class="btn btn-secondary pull-right">
					<fmt:message key="button5"/></a>
				</div>
			</div>
		</form>
	</div><hr>
	</fmt:bundle>
	<jsp:include page="footer.jsp"/>
</body>
</html>