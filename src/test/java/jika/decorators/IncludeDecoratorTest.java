//package jika.decorators;
//
//import jika.WebContent;
//import jika.RequestContext;
//import jika.RequestContextImpl;
//import junit.framework.TestCase;
//import java.io.IOException;
//public class IncludeDecoratorTest extends TestCase {
//
//    public void testDecorate() throws Exception{
//        WebContent content = new WebContent();
//        IncludeDecorator decorator = new IncludeDecorator();
//        FileContentReader reader = new FileContentReader();
//        RequestContext context = new RequestContextImpl("UTF-8","ja","index.html");
//        reader.decorate(context, content,content);
//        content.finish();
//        assertEquals("[<include>included.txt</include>]",content.toString());
//        decorator.decorate(context,content,content);
//        content.finish();
//        assertEquals("[this is included text.\n\nthis is nested text.]",content.toString());
//
//    }
//
//    public void testInfiniteDecorate() throws Exception{
//        WebContent content = new WebContent();
//        IncludeDecorator decorator = new IncludeDecorator();
//        FileContentReader reader = new FileContentReader();
//        RequestContext context = new RequestContextImpl("UTF-8","ja","infinite.txt");
//        reader.decorate(context, content,content);
//        content.finish();
//        assertEquals("this is nested text.<include>infinite.txt</include>",content.toString());
//        try{
//            decorator.decorate(context,content,content);
//            fail("infinite inclusion must not be accepted");
//        }catch(IOException ioe){
//            //expecting IOException
//            assertEquals("Found an infinite inclusion >infinite.txt>*infinite.txt",ioe.getMessage());
//        }
//    }
//}
