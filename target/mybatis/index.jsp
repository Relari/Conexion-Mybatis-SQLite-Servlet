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

for (Document document : documentRepository.selectAll()) {
	out.print(document.toString());
	out.print("<br/>");
}
out.print("<br/>");

%>
</body>
</html>