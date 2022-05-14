<%@page import="DB.DB_Connection"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Create Account</title>
</head>
<body>
<%
  String username = request.getParameter("username");
  String phone = request.getParameter("phone");
  String email = request.getParameter("email");
  String pass = request.getParameter("password");
  String ID = request.getParameter("ID");
  int id= Integer.parseInt(ID);
  
  DB.DB_Connection conn = new DB.DB_Connection();
  boolean isAdded = conn.addUser(id, username, phone, email, pass);
  
  if(isAdded)
     out.print("Data is successfully inserted!");
  else
     out.print("Error");
 %>
</body>
</html>