<%-- 
    Document   : anotherpage
    Created on : 02-Dec-2022, 12:33:03 pm
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
        <h1>Hello !!!!!</h1>
        <hr>
    <center>
        <h3>Welcome back to another page !!!!
            <%=(String)session.getAttribute("user")%>
        </h3>
        <a href="index.jsp">Click to go to index page</a>
    </center>
    </body>
</html>
