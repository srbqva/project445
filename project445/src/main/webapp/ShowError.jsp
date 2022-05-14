<%@ page language="java" contentType="text/html; charset=windows-1256"
 pageEncoding="windows-1256"%>
<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
 <head>
     <title>Show Error Page</title>
 </head>

  <body>
      <h1>Opps...</h1>
      <p>Sorry, an error occurred.</p>
      <p>Here is the exception stack trace: </p>
      <pre><% exception.printStackTrace(response.getWriter()); %></pre>
  </body>
</html>