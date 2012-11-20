/*
 * AbstractFileController.java
 *
 * Created on 2006/11/29, 19:59
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package jika.controllers;

import javax.servlet.ServletContext;
import java.io.File;
import java.io.IOException;

/**
 * @author yusukey
 */
public abstract class AbstractFileController implements jika.Controller {

    public AbstractFileController() {
    }

    protected String ensureSafePath(ServletContext context, String path) throws IOException {
        String root = new File(context.getRealPath("/")).getCanonicalPath();
        String thePath = new File(context.getRealPath(path)).getCanonicalPath();
        if (thePath.startsWith(root)) {
            return thePath;
        } else {
            return root;
        }
    }

}
