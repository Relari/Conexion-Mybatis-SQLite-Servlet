<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>
	<form action="/ConexionMybatisSQLiteServlet/upd" method="get">
	  	
	  	<label for="txtID">ID:</label>
	  	<input type="text" name="txtID" id="txtID" autocomplete="off" value="<% out.print(request.getParameter("txtID").toString()); %>" />
	  	
	  	<label for="txtDescripcion">Descripcion:</label>
	  	<input type="text" name="txtDescripcion" id="txtDescripcion" autocomplete="off"
	  	    onkeyup="this.value = this.value.toUpperCase();" value="<% out.print(request.getParameter("txtDescripcion")); %>" />
	  	
	    <input type="submit" value="Actualizar">
	    
	</form>
</body>
</html>