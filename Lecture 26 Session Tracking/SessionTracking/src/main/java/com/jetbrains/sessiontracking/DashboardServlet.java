package com.jetbrains.sessiontracking;

import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "dashboardServlet", value = "/dashboard-servlet")
public class DashboardServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        // Fetch session details
        HttpSession session = req.getSession(false); // Do not create a new session if none exists
        if (session != null && session.getAttribute("user_name") != null) {
            String userName = (String) session.getAttribute("user_name");
            out.println("<h1>Dashboard</h1>");
            out.println("<h2>Welcome back, " + userName + "!</h2>");
            out.println("<a href='logout-servlet'>Logout</a>");
        } else {
            out.println("<h1>Session expired or not logged in.</h1>");
            out.println("<a href='login.html'>Login Again</a>");
        }
    }
}
