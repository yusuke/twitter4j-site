/*
 * FileListControllerTest.java
 * JUnit based test
 *
 * Created on 2006/12/07, 22:33
 */

package jika.controllers;

import junit.framework.*;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileFilter;
import jika.Controller;

/**
 *
 * @author yusukey
 */
public class FileListControllerTest extends TestCase {
  
  public FileListControllerTest(String testName) {
    super(testName);
  }
  
  protected void setUp() throws Exception {
  }
  
  protected void tearDown() throws Exception {
  }
  public static void main(String args[]){
    junit.textui.TestRunner.run(FileListControllerTest.class);
    
  }
  
  /**
   * Test of execute method, of class jika.controllers.FileListController.
   */
  public void testExecute() throws Exception {
    
    FileListController instance = new FileListController();
    
    String expResult = "";
    File[] files = instance.getFiles(new File("."));
/*    for(int i=0;i<files.length;i++){
      System.out.println(files[i]);
    }*/
    assertEquals("number of files",13,files.length);
  }
  
}
