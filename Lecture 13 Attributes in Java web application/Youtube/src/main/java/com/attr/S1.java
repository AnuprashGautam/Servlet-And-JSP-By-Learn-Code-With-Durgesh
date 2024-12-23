package com.attr;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class S1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println("Fetching the values of variables form the view in servlet S1.");

        String n1=req.getParameter("n1");
        String n2=req.getParameter("n2");

        // Typecasting

        int nn1=Integer.parseInt(n1);
        int nn2=Integer.parseInt(n2);


        // Adding

        int s=nn1+nn2;


        // Setting the value to send to the next servlet S2.

        System.out.println("Setting the value to send to the next servlet S2.");

        req.setAttribute("sum", s);


        // Forwarding to the next servlet S2.

        RequestDispatcher rd = req.getRequestDispatcher("s2");
        rd.forward(req, resp);
    }
}
