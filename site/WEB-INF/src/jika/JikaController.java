package jika;

import java.io.IOException;
import java.util.Map;
import java.util.HashMap;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: JikaController
 *
 */
public class JikaController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
  private Map controllers = new HashMap();
  public void init(ServletConfig config)throws ServletException{
    super.init(config);
    controllerPackage =  config.getInitParameter("controller-package");
    if(null == controllerPackage){
      throw new ServletException("controller-package not set.");
    }
    controllerPackage+=".";
  }
  private String controllerPackage;
    /* (non-Java-doc)
     * @see javax.servlet.http.HttpServlet#HttpServlet()
     */
  public JikaController() {
    super();
  }
  
  /* (non-Java-doc)
   * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String path = request.getServletPath();
    path = path.substring(path.lastIndexOf("/")+1,path.lastIndexOf("."));
    response.setHeader("Expires", "Thu, 01 Jun 1970 00:00:00 GMT");
    response.setHeader("Pragma","no-cache");
    response.setHeader("Cache-Control","no-cache");
    Controller controller = (Controller)controllers.get(path);
    if(null == controller){
      // request for admin.action reqires jika.controllers.AdminController
      synchronized(controllers){
        String className = controllerPackage+Character.toUpperCase(path.charAt(0))+path.substring(1)+"Controller";
        try {
          controller =(Controller)Class.forName(className).newInstance();
          controllers.put(path,controller);
        } catch (ClassCastException e) {
          response.getWriter().write(className + " does not implement jika.Controller");
        } catch (InstantiationException e) {
          response.getWriter().write("No controller for '"+path+ "' found.");
        } catch (IllegalAccessException e) {
          response.getWriter().write("No controller for '"+path+ "' found.");
        } catch (ClassNotFoundException e) {
          response.getWriter().write("No controller for '"+path+ "' found.");
        }
      }
    }
    if(null != controller){
      String forward = controller.execute(getServletContext(),request, response);
      if(null != forward){
        getServletContext().getRequestDispatcher(forward).include(request,response);
      }
    }
  }
  
  /* (non-Java-doc)
   * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
  }
}