package business;

import business.Address;
import business.CreditCard;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-06T17:08:36")
@StaticMetamodel(Customer.class)
public class Customer_ { 

    public static volatile SingularAttribute<Customer, String> firstName;
    public static volatile SingularAttribute<Customer, String> lastName;
    public static volatile SingularAttribute<Customer, Address> address;
    public static volatile SingularAttribute<Customer, Long> customerId;
    public static volatile SingularAttribute<Customer, CreditCard> creditCard;
    public static volatile SingularAttribute<Customer, String> email;

}