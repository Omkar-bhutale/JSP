<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="calculater" class="in.omkar.bean.Calculater"/>

<h1>
 The square of 5 is <%= calculater.squreIt(5) %></br>
 The square of 10 is <%= calculater.squreIt(10) %>
</h1>