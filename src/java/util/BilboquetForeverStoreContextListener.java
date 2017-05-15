package util;

import business.Product;
import data.ProductDB;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * This class will execute code within the contextInitialized method
 * whenever the web application is launched.
 */
public class BilboquetForeverStoreContextListener implements ServletContextListener {

   @Override
   public void contextInitialized(ServletContextEvent event) {
      ServletContext sContext = event.getServletContext();
      
      // initialize the current year attribute
      GregorianCalendar calendar = new GregorianCalendar();
      int currentYear = calendar.get(Calendar.YEAR);
      sContext.setAttribute("currentYear", currentYear);
      
      // find the newest product in the store and set it as a context attribute
      Product newestProduct = ProductDB.selectNewestProduct();
      sContext.setAttribute("newestProduct", newestProduct);
      
      Product topProduct1 = ProductDB.selecttopProduct(1);
      sContext.setAttribute("topProduct1", topProduct1);
      Product topProduct2 = ProductDB.selecttopProduct(2);
      sContext.setAttribute("topProduct2", topProduct2);
      Product topProduct3 = ProductDB.selecttopProduct(3);
      sContext.setAttribute("topProduct3", topProduct3);

   }

   @Override
   public void contextDestroyed(ServletContextEvent event) {
      // not necessary
   }
   
}
