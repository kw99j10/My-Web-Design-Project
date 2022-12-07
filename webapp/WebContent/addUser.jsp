<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>선수 등록</title>
</head>
<body>
	
	<jsp:include page="menu2.jsp"/>
	<fmt:setLocale value='<%=request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.inform">
	<div class="py-5 bg-transparent text-center w-100">
	<h1 editable="inline" class="display-5"><fmt:message key="title"/></h1><br>
	<div editable="rich">
		<p class="lead"><strong><fmt:message key="text"/></strong></p>
	</div><hr>
	</div>
	
	<div class="container">
		<div class="text-right">
			<a href="?language=ko" class="btn btn-success">Korean</a>
			<a href="?language=en" class="btn btn-success">English</a>
		</div>
		<form name="newUser" action="./processAddUser.jsp" 
		class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><strong><fmt:message key="userId"/></strong></label>
				<div class="col-sm-3">
					<input type="text" name="userId" id="userId" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><strong><fmt:message key="name"/></strong></label>
				<div class="col-sm-3">
					<input type="text" name="name" id="name" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><strong><fmt:message key="old"/></strong></label>
				<div class="col-sm-3">
					<input type="text" name="old" id="old" class="form-control">
				</div>
			</div>
			
			
			<div class="form-group row">
				<label class="col-sm-2"><strong><fmt:message key="country"/></strong></label>
				<div class="col-sm-3">
					<input type="text" name="country" id="country" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><strong><fmt:message key="number"/></strong></label>
				<div class="col-sm-3">
					<input type="text" name="number" id="number" class="form-control">
				</div>
			</div>
			
			
			<div class="form-group row">
				<label class="col-sm-2"><strong><fmt:message key="position"/></strong></label>
				<div class="col-sm-3">
					<input type="text" name="position" id="position" class="form-control">
				</div>
			</div>
			
			
			<div class="form-group row">
				<label class="col-sm-2"><strong><fmt:message key="image"/></strong></label>
				<div class="col-sm-5">
					<input type="file" name="userImage" class="form-control">
				</div>
			</div>
			<br>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 text-right">
					<input type="button" class="btn btn-primary" value="<fmt:message key="button1"/>"
					onclick="CheckAddUser()">
					<input type="reset" class="btn btn-danger" value="<fmt:message key="button2"/>">
					<a href="./teams.jsp" class="btn btn-secondary"><fmt:message key="button3"/></a>
				</div>
			</div>
		</form>
	</div><hr><br>
	</fmt:bundle>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>