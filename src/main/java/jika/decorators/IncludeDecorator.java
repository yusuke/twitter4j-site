package jika.decorators;

import jika.Output;
import jika.RequestContext;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;

public class IncludeDecorator extends AbstractTagSupportDecorator {

    final String getBeginTagName() {
        return "<include>";
    }

    final String getEndTagName() {
        return "</include>";
    }

    void tagEnded(RequestContext context, String content, Output output)
            throws IOException {
        ArrayList list = new ArrayList();
        list.add(context.getResourcePath());
        include(context, content, output, list);

    }

    void include(RequestContext context, String path, Output output, ArrayList list) throws IOException {
        BufferedReader br = null;
        try {
            boolean firstline = true;
            br = context.getResourceAsReader(path);
            String line;
            while (null != (line = br.readLine())) {
                int index;
                if (-1 != (index = line.indexOf(getBeginTagName()))) {
                    if (firstline) {
                        output.append(line.substring(0, index));
                        firstline = false;
                    } else {
                        output.addNextLine(line.substring(0, index));
                    }
                    int endIndex = line.indexOf(getEndTagName());
                    String includePath = line.substring(index
                            + getBeginTagName().length(), endIndex);
                    for (int i = 0; i < list.size(); i++) {
                        if (includePath.equals(list.get(i))) {
                            StringBuffer buf = new StringBuffer("Found an infinite inclusion ");
                            for (int j = 0; j < list.size(); j++) {
                                buf.append(">").append(list.get(i));
                            }
                            buf.append(">*").append(includePath);
                            throw new IOException(buf.toString());
                        }
                    }
                    list.add(includePath);
                    include(context, includePath, output, list);
                    list.remove(includePath);
                    output.append(line.substring(endIndex
                            + getEndTagName().length()));
                } else {
                    if (firstline) {
                        output.append(line);
                        firstline = false;
                    } else {
                        output.addNextLine(line);
                    }
                }
            }
        } finally {
            if (null != br) {
                br.close();
            }
        }
    }

    public int parseRequest(HttpServletRequest req, HttpServletResponse res, RequestContext context) {
        return OK;

    }

    public void init(ServletContext context) throws ServletException {
    }

}
