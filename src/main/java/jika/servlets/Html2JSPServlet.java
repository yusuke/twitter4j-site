package jika.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Html2JSPServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String path = req.getServletPath();
        if (path.startsWith("/en/") || path.startsWith("/ja/")) {
            if (!path.startsWith("/maven") && !path.contains("javadoc/") && !path.contains("oldjavadocs/") && path.endsWith(".html")) {
                path = path.substring(3, path.lastIndexOf(".html")) + ".jsp";
            } else {
                path = path.substring(3);
            }
        }
        req.getRequestDispatcher(path).forward(req, res);
    }

    public void destroy() {
    }
}


