package jika;

import org.junit.Test;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

import static org.junit.Assert.*;


public class LanguageHelperTest{
    @Test
	public void testIsLanguageCode() {
		assertTrue(LanguageHelper.isLanguageCode("ja"));
		assertTrue(LanguageHelper.isLanguageCode("en"));
		assertFalse(LanguageHelper.isLanguageCode("zz"));		
	}
    @Test
    public void testGetRedirectPath() throws Exception {
        LanguageHelper  helper = new LanguageHelper(new String[]{"en","ja"});
        List<Locale> languages = Arrays.asList(new Locale[]{Locale.JAPANESE, Locale.ENGLISH});
        assertEquals("ja", helper.getPreferredLanguage(Collections.enumeration(languages)));

        languages = Arrays.asList(new Locale[]{Locale.ENGLISH, Locale.JAPANESE});
        assertEquals("en", helper.getPreferredLanguage(Collections.enumeration(languages)));

        languages = Arrays.asList(new Locale[]{Locale.CHINESE, Locale.JAPANESE});
        assertEquals("ja", helper.getPreferredLanguage(Collections.enumeration(languages)));

        languages = Arrays.asList(new Locale[]{Locale.CHINESE, Locale.FRANCE});
        assertEquals("en", helper.getPreferredLanguage(Collections.enumeration(languages)));
    }

}
