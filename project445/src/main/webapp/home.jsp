<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Home</title>
<%@include file="allcomponent/allCss.jsp" %>
<style type="text/css">
a{
text-decoration: none;
color:black;
}
a:hover{
text-decoration: none;
color: black;
}
</style>
</head>
<body>


<%@include file="anavbar.jsp" %>

<div class= "caontainer">
   <div class= "row">
      <div class="col-md-3">
      <a href="add_books.jsp">
         <div class="card">
           <div class="card-body text-center">
           <i class="fas fa-plus-squere fa-3x"></i><br>       
           <h4>Add Books</h4>
           
           </div>  
         </div>
         </a>
      </div>
      
      <div class="col-md-3">
      <a href="delete_books.jsp">
         <div class="card">
           <div class="card-body text-center">
           <i class="fa-solid fa-trash-can-list"></i><br>       
           <h4>Delete Books</h4>
           
           </div>  
         </div>
      </div>
      
      <div class="col-md-3">
      <a href="adminLogout.jsp">
         <div class="card">
           <div class="card-body text-center">
           <i class="fa-duotone fa-arrow-right-from-bracket"></i><br>       
           <h4>Logout</h4>
           
           </div>  
         </div>
      </div>
      
      
   </div>
</div>
	
</body>
</html>