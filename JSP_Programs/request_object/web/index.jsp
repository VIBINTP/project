<%-- 

    Document   : index
    Created on : 02-Dec-2022, 11:30:52 am
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
    <center><h1>Request Object Example</h1></center>
    <hr>
    <form action="welcome.jsp">
        <table border="1">
            <tr>
                <td colspan="2"><b>Student Detail Page</b></td>  
            </tr>
            <tr>
                <td><b>Name</b></td>
                <td><input type="text" name="stud_name"/></td>
            </tr>
            <tr>
                <td><b>E-Mail</b></td>
                <td>
                    <input type="text" name="stud_email"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="click to display"/>
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>
