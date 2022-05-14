<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ page errorPage = "ShowError.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>
</head>
<body>
<%

    String user= request.getParameter("UserName");
    String pass= request.getParameter("password");
    
    
    if( user != null && user.length() !=0){
    	DB.DB_Connection users = new DB.DB_Connection();
        ResultSet result = users.getUserAccess(user, pass);
        //if user exists in DB{
        //select * from users where username=user....
        //String role = result.getResult("role");
        
      if(result.next()){
       String role = result.getString("role");
       session.setAttribute("username", user);
       session.setAttribute("password", pass);
       session.setAttribute("role", role);
       session.setMaxInactiveInterval(5);
       out.print("<a href='index.jsp'> HomePage </a> |");
          }
      //else
     //redirect user login page with appropitate message

      else
             response.sendRedirect("login.jsp");
          }
        
    else{
        response.sendRedirect("login.jsp");
     }
               
 %>

</body>
</html>