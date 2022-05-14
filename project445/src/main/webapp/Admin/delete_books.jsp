<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Delete Books</title>
<%@include file="allCss.jsp" %>
</head>
<body style="background-color: #f0f2f2;">
<%@include file="anavbar.jsp" %>
<div class= "caontainer">
   <div class= "row">
      <div class="col-md-4 offset-md-4">
         <div class="card">
           <div class="card-body">
           <h4 class="text-center">Delete Books</h4>
        <form action= "home.jsp">
   <div class="form-group">
           <label for="bookName">Book Name</label><input
           name="bname" type="text" class="form-control"
           id="bookName"  >
           </div>
           
           <button type="submit" class="btn btn-primary" onclick="done()">Delete</button>
           
           
           </form>
           
           
           </div> 
         </div>    
       </div>  
    </div>
</div>
<script type="text/javascript">
           function done(){
           alert("Successful deleted!  ");
           }
           </script>
</body>
</html>