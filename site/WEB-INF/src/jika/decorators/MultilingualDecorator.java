package jika.decorators;


import jika.Decorator;
import jika.Input;
import jika.Output;
import jika.RequestContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContext;
import jika.LanguageHelper;
import java.util.Enumeration;
import java.util.Locale;

public class MultilingualDecorator implements Decorator {
  
  public final int ALL_LANGUAGE = 0;
  
  public final int OTHER_LANGUAGE = 1;
  
  public final int FOCUS_LANGUAGE = 2;
  
  public void decorate(RequestContext context, Input input, Output output) {
    String currentLang = context.getProperty("language");
    String line;
    int status = ALL_LANGUAGE;
    int tagLocation;
    while (null != (line = input.getNextLine())) {
      boolean appended = false;
      int cursor = 0;
      if(line.length() == 0){
        //empty line
        output.addNextLine("");
      }else{
        while (cursor < line.length()) {
          switch (status) {
            case ALL_LANGUAGE:
              tagLocation = line.indexOf("$[", cursor);
              if (-1 == tagLocation) {
                appended =append(output,line.substring(cursor),appended);
                cursor = line.length();
              } else {
                appended =append(output,line.substring(cursor, tagLocation),appended);
                String language = line.substring(tagLocation + 2,
                    tagLocation + 4);
                if (language.equals(currentLang)) {
                  status = FOCUS_LANGUAGE;
                } else {
                  status = OTHER_LANGUAGE;
                }
                cursor = tagLocation + 5;
              }
              break;
            case OTHER_LANGUAGE:
              tagLocation = line.indexOf("]", cursor);
              if (-1 == tagLocation) {
                // buf.append(line.substring(cursor));
                cursor = line.length();
              } else {
                cursor = tagLocation + 1;
                status = ALL_LANGUAGE;
              }
              break;
            case FOCUS_LANGUAGE:
              tagLocation = line.indexOf("]", cursor);
              if (-1 == tagLocation) {
                appended =append(output,line.substring(cursor),appended);
                cursor = line.length();
              } else {
                appended =append(output,line.substring(cursor, tagLocation),appended);
                cursor = tagLocation + 1;
                status = ALL_LANGUAGE;
              }
              break;
            default:
              // will never go here
          }
        }
      }
    }
    
  }
  
  
  
  private boolean append(Output output,String msg,boolean appended){
    if(appended){
      output.append(msg);
    }else{
      output.addNextLine(msg);
    }
    return true;
  }
  String[] languages;
  
  public int parseRequest(HttpServletRequest req, HttpServletResponse res,RequestContext context){
    int index;
    String resourcePath = context.getResourcePath();
    if(-1 != (index = resourcePath.indexOf("/",1))){
      String language = resourcePath.substring(1,index);
      for(int i=0;i<languages.length;i++){
        if(languages[i].equals(language)){
          resourcePath = resourcePath.substring(3);
          context.setProperty("language",language);
          context.setResourcePath(resourcePath);
          return OK;
        }
      }
      if(LanguageHelper.isLanguageCode(language)){
        resourcePath = resourcePath.substring(3);
      }
    }
    Enumeration enu = req.getLocales();
    while(enu.hasMoreElements()){
      Locale locale = (Locale)enu.nextElement();
      String language = locale.getLanguage();
      for(int i=0;i<languages.length;i++){
        if(languages[i].equals(language)){
          context.setResourcePath(req.getContextPath()+"/"+language+resourcePath);
          return REDIRECT;
        }
      }
    }
    context.setResourcePath(req.getContextPath()+"/en"+resourcePath);
    return REDIRECT;
    
  }
  
  public void init(ServletContext context) throws ServletException {
    languages = context.getInitParameter("languages").split(",");
    if(null == languages || "".equals(languages)){
      throw new ServletException("languages not set.");
    }
  }
}
