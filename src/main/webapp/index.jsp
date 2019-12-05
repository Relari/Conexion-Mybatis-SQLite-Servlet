<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.wildfly.mybatis.config.*"%>
<%@ page import="com.wildfly.mybatis.bean.*"%>
<%@ page import="com.wildfly.mybatis.mapper.*"%>
<%@ page import="org.springframework.context.annotation.AnnotationConfigApplicationContext"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LIST</title>
</head>
<body>

<%
AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
DocumentMapper documentRepository = context.getBean(DocumentMapper.class);
%>

<a href="registrar.jsp">Nuevo</a>
<br/>
<br/>

<table border="2px">
	<tr>
		<th>ID</th>
		<th>DESCRIPCION</th>
		<th>UPDATE</th>
		<th>DELETE</th>
	</tr>
	<% for (Document document : documentRepository.selectAll()) { %>
	<tr>
		<td><% out.print(document.getID()); %></td>
		<td><% out.print(document.getDescripcion()); %></td>
		<td><a href="actualizar.jsp?txtID=<% out.print(document.getID().toString()); %>&txtDescripcion=<% out.print(document.getDescripcion()); %>">edit</a>
		<td><a href="eliminar.jsp?txtID=<% out.print(document.getID().toString()); %>">del</a>
	</tr>
	<% }%>
</table>
</body>
</html>