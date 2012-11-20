package jika;

public class WebContent implements Input, Output {
    StringBuffer buf = null;
    StringBuffer nextBuf = null;
    int cursor = 0;

    public WebContent() {
        cursor = 0;
    }

    public String getNextLine() {
        if (-1 == cursor) {
            return null;
        } else {
            int oldCursor = cursor;
            cursor = buf.indexOf("\n", oldCursor);
            if (-1 != cursor) {
                return buf.substring(oldCursor, cursor++);
            } else if (oldCursor != buf.length()) {
                return buf.substring(oldCursor);
            } else {
                return null;
            }
        }
    }

    public String getWholeContent() {
        return buf.toString();
    }

    public void addNextLine(String line) {
        if (nextBuf == null) {
            nextBuf = new StringBuffer(line);
        } else {
            nextBuf.append("\n").append(line);
        }
    }

    public void append(String str) {
        nextBuf.append(str);
    }

    public void setWholeContent(String line) {
        nextBuf = new StringBuffer(line);
    }

    public void setWholeContent(StringBuffer content) {
        nextBuf = content;
    }

    public void finish() {
        if (null == nextBuf) {
            buf = new StringBuffer();
        } else {
            buf = nextBuf;
        }
        nextBuf = null;
        cursor = 0;
    }

    public String toString() {
        return buf.toString();
    }
}
