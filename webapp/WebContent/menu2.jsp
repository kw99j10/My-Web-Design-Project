<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>Menu</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message">
	
	<nav class="navbar navbar-expand-lg navbar-lightcyan bg-light border border-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./home.jsp">
				<fmt:message key="home"/></a>
			</div>
			<div>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="./teams.jsp">
					<fmt:message key="team"/></a>
				</ul>
			</div>
			<div>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="./history.jsp">
					<fmt:message key="history"/></a>
				</ul>
			</div>
			<div>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="./stadium.jsp">
					<fmt:message key="stadium"/></a>
				</ul>
			</div>
			<div>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="./news.jsp">
						<fmt:message key="news"/></a>
				</ul>
			</div>
			<div>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="./uniforms.jsp">
					<fmt:message key="uniform"/></a>
				</ul>
			</div>
			<div class="text-right">
				<a href="?language=ko" class="btn btn-primary btn-sm">Korean</a>
				<a href="?language=en" class="btn btn-primary btn-sm">English</a>
				<a href="logout.jsp" class="btn btn-outline-primary">
				<fmt:message key="logout"/></a>
			</div>
		</div>
	</nav>
	</fmt:bundle>
</body>
</html>