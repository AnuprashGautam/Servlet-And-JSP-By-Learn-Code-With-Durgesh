package com.attr;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class S2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String n1=req.getParameter("n1");
        String n2=req.getParameter("n2");

        // Typecasting

        int nn1=Integer.parseInt(n1);
        int nn2=Integer.parseInt(n2);

        // Multiplying these two values.

        int product=nn1*nn2;

        // Getting the variable 'sum'.

        int sum=(int)req.getAttribute("sum");


        out.println("<h1>The sum and product of the numbers are:</h1>");
        out.println("<h2>The sum is:</h1>"+sum);
        out.println("<h2>The product is:</h1>"+product);
    }
}
