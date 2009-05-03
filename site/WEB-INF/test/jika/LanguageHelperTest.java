package jika;

import junit.framework.TestCase;

public class LanguageHelperTest extends TestCase {

	public void testIsLanguageCode() {
		assertTrue(LanguageHelper.isLanguageCode("ja"));
		assertTrue(LanguageHelper.isLanguageCode("en"));
		assertFalse(LanguageHelper.isLanguageCode("zz"));		
	}

}
