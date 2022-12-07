<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="dto.User" %>
<%@page import="dao.UserRepository" %>
<%@page import="com.oreilly.servlet.*" %>
<%@page import="com.oreilly.servlet.multipart.*" %>
<%@page import="java.util.*" %>
<%
		request.setCharacterEncoding("UTF-8");
	
	
		String filename="";
		String realFolder="C:/jsp-work/WebProject/src/main/webapp/WebContent/resources/images/";
		int maxSize=5*1024*1024;
		String encType="utf-8";
		
		MultipartRequest multi=new MultipartRequest(request,realFolder,
				maxSize,encType,new DefaultFileRenamePolicy());
		
		String userId=multi.getParameter("userId");
		String name=multi.getParameter("name");
		String old=multi.getParameter("old");
		String number=multi.getParameter("number");
		String position=multi.getParameter("position");
		String country=multi.getParameter("country");

		
		
		Integer age;
		
		if(old.isEmpty())
			age=0;
		
		else
			age=Integer.valueOf(old);
		
		
		Integer back_number;
		
		if(number.isEmpty())
			back_number=0;
		
		else
			back_number=Integer.valueOf(number);
		
		Enumeration files=multi.getFileNames();
		String fname=(String)files.nextElement();
		String fileName=multi.getFilesystemName(fname);
		
		UserRepository dao=UserRepository.getInstance();
		
		User newUser=new User();
		
		newUser.setUserId(userId);
		newUser.setName(name);
		newUser.setOld(age);
		newUser.setNumber(back_number);
		newUser.setPosition(position);
		newUser.setCountry(country);
		newUser.setFilename(fileName);
		
		dao.addUser(newUser);
		response.sendRedirect("teams.jsp");
%>