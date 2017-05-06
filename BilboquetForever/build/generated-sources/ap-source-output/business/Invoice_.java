package business;

import business.Customer;
import business.LineItem;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-06T17:08:36")
@StaticMetamodel(Invoice.class)
public class Invoice_ { 

    public static volatile ListAttribute<Invoice, LineItem> lineItems;
    public static volatile SingularAttribute<Invoice, Long> number;
    public static volatile SingularAttribute<Invoice, Boolean> processed;
    public static volatile SingularAttribute<Invoice, Date> invoiceDate;
    public static volatile SingularAttribute<Invoice, Customer> customer;

}