<%-- 
    Document   : example
    Created on : 2 Jan 2025, 8:03:05 am
    Author     : anupr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/mylib.tld" prefix="t"%> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <t:mytag></t:mytag>
        <hr>
        <t:printTable number="2" color="red">This content will be ignored.</t:printTable>
        <t:printTable number="10" color="blue"></t:printTable>
        <t:printTable number="100" color="blue"></t:printTable>
    </body>
</html>
