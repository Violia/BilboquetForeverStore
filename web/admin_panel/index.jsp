
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/header.jsp" />

<div class="container">
   <div class="page-header centre-align">
      <h1>Admin Panel</h1>
   </div>
   <div class="row">
      <div class="col-sm-9">
         <p class="larger_p">
            This is your admin panel from which you can manage BilboquetForever store. 
         </p>
      </div>
      <div class="col-sm-3">
         <ul class="nav nav-pills nav-stacked">
            <li><a href="<c:url value='/admin/processInvoices' />">Process invoices</a></li>
         </ul>
      </div>
   </div>   
</div>

<jsp:include page="/footer.jsp" />
