<%@page import="DB.DB_Connection"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Create Book</title>
</head>
<body>
<%
  String title = request.getParameter("title");
  String author = request.getParameter("author");
  String Price = request.getParameter("price");
  int price= Integer.parseInt(Price);
  String category = request.getParameter("category");
  String ID = request.getParameter("ID");
  int id= Integer.parseInt(ID);
 
  
  DB.DB_Connection conn = new DB.DB_Connection();
  boolean isAdded = conn.addBook( id, title, author, price, category);
  
  if(isAdded)
     out.print("Data is successfully inserted!");
  else
     out.print("Error");
 %>
</body>
</html>