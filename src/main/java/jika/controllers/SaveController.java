package jika.controllers;

import jika.BackUp;
import jika.Controller;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

public class SaveController extends AbstractFileController implements Controller {

    public String execute(ServletContext context, HttpServletRequest request,
                          HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        String path = request.getParameter("path");
        path = ensureSafePath(context, path);
        BufferedWriter bw = null;
        String encoding = context.getInitParameter("encoding");
        String content = request.getParameter("content");
        StringBuffer buf = null;
        File file = new File(path);
        new BackUp().willBeSaved(path);
        try {
            bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(
                    path), encoding));
            bw.write(content);
        } catch (IOException ioe) {

        } finally {
            try {
                bw.close();
            } catch (Exception ex) {
            }
        }
        response.getWriter().print("ok");
        return null;
    }


}
