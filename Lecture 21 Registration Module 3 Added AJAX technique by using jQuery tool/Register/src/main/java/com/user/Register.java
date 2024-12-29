package com.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        // Getting all the incoming details from the request
        String name = req.getParameter("user_name");
        String password = req.getParameter("user_password");
        String email = req.getParameter("user_email");

//        out.println("<p>Name: " + name + "</p>");
//        out.println("<p>Password: " + password + "</p>");
//        out.println("<p>Email: " + email + "</p>");

        // Establishing the JDBC connection
        try {

            Thread.sleep(3000);             // To give the enough time to the loader to animate.

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube", "root", "haveaniceday");

            // Query
            String q = "INSERT INTO user(name, password, email) VALUES (?, ?, ?)";

            PreparedStatement pstmt = con.prepareStatement(q);

            pstmt.setString(1, name);
            pstmt.setString(2, password); // Consider hashing the password
            pstmt.setString(3, email);

            pstmt.executeUpdate();

            out.println("Done");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.println("Error");
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
