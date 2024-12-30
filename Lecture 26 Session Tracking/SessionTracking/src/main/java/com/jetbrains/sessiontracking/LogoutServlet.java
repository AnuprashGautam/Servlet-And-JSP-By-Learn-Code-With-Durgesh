package com.jetbrains.sessiontracking;

import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "logoutServlet", value = "/logout-servlet")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        // Invalidate the session
        HttpSession session = req.getSession(false); // Fetch the session if it exists
        if (session != null) {
            session.invalidate();
        }

        out.println("<h1>You have been logged out successfully.</h1>");
        out.println("<a href='login.html'>Login Again</a>");
    }
}
