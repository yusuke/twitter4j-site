/*
 * AdminDecorator.java
 *
 * Created on 2006/11/23, 13:38
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package jika.decorators;
import jika.Decorator;
import jika.Input;
import jika.Output;
import jika.RequestContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContext;

/**
 *
 * @author yusukey
 */
public class AdminDecorator  implements Decorator {
  
	public void decorate(RequestContext context, Input input, Output output) {
    output.setWholeContent(input.getWholeContent());
	}
  public int parseRequest(HttpServletRequest req, HttpServletResponse res,RequestContext context){
    int index;
    String resourcePath = context.getResourcePath();
    if(-1 != (index = resourcePath.indexOf("/",1))){
      String path = resourcePath.substring(1,index);
      if(adminPath.equals(path)){
        context.setResourcePath("/WEB-INF/admin"+resourcePath.substring(adminPathLength));
      }
    }
    return OK;
    
  }
  private String adminPath = null;
  private int adminPathLength = -1;

  public void init(ServletContext context) throws ServletException {
    adminPath = context.getInitParameter("admin-path");
    if(null == adminPath || "".equals(adminPath)){
      throw new ServletException("admin-path not set.");
    }
 
    adminPathLength = adminPath.length()+1;
  }
  
}
