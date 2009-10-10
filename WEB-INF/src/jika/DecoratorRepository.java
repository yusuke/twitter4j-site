/*
 * DecoratorRepository.java
 *
 * Created on 2006/11/25, 22:32
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package jika;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author yusukey
 */
public class DecoratorRepository {
  private static List decorators = new ArrayList();
  private static boolean initialized = false;
  public static synchronized List getDecorators(){
    if(initialized){
      return decorators;
    }else{
      throw new IllegalStateException("Not initialized");
    }
  }
  public static synchronized List initialize(String[] list,ServletContext context)throws ServletException{
    //instantiate builtin decorators
    decorators.add(new jika.decorators.IncludeDecorator());
    
    //instantiate decorators
    for (int i = 0; i < list.length; i++) {
      try {
        Decorator decorator = (Decorator) Class.forName(list[i].trim())
        .newInstance();
        decorators.add(decorator);
        
      } catch (ClassCastException e) {
        throw new ServletException(list[i]
            + " doesn not implement jika.Decorator");
      } catch (InstantiationException e) {
        throw new ServletException(e);
      } catch (IllegalAccessException e) {
        throw new ServletException(e);
      } catch (ClassNotFoundException e) {
        throw new ServletException(e);
      }
      
    }
    decorators.add(new jika.decorators.AdminDecorator());
    //initialize decorators
    for (int i = 0; i < decorators.size(); i++) {
      ((Decorator) decorators.get(i)).init(context);
    }
    initialized = true;
    return decorators;
  }
  
  
}
