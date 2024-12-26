package com.jetbrains.youtube1;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class Servlet1 extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>Hello "+name+" welcome to my website...</h1>");
        out.println("<h1><a href='servlet2'>Go to Servlet 2</a></h1>");
    }
}
