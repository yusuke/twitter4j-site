package jika.decorators;

import jika.decorators.MultilingualDecorator;
import junit.framework.TestCase;
public class MultilingualDecoratorTest extends TestCase{
    public MultilingualDecoratorTest(){
        super();
    }

    public void testCanonical(){
        assertEquals("/index.html", MultilingualDecorator.toCanonicalPath("/index.jsp"));
        assertEquals("/index.html", MultilingualDecorator.toCanonicalPath("/index.jsp"));
        assertEquals("/index.html", MultilingualDecorator.toCanonicalPath("/index.jsp?utm_content=XXXX&utm_source=YYY&utm_medium=twitter&utm_campaign=ZZZ"));
        assertEquals("/index.html#aaa", MultilingualDecorator.toCanonicalPath("/index.html#aaa?utm_content=XXXX&utm_source=YYY&utm_medium=twitter&utm_campaign=ZZZ"));
        assertEquals("/index.html#aaa", MultilingualDecorator.toCanonicalPath("/index.jsp#aaa?utm_content=XXXX&utm_source=YYY&utm_medium=twitter&utm_campaign=ZZZ"));
    }
}
