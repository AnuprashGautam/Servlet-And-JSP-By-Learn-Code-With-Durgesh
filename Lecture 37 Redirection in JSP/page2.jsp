<%-- 
    Document   : page2
    Created on : 3 Jan 2025, 12:05:52 am
    Author     : anupr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page two</title>
    </head>
    <body style="background: grey;">
        <h1>This is page two.</h1>
       
        <% 
            out.println("Please wait...");
            
            // Redirecting to the inside page.
//            response.sendRedirect("page3.jsp");
        
            // Redirecting to the outside page.
            response.sendRedirect("https://www.google.com");
        
        %>
    </body>
</html>
