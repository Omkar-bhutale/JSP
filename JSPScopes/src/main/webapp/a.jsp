<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
	session.setAttribute("s", "Seddion");
	request.setAttribute("r", "request");
	
	pageContext.setAttribute("p", "page contest");
	application.setAttribute("a", "applicatiom");
	pageContext.forward("./b.jsp");
%>