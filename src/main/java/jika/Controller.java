package jika;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface Controller {
    String execute(ServletContext context, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException;
}
