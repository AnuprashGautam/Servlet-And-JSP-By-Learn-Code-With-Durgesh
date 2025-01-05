<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test page</title>
    </head>
    <body>
        <h1>This is test page to access the variable set on the index.jsp with the application scope.</h1>
        <h1><c:out value="${i}"></c:out></h1>
    </body>
</html>
