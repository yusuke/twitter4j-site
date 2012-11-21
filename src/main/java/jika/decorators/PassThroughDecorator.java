package jika.decorators;

import jika.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PassThroughDecorator implements Decorator {

    public void decorate(RequestContext context, Input input, Output output) {
        String line;
        while (null != (line = input.getNextLine())) {
            output.addNextLine(line);
        }
    }

    public int parseRequest(HttpServletRequest req, HttpServletResponse res, RequestContext context) {
        String resourcePath = context.getResourcePath();
        boolean willPassThrough = false;
        for (String passThrough : passThroughDirectories) {
            if (context.getResourcePath().startsWith(passThrough)) {
                willPassThrough = true;
                break;
            }
        }
        if (willPassThrough) {
            context.setResourcePath(resourcePath);
            return REDIRECT;
        }
        return OK;
    }

    private String[] passThroughDirectories = null;
    public void init(ServletContext context) throws ServletException {
        String passThroughDirectoriesParam = context.getInitParameter("pass-through-directories");
        if (null == passThroughDirectoriesParam) {
            throw new ServletException("pass-through-directories not set");
        }
        passThroughDirectories = passThroughDirectoriesParam.split(",");
    }
}
