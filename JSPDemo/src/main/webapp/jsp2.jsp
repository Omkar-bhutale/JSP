<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<title>Insert title here</title>

</head>
<body>
	
	<c:forEach var="entry" items="${paramValues}">
    Key: ${entry.key}, Value: ${entry.value} <br/>
    <c:forEach var="val" items="${entry.value}">
                ${val} 
            </c:forEach>
</c:forEach>

	

</body>
</html>