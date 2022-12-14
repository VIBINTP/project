<%-- 
    Document   : index
    Created on : 02-Dec-2022, 12:39:11 pm
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
    <center><h1>Page Directive Example </h1></center>
    <%@page import="java.util.Date" %>
    Today is :<%=new Date()%>
    </body>
</html>
