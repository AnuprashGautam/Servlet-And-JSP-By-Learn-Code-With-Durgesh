package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import users.User;

@WebServlet(name = "LoginServlet", urlPatterns = "/Login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Processing user login.");

        // Set response content type
        resp.setContentType("text/html");

        // Fetch and validate input parameters
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        // Database connection details
        final String DB_URL = "jdbc:mysql://localhost:3306/tutorial";
        final String DB_USERNAME = "root";
        final String DB_PASSWORD = "haveaniceday";

        // SQL query for user validation
        final String QUERY = "SELECT * FROM user WHERE email = ? AND password = ?";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/tutorial", "root", "haveaniceday");

            PreparedStatement pstmt = con.prepareStatement(QUERY);

            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Set parameters for the prepared statement
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            // Execute the query and process the result
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    // Retrieve user details
                    String userName = rs.getString("name");
                    String userType = rs.getString("type");

                    // Create a User object and store it in the session
                    User user = new User(email, userType);
                    HttpSession session = req.getSession();  // Obtain the session object
                    session.setAttribute("user", user);  // Set the user object in the session

                    // Determine the dashboard page based on user type
                    String dispatcherPage;
                    switch (userType) {
                        case "admin":
                            dispatcherPage = "AdminDashboard.jsp";
                            break;
                        case "teacher":
                            dispatcherPage = "TeacherDashboard.jsp";
                            break;
                        default:
                            dispatcherPage = "StudentDashboard.jsp";
                    }

                    // Add user details to the request attributes
                    req.setAttribute("userName", userName);
                    req.setAttribute("userType", userType);
                    req.setAttribute("userEmail", email);

                    // Forward to the respective dashboard
                    RequestDispatcher dispatcher = req.getRequestDispatcher(dispatcherPage);
                    dispatcher.forward(req, resp);
                } else {
                    // Invalid login credentials
                    req.setAttribute("errorMessage", "Invalid email or password. Please try again.");
                    RequestDispatcher dispatcher = req.getRequestDispatcher("error.jsp");
                    dispatcher.forward(req, resp);
                }
            }
        } catch (ClassNotFoundException e) {
            // Handle JDBC driver class not found exception
            req.setAttribute("errorMessage", "An internal error occurred. Please try again later.");
            RequestDispatcher dispatcher = req.getRequestDispatcher("error.jsp");
            dispatcher.forward(req, resp);
        } catch (SQLException e) {
            // Handle SQL exceptions
            req.setAttribute("errorMessage", "Database connection failed. Please try again later.");
            RequestDispatcher dispatcher = req.getRequestDispatcher("error.jsp");
            dispatcher.forward(req, resp);
        }
    }
}
