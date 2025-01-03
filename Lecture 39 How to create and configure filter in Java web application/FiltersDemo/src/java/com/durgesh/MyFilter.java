package com.durgesh;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class MyFilter implements Filter{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // We will ignore this method.
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("Before filter");
        
        // Pre-processing tasks
        // ....
        // ....
        
        chain.doFilter(request, response);
        
        System.out.println("After servlet");
        
        // Post-processing tasks
        // ....
        // ....
    }

    @Override
    public void destroy() {
        // We will ignore this method too.
    }
    
}
