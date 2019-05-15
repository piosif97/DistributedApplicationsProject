<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*, java.io.*, javax.servlet.*, java.lang.*" %>

<%
	if(request.getSession(false) != null){
		request.getSession(false).invalidate();
		response.sendRedirect("regform/login.jsp");
	}
%>