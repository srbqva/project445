<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Card</title>
<%@include file="allcomponent/allCss.jsp" %>

</head>
<body style ="background-color:#f0f1f2;" >
<%@include file="allcomponent/navbar.jsp" %>
<div class="container">
<div class="row mt-2">
<div class= "col-md-4 offset-md-4">
<div class="card">
<div class="card-body"> 
<h3 class="text-center">Added to your cart, successfully!</h3>
<h2 class="text-center">Shipping Information</h2>
<form>
  <div class="form-group">
    <label for="Country">Country</label>
    <input type="text" class="form-control" id="Country" 
    required="required" >
   
  </div>
  <div class="form-group">
    <label for="City">City</label>
    <input type="text" class="form-control" 
    id="City" required="required">
  </div>
  <div class="form-group">
    <label for="Address">Address</label>
    <input type="text" class="form-control" 
    id="Address" required="required">
  </div>
 
  
 <div class=" text-center">
  <button type="submit" class="btn btn-primary" onclick="Order.jsp">Next</button><br>
     
      </div>
</form>

</div>




</div>


</div>


</div>








</div>
</body>
</html>