<%-- 
    Document   : welcome
    Created on : 02-Dec-2022, 11:39:29 am
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
    <center> <h1>Student detail Enter are !!!</h1></center>
    <hr>
    <b>The Name is :</b><%=request.getParameter("stud_name")%></br>
    <b>The E-Mail is:</b><%=request.getParameter("stud_email")%>
    </body>
</html>
