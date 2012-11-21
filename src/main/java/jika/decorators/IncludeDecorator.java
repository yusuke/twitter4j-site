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
import java.util.List;

public class IncludeDecorator extends AbstractTagSupportDecorator {

    final String getBeginTagName() {
        return "<include>";
    }

    final String getEndTagName() {
        return "</include>";
    }

    void tagEnded(RequestContext context, String content, Output output)
            throws IOException {
        List<String> list = new ArrayList<>();
        list.add(context.getResourcePath());
        include(context, content, output, list);

    }

    void include(RequestContext context, String path, Output output, List<String> list) throws IOException {
        try (BufferedReader br = context.getResourceAsReader(path)) {
            boolean firstLine = true;
            String line;
            while ((line = br.readLine()) != null) {
                int index;
                if ((index = line.indexOf(getBeginTagName())) != -1) {
                    if (firstLine) {
                        output.append(line.substring(0, index));
                        firstLine = false;
                    } else {
                        output.addNextLine(line.substring(0, index));
                    }
                    int endIndex = line.indexOf(getEndTagName());
                    String includePath = line.substring(index
                            + getBeginTagName().length(), endIndex);
                    for (int i = 0; i < list.size(); i++) {
                        if (includePath.equals(list.get(i))) {
                            StringBuilder buf = new StringBuilder("Found an infinite inclusion ");
                            for (String aList : list) {
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
                } else if (firstLine) {
                    output.append(line);
                    firstLine = false;
                } else {
                    output.addNextLine(line);
                }
            }
        }
    }

    public int parseRequest(HttpServletRequest req, HttpServletResponse res, RequestContext context) {
        return OK;

    }

    public void init(ServletContext context) throws ServletException {
    }

}
