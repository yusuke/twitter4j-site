package jika.controllers;

import jika.Controller;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;

public class GetBackupFilesController extends AbstractFileController implements Controller {

    public String execute(ServletContext context, HttpServletRequest request,
                          HttpServletResponse response) throws IOException, ServletException {
        String path = request.getParameter("path");
        path = ensureSafePath(context, path);
        File file = new File(path);
        File[] toReturn = null;
        ;
        if (file.isFile() && file.exists()) {
            File[] backupFiles = getBackupFiles(file);
            toReturn = new File[backupFiles.length + 1];
            toReturn[0] = file;
            for (int i = 0; i < backupFiles.length; i++) {
                toReturn[i + 1] = backupFiles[i];
            }
        }
        request.setAttribute("backupfiles", toReturn);
        return "/WEB-INF/admin/backupFiles.jsp";
    }

    /*package*/ File[] getBackupFiles(File file) {
        File parent = file.getParentFile();
        String name = file.getName();
        return parent.listFiles(new BackupFileFilter(name));
    }

    class BackupFileFilter implements FileFilter {
        String name_;

        BackupFileFilter(String name) {
            name_ = name;
        }

        public boolean accept(File file) {
            return file.getName().matches(name_ + "\\.[0-9]\\.bak$");
        }
    }


}
