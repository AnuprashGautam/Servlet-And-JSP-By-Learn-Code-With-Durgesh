<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.Random" %>


<!DOCTYPE html>
<html>
<head>
    <title>Directive tags in JSP</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
    </style>
</head>
<body>

<%@include file="header.jsp"%>

<h2>Random Number!!!</h2>

<%
    Random r=new Random();

    int n=r.nextInt(10);
%>

<h3><%=n%></h3>
</body>
</html>