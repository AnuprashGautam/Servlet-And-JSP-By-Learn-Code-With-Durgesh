package com.servlets;
import jakarta.servlet.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class FirstServlet implements Servlet {

    // Life cycle methods

    ServletConfig config;

    public void init(ServletConfig config){
        this.config = config;
        System.out.println("Creating object:....");
    }

    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        System.out.println("Serving object:....");


        // Set the content type of the response.

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<h1>This is Frist Servlet</h1>");
        out.println("<h1>Todays date is:"+new Date().toString()+"</h1>");
    }

    @Override
    public void destroy() {
        System.out.println("Destroying object:....");
    }

    // Non life cycle methods


    public ServletConfig getServletConfig() {
        return this.config;
    }

    public String getServletInfo() {
        return "This servlet is created by Anuprash Gautam.";
    }
}
