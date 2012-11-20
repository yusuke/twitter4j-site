package jika.decorators;

import jika.Decorator;
import jika.Input;
import jika.Output;
import jika.RequestContext;

import java.io.IOException;

public abstract class AbstractTagSupportDecorator implements Decorator {

    abstract String getBeginTagName();

    abstract String getEndTagName();

    public final int OUTER_TAG = 0;

    public final int INNER_TAG = 1;

    public void decorate(RequestContext context, Input input, Output output) throws IOException {
        String line;
        int status = OUTER_TAG;
        int tagLocation;
        StringBuffer buf = null;
        while (null != (line = input.getNextLine())) {
            boolean appended = false;
            int cursor = 0;
            if (line.length() == 0) {
                //empty line
                output.addNextLine("");
            } else {
                while (cursor < line.length()) {
                    switch (status) {
                        case OUTER_TAG:
                            tagLocation = line.indexOf(getBeginTagName(), cursor);
                            if (-1 == tagLocation) {
                                appended = append(output, line.substring(cursor), appended);
                                cursor = line.length();
                            } else {
                                //tag begin found
                                buf = new StringBuffer();
                                appended = append(output, line.substring(cursor, tagLocation), appended);
                                status = INNER_TAG;
                                cursor = tagLocation + getBeginTagName().length();
                            }
                            break;
                        case INNER_TAG:
                            tagLocation = line.indexOf(getEndTagName(), cursor);
                            if (-1 == tagLocation) {
                                //still in the tag
                                buf.append(line.substring(cursor)).append("\n");
                                cursor = line.length();
                            } else {
                                //tag end found
                                buf.append(line.substring(cursor, tagLocation));
                                tagEnded(context, buf.toString(), output);
                                cursor = tagLocation + getEndTagName().length();
                                status = OUTER_TAG;
                            }
                            break;
                        default:
                            // will never go here
                    }
                }
            }
        }
        if (status == INNER_TAG) {
            throw new IOException(getBeginTagName() + " not closed.");
        }

    }

    abstract void tagEnded(RequestContext context, String content, Output output) throws IOException;


    private boolean append(Output output, String msg, boolean appended) {
        if (appended) {
            output.append(msg);
        } else {
            output.addNextLine(msg);
        }
        return true;
    }

}
