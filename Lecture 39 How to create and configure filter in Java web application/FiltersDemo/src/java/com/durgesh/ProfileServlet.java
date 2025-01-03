/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.durgesh;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author anupr
 */

@WebServlet(name = "ProfileServlet",urlPatterns = "/ProfileServlet")
public class ProfileServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Profile Servlet executed.");
        
        resp.setContentType("text/html;character=UTF-8");
        PrintWriter out=resp.getWriter();
        
        out.println("<h1>Welcome to profile page.</h1>");
        out.println("<h1>This is a profile page.</h1>");
    }
}
