<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Sorry!! Something went wrong...</title>
</head>
<body>
	<div class="container p-3 text-center">
		<img class="img-fluid" src="images/caution-sign.png">
		<h1 class="display-3">Sorry!! Something went wrong...</h1>
		<p><%= exception %></p>
		<a class="btn btn-outline-primary" href="index.jsp">Home Page</a>
	</div>
</body>
</html>