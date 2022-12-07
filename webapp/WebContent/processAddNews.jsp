<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="dto.News" %>
<%@page import="dao.NewsRepository" %>
<%@page import="com.oreilly.servlet.*" %>
<%@page import="com.oreilly.servlet.multipart.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<html>
<head>
<title>뉴스 등록</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
	
		String filename="";
		String realFolder="C:/jsp-work/WebProject/src/main/webapp/WebContent/resources/images/";
		int maxSize=5*1024*1024;
		String encType="utf-8";
		
		MultipartRequest multi=new MultipartRequest(request,realFolder,
				maxSize,encType,new DefaultFileRenamePolicy());
		
		String title=multi.getParameter("title");
		String description=multi.getParameter("description");
		
		Enumeration files=multi.getFileNames();
		String fname=(String)files.nextElement();
		String fileName=multi.getFilesystemName(fname);
		
		NewsRepository dao=NewsRepository.getInstance();
		
		News newNews=new News();
		
		newNews.setTitle(title);
		newNews.setDescription(description);
		newNews.setFilename(fileName);
		
		dao.addNews(newNews);
		
		response.sendRedirect("news.jsp");
	%>
</body>
</html>