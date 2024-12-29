package com.jetbrains.urlrewriting;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class Servlet2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();


        // Fetching the name sent by the servlet 1 via URL.

        String name=req.getParameter("user");
        out.println("<h1>Welcome back "+name+"</h1>");
        out.println("<h2>Thanks for using servlet 2</h2>");
    }
}
