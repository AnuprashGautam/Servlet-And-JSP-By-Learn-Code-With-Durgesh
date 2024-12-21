package com.practice;

import jakarta.servlet.*;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;


public class MyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("This is get method.");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<h1>This is get method of myservlet.</h1>");
    }
}
