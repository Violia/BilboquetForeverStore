package data;

import business.Product;
import business.LineItem;
import java.util.Arrays;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

/**
 * This class can manipulate information about products in the database.
 */
public class ProductDB {
   
   /**
    * Inserts a new product to the database
    * @param product The product to be added
    */
   public static void insert(Product product) {
      EntityManager em = DBUtil.getEmFactory().createEntityManager();
      EntityTransaction transaction = em.getTransaction();
      
      try {
         transaction.begin();
         em.persist(product);
         transaction.commit();
      } catch (Exception e) {
         System.err.println(e);
         transaction.rollback();
      } finally {
         em.close();
      }
   }
   
   /**
    * @return The list of all products in the database, or null if there are none
    */
   public static List<Product> selectProducts() {
      EntityManager em = DBUtil.getEmFactory().createEntityManager();
      String queryString = "SELECT p FROM Product p";
      Query query = em.createQuery(queryString);
      
      List<Product> products = null;
      
      try {
         products = query.getResultList();
      } catch (Exception e) {
         System.err.println(e);
      } finally {
         em.close();
      }
      
      return products;
   }
   
   /**
    * Retrieves a single product from the database, based on the provided
    * product code. 
    * @param productCode The code of the product to be retrieved
    * @return The selected product if exists, null otherwise
    */
   public static Product selectProduct(String productCode) {
      EntityManager em = DBUtil.getEmFactory().createEntityManager();
      String queryString = "SELECT p FROM Product p "
                         + "WHERE p.code = :code";
      TypedQuery<Product> query = em.createQuery(queryString, Product.class);
      query.setParameter("code", productCode);
      
      Product product = null;
      try {
         product = query.getSingleResult();
      } catch (Exception e) {
         System.err.println(e);
      } finally {
         em.close();
      }
      
      return product;
   }
   
   /**
    * @return Either the newest product, or null it if does not exist
    */
   public static Product selectNewestProduct() {
      EntityManager em = DBUtil.getEmFactory().createEntityManager();
      String queryString = "SELECT p FROM Product p "
                         + "ORDER BY p.productId";
      Query query = em.createQuery(queryString);
      
      Product product = null;
              
      try {
         List<Product> products = query.getResultList();
         product = products.get(products.size() - 1);
      } catch (Exception e) {
         System.err.println(e);
      } finally {
         em.close();
      }
      
      return product;
   }

    public static Product selecttopProduct(int rank) {
      EntityManager li = DBUtil.getEmFactory().createEntityManager();
      String queryStringli = "SELECT p FROM LineItem p ";
      Query queryli = li.createQuery(queryStringli);
      
      EntityManager em = DBUtil.getEmFactory().createEntityManager();
      String queryString = "SELECT p FROM Product p "
                         + "ORDER BY p.productId";
      Query query = em.createQuery(queryString);
      
      Product product = null;
              
      try {
          List<LineItem> lineitems = queryli.getResultList();
          List<Product> products = query.getResultList();
          int iArr[] = new int[products.size() + 1];
          int sArr[] = new int[products.size() + 1];
          
        for (int a= 0; a < lineitems.size(); a++) {
            iArr[lineitems.get(a).getProduct().getProductId().intValue()] += lineitems.get(a).getQuantity();
            sArr[lineitems.get(a).getProduct().getProductId().intValue()] += lineitems.get(a).getQuantity();
        }
        Arrays.sort(sArr);
        for (int number : iArr) {
           System.out.println("iArr Number = " + number);
        }
        for (int number : sArr) {
             System.out.println("sArr Number = " + number);
        }
        int a = 1;
        int top = products.size() + 1 - rank;
        while (sArr[top] != iArr[a]) {
            a++;
        }        
         product = products.get(a-1);
      } catch (Exception e) {
         System.err.println(e);
      } finally {
         em.close();
        li.close();
      }
      
      return product;
    }
}
