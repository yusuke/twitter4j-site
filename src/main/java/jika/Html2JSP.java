package jika;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class Html2JSP implements Filter {
    public void init(javax.servlet.FilterConfig config) {
    }

    public void doFilter(ServletRequest request, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        String path = req.getServletPath();
        if (!path.contains("javadoc/") && !path.contains("oldjavadocs/") && path.endsWith(".html") && (path.startsWith("/en/") || path.startsWith("/jp/"))) {
            path = path.substring(3, path.lastIndexOf(".html")) + ".jsp";
            System.out.println("forwarding:" + path);
            req.getRequestDispatcher(path).forward(req, res);
        } else {
            chain.doFilter(request, res);
//application.getRequestDispatcher("/supported-api.jsp").forward(request,response);
        }
    }

    public void destroy() {
    }
}

