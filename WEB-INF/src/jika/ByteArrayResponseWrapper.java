/*
 * ServletRequestWrapper.java
 *
 * Created on 2006/11/22, 23:58
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package jika;
import java.io.UnsupportedEncodingException;
import javax.servlet.ServletOutputStream;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
/**
 *
 * @author yusukey
 */
public class ByteArrayResponseWrapper extends HttpServletResponseWrapper {
  
  private String contentType;
  
  private ByteArrayServletOutputStream output;
  
  public ByteArrayResponseWrapper(HttpServletResponse response) {
    super(response);
    output = new ByteArrayServletOutputStream();
  }
  
  public ServletOutputStream getOutputStream() {
    return output;
  }
  PrintWriter writer = null;
  public PrintWriter getWriter() throws IOException {
    return writer = new PrintWriter(new OutputStreamWriter(output,"UTF-8"));
  }
  
  public byte[] toByteArray() {
    return this.output.getBytes();
  }
  public String getString(String defaultEncoding){
    try {
      if(null != writer){
        return new String(toByteArray(),"UTF-8");
      }else{
        return new String(toByteArray(),defaultEncoding);
      }
    } catch (UnsupportedEncodingException ex) {
      return new String(toByteArray());
    }
  }
  public void setContentType(String type) {
    super.setContentType(type);
    this.contentType = type;
  }
  public String getContentType() {
    return this.contentType;
  }
  public void finish()throws IOException{
    if(null != writer){
      writer.close();
    }
    if(null != output){
      output.close();
    }
  }
}

class ByteArrayServletOutputStream extends ServletOutputStream {
  private ByteArrayOutputStream baos = new ByteArrayOutputStream();
  
  public ByteArrayServletOutputStream() {
  }
/*  public void print(String str)throws IOException{
    super.print(str);
  }*/
  
  public void write(int i) {
    baos.write(i);
  }
  
  public void write(byte[] array, int start, int length) throws java.io.
      IOException {
    baos.write(array, start, length);
  }
  
  public byte[] getBytes() {
    return baos.toByteArray();
  }
}