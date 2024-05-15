<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%!
	Connection connection = null;
	PreparedStatement pstmt1 = null;
	PreparedStatement pstmt2 = null;

	public void jspInit() {
		ServletConfig config = getServletConfig();
		String url = config.getInitParameter("url");
		String user = config.getInitParameter("user");
		String password = config.getInitParameter("password");
		String insertQuery = "insert into employee (name,address,salary) values (?,?,?) ";
		String selectQuery = "Select * from employee";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(url, user, password);
			pstmt1 = connection.prepareStatement(insertQuery);
			pstmt2 = connection.prepareStatement(selectQuery);

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

	}%>
<%
String value = request.getParameter("s1");
if (value.equals("register")) {
	pstmt1.setString(1, (String)request.getParameter("ename"));
	pstmt1.setString(2, request.getParameter("eaddress"));
	pstmt1.setInt(3, Integer.valueOf(request.getParameter("esalary")));
	int rowAffected = pstmt1.executeUpdate();
	if (rowAffected == 1)
		out.print("<h1>Success</h1>");
	else
		out.print("<h1>failed</h1>");

} else {
	ResultSet rs = pstmt2.executeQuery();
	
%>
<table>
<td>
<th>ename</th>
<th>eaddress</th>
<th>esalary</th>
</td>
<%
if (rs != null) {
	while (rs.next()) {
%>
<tr>
	<td><%=rs.getString("name")%></td>
	<td><%=rs.getString("address")%></td>
	<td><%=rs.getInt("salary")%></td>
</tr>
<%
}

}

}
%>
</table>

<%!public void jspDestroy() {
		try {
			pstmt1.close();
			pstmt2.close();
			connection.close();
		} catch (SQLException se) {
			se.printStackTrace();
		}

	}%>