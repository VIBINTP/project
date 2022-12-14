<%-- 
    Document   : index
    Created on : 02-Dec-2022, 10:58:59 am
    Author     : hilbe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>JSP Declartion Tag Example</h1></center>
    <%!
        int square(int number)
        {
          return number*number;  
        }
        %>
        <%="The square of 3 is "+  square(3)%>
    </body>
</html>
