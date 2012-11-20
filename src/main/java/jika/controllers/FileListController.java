package jika.controllers;

import jika.Controller;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;

public class FileListController extends AbstractFileController implements Controller {

    public String execute(ServletContext context, HttpServletRequest request,
                          HttpServletResponse response) throws IOException, ServletException {
        String path = request.getParameter("path");
        if (null == path) {
            path = "/";
        }
        String safePath = ensureSafePath(context, path);
        request.setAttribute("path", path);
        request.setAttribute("files", getFiles(new File(safePath)));
        return "/WEB-INF/admin/fileList.jsp";
    }

    /*package*/ File[] getFiles(File file) {
        return file.listFiles(notBackupFile);
    }

    FileFilter notBackupFile = new FileFilter() {
        public boolean accept(File file) {
            return !file.getName().matches(".*(META-INF|WEB-INF|bak|DS_Store)$");
        }
    };
}
