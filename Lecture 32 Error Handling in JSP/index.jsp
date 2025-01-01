<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page errorPage="error_page.jsp" %>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Taglib Directive Application</title>
</head>
<body>
	<h1>Hello there I am going to show you the use of Taglib JSTL directive usecase in this webpage!!!</h1>
	<hr>
	
	<%!
		int n1=40;
	    int n2=0;
	%>
	
	
	<%
		int division=n1/n2;
	%>
	
	<h1>Division = <%= division %></h1>
	
</body>
</html>