package com.practice;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class SuccessServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("User registered successfully");


        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<h1>User registered successfully. Thanks for using our services.<h1>");
    }
}
