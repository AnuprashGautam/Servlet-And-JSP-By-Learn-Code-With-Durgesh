package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;

@WebServlet(name = "registerServlet", urlPatterns = "/Register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println("Registering the new user.");

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        // Fetching the data coming from the register.jsp
        String name = req.getParameter("name");
        String type = req.getParameter("type");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        // Printing the detail of new usesr to the console.
        System.out.println("Name: " + name + " Type: " + type + " Email: " + email + " Password: " + password);

        // Now submittin this detail to the database.
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tutorial", "root", "haveaniceday");

            // Query
            String q = "INSERT INTO user(name, type, email, password) VALUES (?, ?, ?, ?)";

            PreparedStatement pstmt = con.prepareStatement(q);

            pstmt.setString(1, name);
            pstmt.setString(2, type); // Consider hashing the password
            pstmt.setString(3, email);
            pstmt.setString(4, password);

            pstmt.executeUpdate();

            // Add data to the request to pass to JSP
            req.setAttribute("userName", name);

            // Forward the request to the JSP
            RequestDispatcher dispatcher = req.getRequestDispatcher("success.jsp");
            dispatcher.forward(req, resp);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            
            // Forward the request to the JSP
            RequestDispatcher dispatcher = req.getRequestDispatcher("error.jsp");
            dispatcher.forward(req, resp);
        }
    }
}
