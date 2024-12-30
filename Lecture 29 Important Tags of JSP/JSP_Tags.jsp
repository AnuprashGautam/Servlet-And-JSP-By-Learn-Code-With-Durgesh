<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Welcome to my webpage!!!</h1>
<br>

<%!
    int a = 10;
    int b = 20;
    String name = "Anuprash Gautam";

    public int doSum() {
        return a + b;
    }

    public String reverse() {
        StringBuffer br = new StringBuffer(name);
        return br.reverse().toString();
    }
%>

<h2>Printing the values using the scriplet tag:</h2>
<br>

<%
    out.println("The value of a is:" + a);
    out.println("<br>");
    out.println("The value of b is:" + b);
    out.println("<br>");
    out.println("The reverse of " + name + " is:" + reverse());
%>

<h2>Printing the value using the expression tag:</h2>
<br>

<h3>The value of a is:<%=a%>
</h3>
<h3>The value of b is:<%=b%>
</h3>
<h3>The reverse of <%= name%> is <%= reverse()%>
</h3>
</body>
</html>