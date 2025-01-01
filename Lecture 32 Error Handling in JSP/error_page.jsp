<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<style>
	*{
		padding:0px;
		margin:0px;
	}
</style>
<meta charset="UTF-8">
<title>Sorry!! Something went wrong...</title>
</head>
<body>
	<div style="padding:20kpx;color:blue;background:#e2e2e2" >
		<h1>Sorry!! Something went wrong...</h1>
		<br>
		<p><%= exception %></p>
	</div>

</body>
</html>