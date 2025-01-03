package filters;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import users.User;

public class AdminAuthFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialization, can be ignored for now.
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();

        // Fetching the User object from the session
        User user=(User)session.getAttribute("user");  // Make sure 'user' is set in the session.

        if (user != null && "admin".equals(user.getType())) {  
            chain.doFilter(request, response);  // Allow the request to proceed if the user is admin only.
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("auth_error.jsp");
            dispatcher.forward(request, response);
        }
    }

    @Override
    public void destroy() {
        // Cleanup code, can be ignored for now.
    }
}
