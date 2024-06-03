<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP forward tag</title>
</head>
<body>
	<h1>Redirecting to forward tag</h1>

	<jsp:include page="jsp2.jsp" >
		<jsp:param name="name" value="omkar" />
		<jsp:param name="age" value="22" />
		<jsp:param name="address" value="bhutan hipparga" />

	</jsp:include>
</body>
</html>