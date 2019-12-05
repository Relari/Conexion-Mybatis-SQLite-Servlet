<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert</title>
</head>
<body>
	<form action="/ConexionMybatisSQLiteServlet/add" method="get">
	  	
	  	<label for="txtDescripcion">Descripcion:</label>
	  	<input type="text" name="txtDescripcion" id="txtDescripcion" autocomplete="off" onkeyup="this.value = this.value.toUpperCase();" />
	  	
	    <input type="submit" value="Registrar">
	    
	</form>
</body>
</html>