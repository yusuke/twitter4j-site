package jika;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.ArrayList;
import java.util.regex.Pattern;
public class JikaFilter implements Filter {
  private String encoding;
  private List decorators = new ArrayList();

  public void destroy() {
  }
  Object flag = new Object();

  public void doFilter(ServletRequest request, ServletResponse response,FilterChain chain) throws IOException, ServletException {
    String encoding = this.encoding;
    HttpServletRequest req = (HttpServletRequest)request;
    HttpServletResponse res = (HttpServletResponse)response;
    String resourcePath = req.getRequestURI().substring(req.getContextPath().length());
    RequestContext requestContext = new RequestContext(config.getServletContext(),req,resourcePath);
    request.setAttribute("context", requestContext);
//    if(null != request.getAttribute("flag")){
//      request.setAttribute("flag",flag);
    for (int i = 0; i < decorators.size(); i++) {
      int returned = ((Decorator) decorators.get(i)).parseRequest(req,res,requestContext);
      System.out.println("returned:"+returned + " from " + decorators.get(i).getClass().getName());
      switch(returned){
        case Decorator.OK:
          //do nothing
          break;
        case Decorator.REDIRECT:
          System.out.println("redirecting:"+requestContext.getResourcePath());
          res.sendRedirect(requestContext.getResourcePath());
          return;
        case Decorator.FORWARD:
          System.out.println("forwarding:"+requestContext.getResourcePath());
          req.getRequestDispatcher(requestContext.getResourcePath()).forward(req,res);
          return;
        case Decorator.MOVED_PERMANENTLY:
          System.out.println("moved:"+requestContext.getResourcePath());
          res.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
          res.setHeader("Location",requestContext.getResourcePath());
          return;
        default:
          //do nothing
      }
    }
//    }else{
//      chain.doFilter(request,response);
//    }

    if(pattern.matcher(requestContext.getResourcePath()).matches()){
      System.out.println("matches!!!");
      WebContent content = new WebContent();
      if(requestContext.getResourcePath().startsWith("/WEB-INF/admin/")){
        encoding = "UTF-8";
      }
      ByteArrayResponseWrapper wrapper = new ByteArrayResponseWrapper(res);
      wrapper.setContentType("text/html; charset=UTF-8");
      request.getRequestDispatcher(requestContext.getResourcePath()).include(req,wrapper);
      wrapper.finish();

      content.setWholeContent(wrapper.getString(encoding));
      response.setContentType(wrapper.getContentType());
      content.finish();

      for (int i = 0; i < decorators.size(); i++) {
        ((Decorator) decorators.get(i)).decorate(requestContext, content, content);
        content.finish();
      }
      byte[] theContent = content.toString().getBytes(encoding);
      response.setContentLength(theContent.length);
      response.getOutputStream().write(theContent);
    }else{
      System.out.println("doesn't match!!!");
      request.getRequestDispatcher(requestContext.getResourcePath()).forward(req,res);
    }
  }
  FilterConfig config;
  Pattern pattern = null;
  public void init(FilterConfig config) throws ServletException {
    this.config = config;
    this.encoding = config.getServletContext().getInitParameter("encoding");

    String[] list = config.getServletContext().getInitParameter("decorators").split(",");
    System.out.println("#of decorators:"+ list.length);
    for(String str : list){
      System.out.println("decorator:"+ str);
    }
    this.decorators = DecoratorRepository.initialize(list,config.getServletContext());
    String matchPattern = config.getInitParameter("match-pattern");
    System.out.println("match-pattern:"+matchPattern);
    if(null == matchPattern){
      throw new ServletException("match-pattern not set");
    }
    pattern = Pattern.compile(matchPattern);
  }
}
