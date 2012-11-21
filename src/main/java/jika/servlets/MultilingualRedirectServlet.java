package jika.servlets;

import jika.LanguageHelper;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Locale;

/**
 * redirect requests coming to / or index.html to /language/index.html
 */
public class MultilingualRedirectServlet extends HttpServlet {
    LanguageHelper languageHelper;

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String path = getRedirectPath(req.getServletPath(),req.getLocales());
        res.sendRedirect(req.getContextPath()+path);
    }

    String getRedirectPath(String path, Enumeration requestLocales){
        return "/"+languageHelper.getPreferredLanguage(requestLocales)+"/index.html";
    }

    public void destroy() {
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        init("languages", config.getServletContext().getInitParameter("languages"));
    }
    public void init(String name, String value) throws ServletException{
        if (null == name) {
            throw new ServletException(name + " not set.");
        }
        switch(name){
            case "languages":
                languageHelper = new LanguageHelper(value.split(","));
                break;
            default:
        }
    }
}