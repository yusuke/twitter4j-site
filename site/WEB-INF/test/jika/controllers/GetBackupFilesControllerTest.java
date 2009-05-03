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
public class GetBackupFilesControllerTest extends TestCase {
  
  public GetBackupFilesControllerTest(String testName) {
    super(testName);
  }
  
  protected void setUp() throws Exception {
  }
  
  protected void tearDown() throws Exception {
  }
  public static void main(String args[]){
    junit.textui.TestRunner.run(GetBackupFilesControllerTest.class);
    
  }
  
  /**
   * Test of execute method, of class jika.controllers.FileListController.
   */
  public void testExecute() throws Exception {
    
    GetBackupFilesController instance = new GetBackupFilesController();
    
    File[] files = instance.getBackupFiles(new File("WebContent/index.html"));
    assertEquals("number of files",2,files.length);
    assertEquals("index.html.1.bak",files[0].getName());
    assertEquals("index.html.2.bak",files[1].getName());
    files = instance.getBackupFiles(new File("WebContent/doesnotexist"));
  }
  
}
