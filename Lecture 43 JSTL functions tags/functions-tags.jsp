<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL functions tags</title>
    </head>
    <body>
        <h1>JSTL functions library examples:</h1>
        
        <br>
        <hr>
        
        <c:set var="name" value="   Anuprash Gautam   "></c:set>
        <h1>The name string is:<c:out value="${name}"></c:out></h1>
        <!--1. length function-->
        
        <h1>The length of name string is :<c:out value="${fn:length(name)}"></c:out></h1>
        
        <hr>
        <!--2. toLowerCase function-->
        
        <h1>The lower case of name string is :<c:out value="${fn:toLowerCase(name)}"></c:out></h1>

        <hr>
        <!--3. toUperCase function-->
        
        <h1>The uper case of name string is :<c:out value="${fn:toUpperCase(name)}"></c:out></h1>
        
        <hr>
        <!--3. trim function-->
        
        <h1>The trimming name string :<c:out value="${fn:trim(name)}"></c:out></h1>
        
        
    </body>
</html>