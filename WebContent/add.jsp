<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.*" %>
<%@ page import="com.javaex.dao.*" %>
<%@ page import="java.util.*" %>

<%
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	GuestBookDao gDao = new GuestBookDao();
	GuestVo gVo = new GuestVo(name, password, content);
	int count = gDao.insert(gVo);
	
	response.sendRedirect("./addList.jsp");
%>