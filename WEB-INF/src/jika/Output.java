package jika;

public interface Output {
	void addNextLine(String line);
	void append(String msg);
	void setWholeContent(String line);
	void setWholeContent(StringBuffer line);
}
