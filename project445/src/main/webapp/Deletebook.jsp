<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>
</head>
<body>

     <%

        String title = request.getParameter("title");

        DB.DB_Connection conn = new DB.DB_Connection();
        int isDeleted = conn.deleteBook(title);
        if(isDeleted>0)
            out.print("Book is successfully deleted!");
        else
            out.print("Error");
        conn.close();
      %>

</body>
</html>