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
  String country = request.getParameter("country");
  String city = request.getParameter("city");
  String address = request.getParameter("address");
  String card = request.getParameter("card");
  String ID = request.getParameter("ID");
  int id= Integer.parseInt(ID);

  
  DB.DB_Connection conn = new DB.DB_Connection();
  boolean isAdded = conn.addOrder( id,country, city, address, card);
  
  if(isAdded)
     out.print("Data is successfully inserted!");
  else
     out.print("Error");
 %>
</body>
</html>