<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<h1>finding application perticular scope ${a}</h1>
<h1>finding inrequst scope ${r}</h1>
<h1>finding in any scopw r <%= pageContext.findAttribute("r") %></h1>
<h1>finding in session scope <%= pageContext.getAttribute("s", 3) %></h1>