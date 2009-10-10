package jika.controllers;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.FileFilter;
import jika.Controller;

public class AddFolderController extends AbstractFileController implements Controller {
  
  public String execute(ServletContext context,HttpServletRequest request,
      HttpServletResponse response) throws IOException, ServletException {
    String path = request.getParameter("path");
    if(null == path){
      path = "/";
    }
    String safePath = ensureSafePath(context,path);
    new File(safePath).mkdir();
    response.getWriter().print("ok");
    return null;
  }
}
