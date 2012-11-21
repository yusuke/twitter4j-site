package jika;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.Properties;

public class RequestContext {

    String resourcePath;

    ServletContext context = null;

    private String encoding;
    Properties props = null;
    HttpServletRequest req = null;

    public RequestContext(ServletContext context, HttpServletRequest req,
                          String resourcePath) {
        this.req = req;
        this.resourcePath = resourcePath;
        this.context = context;
        this.encoding = context.getInitParameter("encoding");
    }

    public RequestContext(String resourcePath) {
        this.resourcePath = resourcePath;
        this.encoding = "UTF-8";
    }

    public void setProperty(String name, String value) {
        if (req != null) {
            req.setAttribute(name, value);
        } else {
            if(props == null){
                // test purpose
                props = new Properties();
            }
            props.setProperty(name, value);
        }
    }

    public String getProperty(String name) {
        if (req != null) {
            return (String) req.getAttribute(name);
        } else {
            if(props == null){
                // test purpose
                props = new Properties();
            }
            return props.getProperty(name);
        }
    }

    public String getResourcePath() {
        if (resourcePath.endsWith("/")) {
            return resourcePath + "index.html";
        } else {
            return resourcePath;
        }
    }

    public void setResourcePath(String newResourcePath) {
        this.resourcePath = newResourcePath;
    }

    public BufferedReader getResourceAsReader(String path) throws IOException {
        return new BufferedReader(new InputStreamReader(getResourceAsStream(path), encoding));
    }

    public InputStream getResourceAsStream(String path) throws IOException {
        InputStream is;
        if (null != context) {
            String realPath = context.getRealPath(path);
            if (null != realPath) {
                try {
                    is = new FileInputStream(realPath);
                } catch (FileNotFoundException fnfe) {
                    is = new FileInputStream(realPath + "/index.html");
                }
            } else {
                is = context.getResourceAsStream(path);
            }
        } else {
            is = new FileInputStream(path);
        }
        return is;
    }
}
