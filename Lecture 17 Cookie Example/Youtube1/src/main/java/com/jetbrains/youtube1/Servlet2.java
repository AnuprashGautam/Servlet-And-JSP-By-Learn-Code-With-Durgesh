package com.jetbrains.youtube1;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class Servlet2 extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Getting cookies

        boolean flag = false;
        String name="";

        Cookie cookies[] = request.getCookies();

        if(cookies == null) {
            out.println("<h1> You are the new user. Go to home page and submit your name.</h1>");
            return;
        }
        else{
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("user_name")) {
                    flag = true;
                    name = cookie.getValue();
                }
            }
        }

        if(flag){
            out.println("<h1>Hello "+name+" welcome back to my website...</h1>");
            out.println("<h1>Thank you</h1>");
        }
        else{
            out.println("<h1> You are the new user. Go to home page and submit your name.");
        }
    }
}
