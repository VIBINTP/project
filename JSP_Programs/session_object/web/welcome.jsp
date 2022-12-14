<%-- 
    Document   : welcome
    Created on : 02-Dec-2022, 12:18:27 pm
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
        <h1>Welcome User !</h1>
        <%
         String name=request.getParameter("stud_name");
         session.setAttribute("user",name);
         %>
         <a href="welcomeback.jsp">Click to go to Next Page</a>
    </body>
</html>
