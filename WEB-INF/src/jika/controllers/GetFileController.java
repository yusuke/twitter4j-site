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

import jika.Controller;

import javax.servlet.ServletContext;

public class GetFileController extends AbstractFileController implements Controller {
  
  public String execute(ServletContext context, HttpServletRequest request,
      HttpServletResponse response) throws IOException, ServletException {
    String path = request.getParameter("path");
    path = ensureSafePath(context, path);
    String encoding = context.getInitParameter("encoding");
    BufferedReader br = null;
    response.setContentType("text/plain;charset=UTF-8");
    PrintWriter writer = response.getWriter();
    try {
      br = new BufferedReader(new InputStreamReader(new FileInputStream(
          path), encoding));
      String line;
      while (null != (line = br.readLine())) {
        writer.println(line);
      }
    } finally {
      try {
        br.close();
      } catch (Exception ex) {
      }
    }
    return null;
  }
  
}
