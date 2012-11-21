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
import java.util.ArrayList;
import java.util.List;

/**
 * @author yusukey
 */
public class DecoratorRepository {
    private static List<Decorator> decorators = new ArrayList();
    private static boolean initialized = false;

    public static synchronized List getDecorators() {
        if (initialized) {
            return decorators;
        } else {
            throw new IllegalStateException("Not initialized");
        }
    }

    public static synchronized List<Decorator> initialize(String[] list, ServletContext context) throws ServletException {
        //instantiate builtin decorators
        decorators.add(new jika.decorators.IncludeDecorator());

        //instantiate decorators
        for (String aList : list) {
            try {
                Decorator decorator = (Decorator) Class.forName(aList.trim())
                        .newInstance();
                decorators.add(decorator);

            } catch (ClassCastException e) {
                throw new ServletException(aList
                        + " doesn not implement jika.Decorator");
            } catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
                throw new ServletException(e);
            }
        }
        //initialize decorators
        for (Decorator decorator : decorators) {
            decorator.init(context);
        }
        initialized = true;
        return decorators;
    }
}
