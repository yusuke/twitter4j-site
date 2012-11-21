package jika.decorators;


import jika.Decorator;
import jika.Input;
import jika.Output;
import jika.RequestContext;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Html2JSPDecorator implements Decorator {

    public void decorate(RequestContext context, Input input, Output output) {
        String line;
        while (null != (line = input.getNextLine())) {
            output.addNextLine(line);
        }
    }

    public int parseRequest(HttpServletRequest req, HttpServletResponse res, RequestContext context) {
        String resourcePath = context.getResourcePath();
        if (!resourcePath.contains("/javadoc/") && !resourcePath.contains("/oldjavadocs/") && resourcePath.endsWith(".html")) {
            resourcePath = resourcePath.substring(0, resourcePath.length() - 5) + ".jsp";
            context.setResourcePath(resourcePath);
            return FORWARD;
        } else {
            return OK;
        }
    }

    public void init(ServletContext context) throws ServletException {
    }
}
