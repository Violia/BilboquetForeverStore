package business;

import business.CardType;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-06T17:08:36")
@StaticMetamodel(CreditCard.class)
public class CreditCard_ { 

    public static volatile SingularAttribute<CreditCard, String> number;
    public static volatile SingularAttribute<CreditCard, CardType> cardType;
    public static volatile SingularAttribute<CreditCard, Long> creditCardId;
    public static volatile SingularAttribute<CreditCard, String> expirationDate;

}