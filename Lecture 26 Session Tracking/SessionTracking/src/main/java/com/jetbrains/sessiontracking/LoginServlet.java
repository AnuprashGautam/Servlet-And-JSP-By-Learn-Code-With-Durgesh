package com.jetbrains.sessiontracking;

import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "loginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        // Fetching the data from the request
        String name = req.getParameter("user_name");
        String password = req.getParameter("password");

        // Simulate a simple login validation
        if ("admin".equals(name) && "password123".equals(password)) {
            // Create a session and set attributes
            HttpSession session = req.getSession();
            session.setAttribute("user_name", name);

            out.println("<h1>Welcome, " + name + "!</h1>");
            out.println("<h2>You have successfully logged in.</h2>");
            out.println("<a href='dashboard-servlet'>Go to Dashboard</a>");
        } else {
            out.println("<h1>Invalid credentials!</h1>");
            out.println("<a href='login.html'>Try Again</a>");
        }
    }
}
