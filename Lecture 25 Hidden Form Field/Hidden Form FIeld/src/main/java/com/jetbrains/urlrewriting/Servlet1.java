package com.jetbrains.urlrewriting;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class Servlet1 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        System.out.println("Fetching the name and rewriting the URL.");

        // Fetching the name form the index.jsp

        String name=req.getParameter("user_name");
        out.println("<h1>Your name is "+name+"</h1>");

        // Rewriting the URL

        //out.println("<a href='servlet2?user="+name+"'>Go to second servlet</a>");

        // Hidden form field coding

        out.println("<form action='servlet2'>"
                    +"<input type='hidden' name='user_name' value='"+name+"'>"
                    +"<button >Go to second servlet</button>"
                    +"</form>");


    }
}