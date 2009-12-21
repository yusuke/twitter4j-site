package jika;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public interface Decorator {
  public static final int OK = 0;
  public static final int MOVED_TEMPORARILY = 1;
  public static final int REDIRECT = 1;
  public static final int FORWARD = 2;
  public static final int MOVED_PERMANENTLY = 3;
  
  int parseRequest(HttpServletRequest req, HttpServletResponse res,RequestContext context);
	void decorate(RequestContext context,Input input,Output output)throws IOException;
	void init(ServletContext context)throws ServletException;
}
