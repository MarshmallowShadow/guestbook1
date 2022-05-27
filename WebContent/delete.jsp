<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.*" %>
<%@ page import="com.javaex.dao.*" %>
<%@ page import="java.util.*" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	String pInput = request.getParameter("password");
	
	GuestBookDao gDao = new GuestBookDao();
	GuestVo gVo = gDao.getGuest(no);
	System.out.println(gVo);
	String password = gVo.getPassword();
	
	if(pInput.equals(password)){
		int count = gDao.delete(no);
		response.sendRedirect("./addList.jsp");
	} else {
		response.sendRedirect("./deleteForm.jsp?no=" + no);
	}
%>