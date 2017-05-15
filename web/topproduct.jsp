
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
   <h1>Top Selling Bilboquet</h1>
   <c:choose>
      <c:when test="${topProduct1 == null}">
         <p class="larger_p">There are no products in the top selling right now.</p>
      </c:when>
      <c:otherwise>
         <div class="row">
            <div class="col-md-8">
               <h3><a href="<c:url value='catalog/product/${topProduct1.code}' />">${topProduct1.description}</a></h3>
               <p class="larger_p">${topProduct1.modelInformation}</p>
            </div>
            <div class="col-md-4">
               <img class="img-thumbnail" src="<c:url value='${topProduct1.imageUrl}' />" alt="Image" />
            </div>
         </div>
         <div class="row">
            <div class="col-md-8">
               <h3><a href="<c:url value='catalog/product/${topProduct2.code}' />">${topProduct2.description}</a></h3>
               <p class="larger_p">${topProduct2.modelInformation}</p>
            </div>
            <div class="col-md-4">
               <img class="img-thumbnail" src="<c:url value='${topProduct2.imageUrl}' />" alt="Image" />
            </div>
         </div>
         <div class="row">
            <div class="col-md-8">
               <h3><a href="<c:url value='catalog/product/${topProduct3.code}' />">${topProduct3.description}</a></h3>
               <p class="larger_p">${topProduct3.modelInformation}</p>
            </div>
            <div class="col-md-4">
               <img class="img-thumbnail" src="<c:url value='${topProduct3.imageUrl}' />" alt="Image" />
            </div>
         </div>
      </c:otherwise>
   </c:choose>
</div>
