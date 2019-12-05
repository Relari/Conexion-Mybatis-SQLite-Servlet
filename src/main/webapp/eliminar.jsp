<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>
	<form action="/ConexionMybatisSQLiteServlet/del" method="get">
	  	
	  	<label for="txtID">ID:</label>
	  	<input type="text" name="txtID" id="txtID" autocomplete="off" value="<% out.print(request.getParameter("txtID")); %>" />
	  	
	    <input type="submit" value="Eliminar">
	    
	</form>
</body>
</html>