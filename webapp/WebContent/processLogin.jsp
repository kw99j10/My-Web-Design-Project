<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
<title>로그인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
	%>
	
	<%-- 데이터 셋 설정 --%>
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/webproject"
		driver="com.mysql.cj.jdbc.Driver" user="root" password="1234"/>
		
	<%-- id, password에 맞는 회원정보를 DB에서 추출 --%>	
	<sql:query dataSource="${dataSource}" var="resultSet">
	select * from user where id =? and password=?
	<sql:param value="<%=id %>"/>
	<sql:param value="<%=password %>"/>
	</sql:query>
	
	<%-- 출력 결과 처리, session에 id 정보 저장 후 결과 페이지로 이동(get 방식) --%>
	<c:forEach var="row" items="${resultSet.rows }">
	<%
		session.setAttribute("sessionId", id);
	%>
	<c:redirect url="home.jsp"/>
	</c:forEach>
	<c:redirect url="login.jsp?error=1"/>
</body>
</html>