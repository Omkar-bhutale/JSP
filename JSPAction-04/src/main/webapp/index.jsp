<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
 <h1>in index.jsp</h1>
 <% RequestDispatcher rd = request.getRequestDispatcher("./first.jsp"); rd.forward(request, response); %>
 
</body>
</html>