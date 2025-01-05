<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Example</title>
    </head>
    <body>
        <h1>This is JSTL Example</h1>
        
        <br>
        <hr>

        <!--1. set tag-->
        <!--By default the scope is page.-->

        <c:set var="i" value="23" scope="application"></c:set>

            <!--2. out tag-->

            <h1>The value of variable i is :<c:out value="${i}"> Variable i is null or not defined.</c:out></h1>

            <hr>

            <!--3. remove tag-->

        <%--<c:remove var="i"></c:remove>--%>
        <h1>The value of variable i is :<c:out value="${i}"> Variable i is null or not defined.</c:out></h1>

            <hr>

            <!--4. if tag-->

        <c:if test="${i==23}">
            <h1>The value of i is 23.</h1>
        </c:if>

        <hr>

            <!--5. choose when otherwise tags-->

        <c:choose>
            <c:when test="${i>0}">
                <h1>This is first case.</h1>
                <h1>Positive number</h1>
            </c:when>

            <c:when test="${i<0}">
                <h1>This is second case.</h1>
                <h1>Negative number</h1>
            </c:when>

            <c:otherwise>
                <h1>This is the default case.</h1>
                <h1>Number is equal to 0.</h1>
            </c:otherwise>
        </c:choose>
                
                <hr>
                
                <!--6. forEach tag-->
                
        <c:forEach var="j" begin="1" end="10">
            <h2>The value of j is :<c:out value="${j}"></c:out></h2>
        </c:forEach>
            
            <hr>
           
            <!--7. redirect tag-->
            
        <%--<c:redirect url="https://www.google.com"></c:redirect>--%>
        
        
            <!--8. param tag-->
            
            <c:url var="myurl" value="https://www.google.com/search">
                <c:param name="q" value="anuprash gautam"></c:param>
            </c:url>
            
            
            <h1>This is the parameterized url: <c:out value="${myurl}"></c:out></h1>


    </body>
</html>
