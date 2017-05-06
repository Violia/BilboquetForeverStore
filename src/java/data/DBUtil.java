package data;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 * This class can be used to get an instance of the EntityManagerFactory class,
 * which enables retrieving data using JPA.
 */
public class DBUtil {
   
   private static final EntityManagerFactory emf = 
           Persistence.createEntityManagerFactory("BilboquetForeverStorePU");
   
   public static EntityManagerFactory getEmFactory() {
      return emf;
   }
}
