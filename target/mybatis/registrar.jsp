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
<title>Insert</title>
</head>
<body>
	<form action="/mybatis/add" method="get">
	  	
	  	<label for="txtDescripcion">Descripcion:</label>
	  	<input type="text" name="txtDescripcion" id="txtDescripcion" autocomplete="off" />
	  	
	    <input type="submit" value="Registrar">
	    
	    <input type="reset" value="Limpiar">
	  
	</form>
</body>
</html>