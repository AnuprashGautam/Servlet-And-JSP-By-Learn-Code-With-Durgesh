<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL sql tags</title>
    </head>
    <body>
        <h1>All users are:</h1>

        <hr>

        <sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/tutorial" user="root" password="haveaniceday" var="ds"></sql:setDataSource>

        <sql:query dataSource="${ds}" var="rs">SELECT * FROM user;</sql:query>

        <div class="container">
            <table class="table" >
                    <tr>
                        <td>User ID</td>
                        <td>Name</td>
                        <td>Email</td>
                        <td>Type</td>
                    </tr>

                <c:forEach items="${rs.rows}" var="row">
                    <tr>
                        <td><c:out value="${row.id}"></c:out></td>
                        <td><c:out value="${row.name}"></c:out></td>
                        <td><c:out value="${row.email}"></c:out></td>
                        <td><c:out value="${row.type}"></c:out></td>
                        </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
