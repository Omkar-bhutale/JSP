<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  RequestDispatcher rd =  request.getRequestDispatcher("./header.jsp");
       rd.include(request, response);
%>

<h1>This is idndex .jsp</h1>
<%   rd =  request.getRequestDispatcher("./footer.jsp");
       rd.include(request, response);
%>
</body>
</html>