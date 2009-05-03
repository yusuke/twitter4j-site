package jika;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContext;

public interface Controller {
	String execute(ServletContext context,HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException;
}
