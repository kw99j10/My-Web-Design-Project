<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.User" %>
<%@ page import="dao.UserRepository" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>선수 세부 사항</title>
</head>
<body>
	<jsp:include page="./menu2.jsp"/>
	
	<div class="py-5 bg-transparent text-center w-100">
	<h1 editable="inline" class="display-5">프로필</h1><br>
	<div editable="rich">
		<p class="lead"><strong>선수들의 프로필을 보여줍니다.</strong></p>
		<div class="text-right">
			<a href="addUser.jsp" class="btn btn-primary pull-right">
			선수 등록하기</a>
		</div><hr>
	</div>
	</div>
			
<%
		String id=request.getParameter("id");
		UserRepository dao=UserRepository.getInstance();
		User user=dao.getUserById(id);
%>	

<div class="container">
	<div class="row py-4 py-lg-6">
		<div class="col-lg-4 order-lg-2 d-flex align-items-center justify-content-center justify-content-lg-start ms-lg-n6">
			<div style="z-index:1" class="lc-block col-6 col-lg-10 mb-n3 mb-lg-0">
				<img class="img-fluid shadow" src="./resources/images/<%=user.getFilename()%>"
				 alt="Photo by Kaloyan Draganov">
			</div>
		</div>
		<div class="col-lg-7 bg-light px-lg-5 p-4">
			<div class="col-lg-10 ms-lg-5 text-center">
				<div class="lc-block mb-4">
					<div editable="rich">
						<h3 class="rfs-30"><b>이름 : </b><%=user.getName() %></h3>
					</div>
				</div>
				<div class="lc-block mb-5">
					<div editable="rich">
						<h5><b>나이</b> : <%=user.getOld() %></h5>
						<h5><b>국적</b> : <%=user.getCountry() %></h5>
						<h5><b>등 번호</b> : <%=user.getNumber()%></h5>
						<h5><b>포지션</b> : <%=user.getPosition() %></h5>
					</div>
				</div>
				<div class="lc-block">
					<a class="btn btn-secondary btn-lg" href="./teams.jsp" role="button">
						선수 목록</a>
				</div>
			</div>
		</div>
	</div>
	</div>
	<hr>
	<jsp:include page="footer.jsp"/>
</body>
</html>