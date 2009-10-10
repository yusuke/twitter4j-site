package jika;

import junit.framework.TestCase;

public class WebContentTest extends TestCase {
  public static void main(String[] args){
    junit.textui.TestRunner.run(WebContentTest.class);
  }
  
  public void testWebContent() {
    WebContent content = new WebContent();
    content.addNextLine("This is the first line.");
    content.addNextLine("");
    content.addNextLine("");
    content.addNextLine("This is the second line.");
    content.addNextLine("This is the Third line.");
    content.finish();
    assertEquals("This is the first line.",content.getNextLine());
    assertEquals("",content.getNextLine());
    assertEquals("",content.getNextLine());
    assertEquals("This is the second line.",content.getNextLine());
    assertEquals("This is the Third line.",content.getNextLine());
    assertNull(content.getNextLine());
    
    content = new WebContent();
    content.setWholeContent("This is the first line.\n\n\nThis is the second line.\nThis is the Third line.");
    content.finish();
    assertEquals("This is the first line.\n\n\nThis is the second line.\nThis is the Third line.",content.getWholeContent());
    
    
    content = new WebContent();
    
    content.setWholeContent("This is the first line.\n\n\nThis is the second line.\nThis is the Third line.");
    content.finish();
    assertEquals("This is the first line.",content.getNextLine());
    assertEquals("",content.getNextLine());
    assertEquals("",content.getNextLine());
    assertEquals("This is the second line.",content.getNextLine());
    assertEquals("This is the Third line.",content.getNextLine());
    assertNull(content.getNextLine());
    
  }
  
}
