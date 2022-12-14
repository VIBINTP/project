<%-- 
    Document   : index
    Created on : 02-Dec-2022, 1:05:13 pm
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
    <center><h1>Java Beans Example</h1></center>
    <jsp:useBean id="namedisplay" class="com.name_display"/>
    <%=namedisplay.display()%>
    </body>
</html>
