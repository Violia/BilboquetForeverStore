package business;

import business.Product;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-06T17:08:36")
@StaticMetamodel(LineItem.class)
public class LineItem_ { 

    public static volatile SingularAttribute<LineItem, Product> product;
    public static volatile SingularAttribute<LineItem, Integer> quantity;
    public static volatile SingularAttribute<LineItem, Long> lineItemId;

}