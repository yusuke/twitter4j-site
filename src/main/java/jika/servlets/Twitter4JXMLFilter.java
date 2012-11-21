package jika.servlets;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class Twitter4JXMLFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        String path = ((HttpServletRequest)req).getServletPath();
        path = path.substring(path.lastIndexOf("/"));
        if (path.contains("twitter4j") && path.contains(".xml")) {
            int versionStart = path.indexOf("-");
            int versionEnd = path.lastIndexOf(".xml");
            String version;
            if(versionStart == -1){
                version = "1.0.0";
            }else{
                version = path.substring(versionStart + 1, versionEnd);
            }
            res.setContentType("application/xml");
            res.getWriter().print("<client>\n" +
                    "\t<name>Twitter4J</name>\n" +
                    "\t<version>" + version + "</version>\n" +
                    "\t<author>\n" +
                    "\t\t<name>Yusuke Yamamoto</name>\n" +
                    "\t\t<email>yusuke@mac.com</email>\n" +
                    "\t\t<twitter>yusukey</twitter>\n" +
                    "\t</author>\n" +
                    "\t<url>http://twitter4j.org/</url>\n" +
                    "\t<twitter>Twitter4J</twitter>\n" +
                    "\t<description>Twitter4J is a Java wrapper for Twitter API.</description>\n" +
                    "</client>\n"
            );
        } else {
            chain.doFilter(req, res);
        }
    }

    @Override
    public void destroy() {
    }
}