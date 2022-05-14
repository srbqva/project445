<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Books</title>
<%@include file="allCss.jsp" %>
</head>
<body style="background-color: #f0f2f2;">
<%@include file="anavbar.jsp" %>
<div class= "caontainer">
   <div class= "row">
      <div class="col-md-4 offset-md-4">
         <div class="card">
           <div class="card-body">
           <h4 class="text-center">Add Books</h4>
           <form action= "home.jsp">
           
           <div class="form-group">
           <label for="bookName">Book Name</label><input
           name="bname" type="text" class="form-control"
           id="bookName"  >
           </div>
           
           <div class="form-group">
           <label for="authorName">Author Name</label><input
           name="author" type="text" class="form-control"
           id="authorName"  >
           </div>
           
           <div class="form-group">
           <label for="price">Price</label><input
           name="price" type="number" class="form-control"
           id="price"  >
           </div>
           
           <button type="submit" class="btn btn-primary" onclick="done()">Add</button>
           
           
           </form>
           
           
           </div> 
         </div>    
       </div>  
    </div>
</div>

<script type="text/javascript">
           function done(){
           alert("Successful added! ");
           }
           </script>
</body>
</html>