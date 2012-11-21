package jika.servlets;

import org.junit.Test;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

import static org.junit.Assert.assertEquals;

public class MultilingualRedirectServletTest {
    @Test
    public void testGetRedirectPath() throws Exception {
        MultilingualRedirectServlet servlet = new MultilingualRedirectServlet();
        servlet.init("languages", "en,ja");
        List<Locale> languages = Arrays.asList(new Locale[]{Locale.JAPANESE, Locale.ENGLISH});
        assertEquals("/ja/index.html", servlet.getRedirectPath("/", Collections.enumeration(languages)));
        assertEquals("/ja/index.html", servlet.getRedirectPath("/index.html", Collections.enumeration(languages)));

        languages = Arrays.asList(new Locale[]{Locale.ENGLISH, Locale.JAPANESE});
        assertEquals("/en/index.html", servlet.getRedirectPath("/", Collections.enumeration(languages)));
        assertEquals("/en/index.html", servlet.getRedirectPath("/index.html", Collections.enumeration(languages)));
    }
}
