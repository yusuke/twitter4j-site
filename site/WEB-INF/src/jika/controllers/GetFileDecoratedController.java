package jika.controllers;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import jika.Controller;
import jika.Decorator;
import jika.WebContent;
import jika.RequestContext;
import jika.DecoratorRepository;

import javax.servlet.ServletContext;

public class GetFileDecoratedController extends AbstractFileController implements Controller {
  List decorators = DecoratorRepository.getDecorators();
  public String execute(ServletContext context, HttpServletRequest req,
      HttpServletResponse res) throws IOException, ServletException {
    req.setCharacterEncoding("UTF-8");
    String path = req.getParameter("path");
    path = path.substring(path.indexOf(req.getContextPath())+req.getContextPath().length());
    RequestContext requestContext = new RequestContext(context,req,path);
    for (int i = 0; i < decorators.size(); i++) {
      ((Decorator) decorators.get(i)).parseRequest(req,res,requestContext);
    }
    BufferedReader br = null;
    WebContent content = new WebContent();
    content.setWholeContent(req.getParameter("content"));
    content.finish();
    for (int i = 0; i < decorators.size(); i++) {
      ((Decorator) decorators.get(i)).decorate(requestContext, content, content);
      content.finish();
    }
    byte[] theContent = content.toString().getBytes("UTF-8");
    res.setContentType("text/html; charset=UTF-8");
    res.setContentLength(theContent.length);
    res.getOutputStream().write(theContent);
    
    return null;
  }
}
