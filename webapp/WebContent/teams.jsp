<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.User" %>
<%@ page import="dao.UserRepository" %>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>Team RealMadrid</title>
</head>
<body>
	<jsp:include page="./menu2.jsp"/>
	
	<div class="py-5 bg-transparent text-center w-100">
	<h1 editable="inline" class="display-5">Team of RealMadrid</h1><br>
	<div editable="rich">
		<p class="lead"><strong>레알마드리드CF의 선수 및 코치진입니다.</strong></p>
	</div>
	</div><hr>
	<%
		UserRepository dao=UserRepository.getInstance();
		ArrayList<User>listOfUsers=dao.getAllUsers();
	%>
	
	<div class="container py-5">
	
		<div class="row">
			<%
					for(int i=0;i<listOfUsers.size();i++){
						User user=listOfUsers.get(i);
			%>
			<div class="col-xl-3 col-md-6 mb-4">
				<div class="lc-block bg-white rounded shadow">
				<img src="./resources/images/<%=user.getFilename()%>" alt="Photo by Luca Bravo" class="img-fluid card-img-top" sizes="(max-width: 1080px) 100vw, 1080px" width="1080" height="768" loading="lazy">
					<div class="lc-block p-4 text-center">
						<div editable="rich">
							<h5><%=user.getName()%></h5>
							<p><%=user.getPosition() %></p>
							<p><a href="./team.jsp?id=<%=user.getUserId() %>"
							class="btn btn-primary" role="button">상세 정보 &raquo;</a>
						</div>
					</div>
				</div>
			</div>
			<%
				}
			%>
		</div>
	</div>
   	<hr>
	<jsp:include page="./footer.jsp"/>
</body>
</html>