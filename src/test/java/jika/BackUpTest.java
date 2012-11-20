/*
 * BackUptestdirectory.java
 * JUnit based test
 *
 * Created on 2006/11/20, 1:36
 */

package jika;
import jika.BackUp;
import junit.framework.TestCase;
import java.io.File;
/**
 *
 * @author yusukey
 */
public class BackUpTest extends junit.framework.TestCase {
  
  public BackUpTest(String testName) {
    super(testName);
  }
  public static void main(String args[]){
    junit.textui.TestRunner.run(BackUpTest.class);
    
  }
  public void testBackup(){
    
    String path = "testdirectory";
    File file = new File(path);
    BackUp backup = new BackUp();
    backup.willBeSaved(path);
    file.mkdir();
    backup.willBeSaved(path);
    assertTrue(new File("testdirectory.1.bak").exists());
    assertFalse(new File("testdirectory.2.bak").exists());
    file.mkdir();
    backup.willBeSaved(path);
    assertTrue(new File("testdirectory.1.bak").exists());
    assertTrue(new File("testdirectory.2.bak").exists());
    assertFalse(new File("testdirectory.3.bak").exists());
    file.mkdir();
    backup.willBeSaved(path);
    file.mkdir();
    backup.willBeSaved(path);
    file.mkdir();
    backup.willBeSaved(path);
    file.mkdir();
    backup.willBeSaved(path);
    file.mkdir();
    backup.willBeSaved(path);
    file.mkdir();
    backup.willBeSaved(path);
    file.mkdir();
    backup.willBeSaved(path);
    file.mkdir();
    backup.willBeSaved(path);
    file.mkdir();
    backup.willBeSaved(path);
    file.mkdir();
    backup.willBeSaved(path);
    file.mkdir();
    backup.willBeSaved(path);
    assertTrue(new File("testdirectory.1.bak").exists());
    assertTrue(new File("testdirectory.2.bak").exists());
    assertTrue(new File("testdirectory.3.bak").exists());
    assertTrue(new File("testdirectory.4.bak").exists());
    assertTrue(new File("testdirectory.5.bak").exists());
    assertTrue(new File("testdirectory.6.bak").exists());
    assertTrue(new File("testdirectory.7.bak").exists());
    assertTrue(new File("testdirectory.8.bak").exists());
    assertTrue(new File("testdirectory.9.bak").exists());
    assertTrue(new File("testdirectory.10.bak").exists());
    assertFalse(new File("test11.bak").exists());
    
  }
  public void setUp(){
    for(int i=0;i<12;i++){
      new File("testdirectory."+i+".bak").delete();
    }
    
  }
  public void tearDown(){
    setUp();
  }

  
}
