package jika.filters;

import jika.*;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class JikaFilter implements Filter {
    private String encoding;
    private List<Decorator> decorators;

    public void destroy() {
    }

    private static final Object FLAG = new Object();

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        if (null != request.getAttribute("FLAG")) {
            chain.doFilter(request, response);
            return;
        }
        request.setAttribute("FLAG", FLAG);

        String encoding = this.encoding;
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        String resourcePath = req.getServletPath();
        RequestContext requestContext = new RequestContext(config.getServletContext(), req, resourcePath);
        request.setAttribute("context", requestContext);

        for (Decorator decorator : decorators) {
            int returned = decorator.parseRequest(req, res, requestContext);
            switch (returned) {
                case Decorator.OK:
                    //do nothing
                    break;
                case Decorator.REDIRECT:
                    res.sendRedirect(requestContext.getResourcePath());
                    return;
                case Decorator.MOVED_PERMANENTLY:
                    res.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
                    res.setHeader("Location", requestContext.getResourcePath());
                    return;
                default:
                    //do nothing
            }
        }
        boolean willPassThrough = false;
        for(String passThrough : passThroughDirectories){
            if(requestContext.getResourcePath().startsWith(passThrough)){
                willPassThrough = true;
                break;
            }
        }

        if (!willPassThrough && pattern.matcher(requestContext.getResourcePath()).matches()) {
            WebContent content = new WebContent();
            if (requestContext.getResourcePath().startsWith("/WEB-INF/admin/")) {
                encoding = "UTF-8";
            }
            ByteArrayResponseWrapper wrapper = new ByteArrayResponseWrapper(res);
            request.getRequestDispatcher(requestContext.getResourcePath()).include(req, wrapper);
            wrapper.finish();
            content.setWholeContent(wrapper.getString(encoding));
            response.setContentType(wrapper.getContentType());
            content.finish();

            for (Decorator decorator : decorators) {
                decorator.decorate(requestContext, content, content);
                content.finish();
            }
            byte[] theContent = content.toString().getBytes(encoding);
            response.setContentLength(theContent.length);
            response.getOutputStream().write(theContent);
            return;
        }
        request.getRequestDispatcher(requestContext.getResourcePath()).forward(req, res);
    }

    FilterConfig config;
    Pattern pattern = null;
    String[] passThroughDirectories = null;

    public void init(FilterConfig config) throws ServletException {
        this.config = config;
        this.encoding = config.getServletContext().getInitParameter("encoding");

        String[] list = config.getServletContext().getInitParameter("decorators").split(",");
        this.decorators = DecoratorRepository.initialize(list, config.getServletContext());
        String matchPattern = config.getInitParameter("match-pattern");
        pattern = Pattern.compile(matchPattern);

        String passThroughDirectoriesParam = config.getServletContext().getInitParameter("pass-through-directories");
        if (null == passThroughDirectoriesParam) {
            throw new ServletException("pass-through-directories not set");
        }
        passThroughDirectories = passThroughDirectoriesParam.split(",");
    }
}
