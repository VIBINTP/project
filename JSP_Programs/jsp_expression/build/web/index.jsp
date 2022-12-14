<%-- 
    Document   : index
    Created on : 02-Dec-2022, 10:50:25 am
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
    <center> <h1>Example for JSP Expression</h1></center>
    <center>
        <b>
            <%
                String message="Welcome to JSP Programming";
             %>
            <%=message%>
        </b>
    </center>
    </body>
</html>
