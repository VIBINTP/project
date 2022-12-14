<%-- 
    Document   : index
    Created on : 02-Dec-2022, 10:40:00 am
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
        <h1>Addition of two numbers</h1>
        <%
          int number1=10;
          int number2=20;
          int sum=number1 + number2;
    out.println("<b> The sum of " + number1 + " and "+ number2 + " is " + sum);

            %>
    </body>
</html>
