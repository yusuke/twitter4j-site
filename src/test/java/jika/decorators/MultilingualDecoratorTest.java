package jika.decorators;

import jika.Decorator;
import jika.RequestContext;
import org.junit.Test;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

import static org.junit.Assert.*;
public class MultilingualDecoratorTest{
    public MultilingualDecoratorTest(){
        super();
    }
    @Test
    public void testCanonical(){
        assertEquals("/index.html", MultilingualDecorator.toCanonicalPath("/index.jsp"));
        assertEquals("/index.html", MultilingualDecorator.toCanonicalPath("/index.jsp"));
        assertEquals("/index.html", MultilingualDecorator.toCanonicalPath("/index.jsp?utm_content=XXXX&utm_source=YYY&utm_medium=twitter&utm_campaign=ZZZ"));
        assertEquals("/index.html#aaa", MultilingualDecorator.toCanonicalPath("/index.html#aaa?utm_content=XXXX&utm_source=YYY&utm_medium=twitter&utm_campaign=ZZZ"));
        assertEquals("/index.html#aaa", MultilingualDecorator.toCanonicalPath("/index.jsp#aaa?utm_content=XXXX&utm_source=YYY&utm_medium=twitter&utm_campaign=ZZZ"));
    }
    @Test
    public void testParseRequest() throws Exception{
        MultilingualDecorator decorator = new MultilingualDecorator();
        decorator.init("languages","en,ja");

        RequestContext context = new RequestContext("/en/index.html");
        int res = decorator.parseRequest(null, null, context);
        assertEquals(Decorator.OK, res);
        assertEquals("/index.html", context.getResourcePath());


        context = new RequestContext("/zn/index.html");
        res = decorator.parseRequest(null, null, context);
        assertEquals(Decorator.REDIRECT, res);
        assertEquals("/index.html", context.getResourcePath());
    }
}
