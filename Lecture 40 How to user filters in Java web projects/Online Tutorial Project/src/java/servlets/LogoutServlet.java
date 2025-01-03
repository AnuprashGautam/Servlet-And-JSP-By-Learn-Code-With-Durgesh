package servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LogoutServlet", urlPatterns = "/Logout")
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Get the current session
        HttpSession session = req.getSession(false); // false: don't create a new session if one doesn't exist

        if (session != null) {
            // Invalidate the session to log the user out
            session.invalidate();
        }

        // Optionally, set a message indicating the user has been logged out
        req.setAttribute("message", "You have successfully logged out.");

        // Redirect to login page or homepage after logout
        RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
        dispatcher.forward(req, resp);
    }
}
