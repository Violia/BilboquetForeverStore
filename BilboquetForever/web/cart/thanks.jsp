
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/header.jsp" />

<div class="container">
   <div class="page-header centre-align">
      <h1>Thank you for your purchase, <c:out value='${customer.firstName}' />!</h1>
   </div>
   <p class="larger_p">
      Your order has been submitted. We will begin processing your 
      order right away. If you have any questions about your order, 
      please feel free to contact us at 
      <a href="mailto:bilboquetforever@gmail.com">bilboquetforever@gmail.com</a>
   </p>
</div>

<jsp:include page="/footer.jsp" />


