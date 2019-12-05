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
<title>Delete</title>
</head>
<body>
	<form action="/mybatis/del" method="get">
	  	
	  	<label for="txtID">ID:</label>
	  	<input type="text" name="txtID" id="txtID" autocomplete="off" />
	  	
	    <input type="submit" value="Eliminar">
	    
	    <input type="reset" value="Limpiar">
	  
	</form>
</body>
</html>