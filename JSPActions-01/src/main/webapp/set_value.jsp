<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="student" class='in.omkar.bean.Student' scope="session"/>
 <jsp:setProperty name="student" property="sid" value="10" />
 <jsp:setProperty name="student" property="sname" value="omkar"/>
 <jsp:setProperty name="student" property="saddress" value="bhurtan"/>
 <jsp:setProperty name="student" property="sage" value="22"/>
 
 <!-- setting from request -->
 <jsp:setProperty name="student" property="*" />
 
 
 <jsp:setProperty name="student" property="sid" param="sid"/>
 <jsp:setProperty name="student" property="sname" param="sname"/>
<jsp:setProperty name="student" property="sage" param="sage"/> 
<jsp:setProperty name="student" property="saddress" param="saddress"/>

