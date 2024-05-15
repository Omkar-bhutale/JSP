<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <h1>start of jsp</h1>
<jsp:forward page="./b.jsp">
    <jsp:param value="omkar" name="sname"/>
    <jsp:param value="22" name="sage"/>

</jsp:forward>   <h1>end of jsp</h1>