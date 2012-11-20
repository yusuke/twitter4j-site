package jika;

import java.util.HashMap;
import java.util.Map;

public class LanguageHelper {
    private static Map codeMap = new HashMap();

    static {

        codeMap.put("aa", "Afar");
        codeMap.put("ab", "Abkhazian");
        codeMap.put("af", "Afrikaans");
        codeMap.put("am", "Amharic");
        codeMap.put("ar", "Arabic");
        codeMap.put("as", "Assamese");
        codeMap.put("ay", "Aymara");
        codeMap.put("az", "Azerbaijani");

        codeMap.put("ba", "Bashkir");
        codeMap.put("be", "Byelorussian");
        codeMap.put("bg", "Bulgarian");
        codeMap.put("bh", "Bihari");
        codeMap.put("bi", "Bislama");
        codeMap.put("bn", "Bengali,Bangla");
        codeMap.put("bo", "Tibetan");
        codeMap.put("br", "Breton");

        codeMap.put("ca", "Catalan");
        codeMap.put("co", "Corsican");
        codeMap.put("cs", "Czech");
        codeMap.put("cy", "Welsh");

        codeMap.put("da", "Danish");
        codeMap.put("de", "German");
        codeMap.put("dz", "Bhutani");

        codeMap.put("el", "Greek");
        codeMap.put("en", "English");
        codeMap.put("eo", "Esperanto");
        codeMap.put("es", "Spanish");
        codeMap.put("et", "Estonian");
        codeMap.put("eu", "Basque");

        codeMap.put("fa", "Persian");
        codeMap.put("fi", "Finnish");
        codeMap.put("fj", "Fiji");
        codeMap.put("fo", "Faroese");
        codeMap.put("fr", "French");
        codeMap.put("fy", "Frisian");

        codeMap.put("ga", "Irish");
        codeMap.put("gd", "Scots Gaelic");
        codeMap.put("gl", "Galician");
        codeMap.put("gn", "Guarani");
        codeMap.put("gu", "Gujarati");

        codeMap.put("ha", "Hausa");
        codeMap.put("he", "Hebrew");
        codeMap.put("hi", "Hindi");
        codeMap.put("hr", "Croatian");
        codeMap.put("hu", "Hungarian");
        codeMap.put("hy", "Armenian");

        codeMap.put("ia", "Interlingua");
        codeMap.put("id", "Indonesian");
        codeMap.put("ie", "Interlingue");
        codeMap.put("ik", "Inupiak");
        codeMap.put("is", "Icelandic");
        codeMap.put("it", "Italian");
        codeMap.put("iu", "Inuktitut");

        codeMap.put("ja", "Japanese");
        codeMap.put("jw", "Javanese");

        codeMap.put("ka", "Georgian");
        codeMap.put("kk", "Kazakh");
        codeMap.put("kl", "Greenlandic");
        codeMap.put("km", "Cambodian");
        codeMap.put("kn", "Kannada");
        codeMap.put("ko", "Korean");
        codeMap.put("ks", "Kashmiri");
        codeMap.put("ku", "Kurdish");
        codeMap.put("ky", "Kirghiz");

        codeMap.put("la", "Latin");
        codeMap.put("ln", "Lingala");
        codeMap.put("lo", "Laothian");
        codeMap.put("lt", "Lithuanian");
        codeMap.put("lv", "Latvian, Lettish");

        codeMap.put("mg", "Malagasy");
        codeMap.put("mi", "Maori");
        codeMap.put("mk", "Macedonian");
        codeMap.put("ml", "Malayalam");
        codeMap.put("mn", "Mongolian");
        codeMap.put("mo", "Moldavian");
        codeMap.put("mr", "Marathi");
        codeMap.put("ms", "Malay");
        codeMap.put("mt", "Maltese");
        codeMap.put("my", "Burmese");

        codeMap.put("na", "Nauru");
        codeMap.put("ne", "Nepali");
        codeMap.put("nl", "Dutch");
        codeMap.put("no", "Norwegian");

        codeMap.put("oc", "Occitan");
        codeMap.put("om", "(Afan) Oromo");
        codeMap.put("or", "Oriya");

        codeMap.put("pa", "Punjabi");
        codeMap.put("pl", "Polish");
        codeMap.put("ps", "Pashto, Pushto");
        codeMap.put("pt", "Portuguese");

        codeMap.put("qu", "Quechua");

        codeMap.put("rm", "Rhaeto-Romance");
        codeMap.put("rn", "Kirundi");
        codeMap.put("ro", "Romanian");
        codeMap.put("ru", "Russian");
        codeMap.put("rw", "Kinyarwanda");

        codeMap.put("sa", "Sanskrit");
        codeMap.put("sd", "Sindhi");
        codeMap.put("sg", "Sangho");
        codeMap.put("sh", "Serbo-Croatian");
        codeMap.put("si", "Sinhalese");
        codeMap.put("sk", "Slovak");
        codeMap.put("sl", "Slovenian");
        codeMap.put("sm", "Samoan");
        codeMap.put("sn", "Shona");
        codeMap.put("so", "Somali");
        codeMap.put("sq", "Albanian");
        codeMap.put("sr", "Serbian");
        codeMap.put("ss", "Siswati");
        codeMap.put("st", "Sesotho");
        codeMap.put("su", "Sundanese");
        codeMap.put("sv", "Swedish");
        codeMap.put("sw", "Swahili");

        codeMap.put("ta", "Tamil");
        codeMap.put("te", "Telugu");
        codeMap.put("tg", "Tajik");
        codeMap.put("th", "Thai");
        codeMap.put("ti", "Tigrinya");
        codeMap.put("tk", "Turkmen");
        codeMap.put("tl", "Tagalog");
        codeMap.put("tn", "Setswana");
        codeMap.put("to", "Tonga");
        codeMap.put("tr", "Turkish");
        codeMap.put("ts", "Tsonga");
        codeMap.put("tt", "Tatar");
        codeMap.put("tw", "Twi");

        codeMap.put("ug", "Uighur");
        codeMap.put("uk", "Ukrainian");
        codeMap.put("ur", "Urdu");
        codeMap.put("uz", "Uzbek");

        codeMap.put("vi", "Vietnamese");
        codeMap.put("vo", "Volapuk");

        codeMap.put("wo", "Wolof");

        codeMap.put("xh", "Xhosa");

        codeMap.put("yi", "Yiddish");
        codeMap.put("yo", "Yoruba");

        codeMap.put("za", "Zhuang");
        codeMap.put("zh", "Chinese");
        codeMap.put("zu", "Zulu");
    }

    public static boolean isLanguageCode(String code) {
        return null != codeMap.get(code);
    }

    public Map getCodeMap() {
        return codeMap;
    }

    public static String getLanguageFromCode(String code) {
        return (String) codeMap.get(code);
    }
}