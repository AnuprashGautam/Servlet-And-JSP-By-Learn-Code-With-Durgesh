package com.practice;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>Welcome to Register Servlet</h1>");

        System.out.println("Fetching data from index.jsp page.");
        // Fetching the data from the index.jsp page.

        String username = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String course = request.getParameter("course");

        String cond = request.getParameter("condition");

        if (cond != null) {
            if (cond.equals("checked")) {
                out.println("<h1>Your name is: " + username + "</h1>");
                out.println("<h1>Your email is: " + email + "</h1>");
                out.println("<h1>Your password is: " + password + "</h1>");
                out.println("<h1>Your course is: " + course + "</h1>");
                out.println("<h1>Your gender is: " + gender + "</h1>");


                // Now I am forwarding the request to other servlet: SuccessServlet.

                RequestDispatcher rd = getServletContext().getRequestDispatcher("/success");
                rd.forward(request, response);
            }
        } else {
            out.println("Please agree the term and conditions.</h1>");

            // I want to include the output of index.jsp.

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.include(request, response);
        }

    }
}
