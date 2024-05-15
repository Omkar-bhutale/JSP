<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="employee" class='in.omkar.dto.Employee' scope="request" />
<jsp:useBean id="service"
	class="in.omkar.service.SalaryDetailsGenraterImpl" scope="application" />

<jsp:setProperty name="employee" property="*" />

<%
service.genrateSalaryDetails(employee);
%>
<center>

		<table>
			<tr>
				<th>Employee number</th>
				<td><%=employee.getEno()%></td>

			</tr>
			<tr>
				<th>Employee name</th>
				<td><%=employee.getEname()%></td>
			</tr>
			<tr>
				<th>Employee baseSalary</th>
				<td><%=employee.getbSalary()%></td>

			</tr>
			<tr>

				<th>Employee grossSalary</th>
				<td><%=employee.getgSalary()%></td>

			</tr>

			<tr>

				<th>Employee netSalary</th>
				<td><%=employee.getnSalary()%></td>

			</tr>

		</table>
</center>
