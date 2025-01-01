<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Taglib Directive Application</title>
</head>
<body>
	<h1>Hello there I am going to show you the use of Taglib JSTL directive usecase in this webpage!!!</h1>
	<br>
	
	<c:set var="name" value="Anuprash"></c:set>
	<c:out value="${name}"></c:out>
	
	<h1>If condition in JSTL.</h1>
	<br>
	
	<c:if test="${3>2 }">
		<h2>True block</h2>
	</c:if>
	
	
</body>
</html>